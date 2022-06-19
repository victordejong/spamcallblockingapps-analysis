package androidx.transition;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:androidx/transition/GhostViewPort.class */
public class GhostViewPort extends ViewGroup implements GhostView {
    private Matrix mMatrix;
    private final ViewTreeObserver.OnPreDrawListener mOnPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: androidx.transition.GhostViewPort.1
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ViewCompat.postInvalidateOnAnimation(GhostViewPort.this);
            if (GhostViewPort.this.mStartParent == null || GhostViewPort.this.mStartView == null) {
                return true;
            }
            GhostViewPort.this.mStartParent.endViewTransition(GhostViewPort.this.mStartView);
            ViewCompat.postInvalidateOnAnimation(GhostViewPort.this.mStartParent);
            GhostViewPort.this.mStartParent = null;
            GhostViewPort.this.mStartView = null;
            return true;
        }
    };
    int mReferences;
    ViewGroup mStartParent;
    View mStartView;
    final View mView;

    GhostViewPort(View view) {
        super(view.getContext());
        this.mView = view;
        setWillNotDraw(false);
        setLayerType(2, null);
    }

    public static GhostViewPort addGhost(View view, ViewGroup viewGroup, Matrix matrix) {
        GhostViewPort ghostViewPort;
        GhostViewHolder ghostViewHolder;
        if (view.getParent() instanceof ViewGroup) {
            GhostViewHolder holder = GhostViewHolder.getHolder(viewGroup);
            GhostViewPort ghostView = getGhostView(view);
            GhostViewPort ghostViewPort2 = ghostView;
            int i = 0;
            if (ghostView != null) {
                GhostViewHolder ghostViewHolder2 = (GhostViewHolder) ghostView.getParent();
                ghostViewPort2 = ghostView;
                i = 0;
                if (ghostViewHolder2 != holder) {
                    i = ghostView.mReferences;
                    ghostViewHolder2.removeView(ghostView);
                    ghostViewPort2 = null;
                }
            }
            if (ghostViewPort2 == null) {
                Matrix matrix2 = matrix;
                if (matrix == null) {
                    matrix2 = new Matrix();
                    calculateMatrix(view, viewGroup, matrix2);
                }
                GhostViewPort ghostViewPort3 = new GhostViewPort(view);
                ghostViewPort3.setMatrix(matrix2);
                if (holder == null) {
                    ghostViewHolder = new GhostViewHolder(viewGroup);
                } else {
                    holder.popToOverlayTop();
                    ghostViewHolder = holder;
                }
                copySize(viewGroup, ghostViewHolder);
                copySize(viewGroup, ghostViewPort3);
                ghostViewHolder.addGhostView(ghostViewPort3);
                ghostViewPort3.mReferences = i;
                ghostViewPort = ghostViewPort3;
            } else {
                ghostViewPort = ghostViewPort2;
                if (matrix != null) {
                    ghostViewPort2.setMatrix(matrix);
                    ghostViewPort = ghostViewPort2;
                }
            }
            ghostViewPort.mReferences++;
            return ghostViewPort;
        }
        throw new IllegalArgumentException("Ghosted views must be parented by a ViewGroup");
    }

    static void calculateMatrix(View view, ViewGroup viewGroup, Matrix matrix) {
        ViewGroup viewGroup2 = (ViewGroup) view.getParent();
        matrix.reset();
        ViewUtils.transformMatrixToGlobal(viewGroup2, matrix);
        matrix.preTranslate(-viewGroup2.getScrollX(), -viewGroup2.getScrollY());
        ViewUtils.transformMatrixToLocal(viewGroup, matrix);
    }

    static void copySize(View view, View view2) {
        ViewUtils.setLeftTopRightBottom(view2, view2.getLeft(), view2.getTop(), view2.getLeft() + view.getWidth(), view2.getTop() + view.getHeight());
    }

    static GhostViewPort getGhostView(View view) {
        return (GhostViewPort) view.getTag(C0590R.C0593id.ghost_view);
    }

    public static void removeGhost(View view) {
        GhostViewPort ghostView = getGhostView(view);
        if (ghostView != null) {
            int i = ghostView.mReferences - 1;
            ghostView.mReferences = i;
            if (i > 0) {
                return;
            }
            ((GhostViewHolder) ghostView.getParent()).removeView(ghostView);
        }
    }

    static void setGhostView(View view, GhostViewPort ghostViewPort) {
        view.setTag(C0590R.C0593id.ghost_view, ghostViewPort);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setGhostView(this.mView, this);
        this.mView.getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        ViewUtils.setTransitionVisibility(this.mView, 4);
        if (this.mView.getParent() != null) {
            ((View) this.mView.getParent()).invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.mView.getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        ViewUtils.setTransitionVisibility(this.mView, 0);
        setGhostView(this.mView, null);
        if (this.mView.getParent() != null) {
            ((View) this.mView.getParent()).invalidate();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        CanvasUtils.enableZ(canvas, true);
        canvas.setMatrix(this.mMatrix);
        ViewUtils.setTransitionVisibility(this.mView, 0);
        this.mView.invalidate();
        ViewUtils.setTransitionVisibility(this.mView, 4);
        drawChild(canvas, this.mView, getDrawingTime());
        CanvasUtils.enableZ(canvas, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // androidx.transition.GhostView
    public void reserveEndViewTransition(ViewGroup viewGroup, View view) {
        this.mStartParent = viewGroup;
        this.mStartView = view;
    }

    void setMatrix(Matrix matrix) {
        this.mMatrix = matrix;
    }

    @Override // android.view.View, androidx.transition.GhostView
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (getGhostView(this.mView) == this) {
            ViewUtils.setTransitionVisibility(this.mView, i == 0 ? 4 : 0);
        }
    }
}
