package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.C0445R;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ItemTouchHelper.class */
public class ItemTouchHelper extends RecyclerView.ItemDecoration implements RecyclerView.OnChildAttachStateChangeListener {

    /* renamed from: A */
    private Rect f4589A;

    /* renamed from: B */
    private long f4590B;

    /* renamed from: a */
    final List<View> f4591a;

    /* renamed from: b */
    private final float[] f4592b;

    /* renamed from: c */
    RecyclerView.ViewHolder f4593c;

    /* renamed from: d */
    float f4594d;

    /* renamed from: e */
    float f4595e;

    /* renamed from: f */
    private float f4596f;

    /* renamed from: g */
    private float f4597g;

    /* renamed from: h */
    float f4598h;

    /* renamed from: i */
    float f4599i;

    /* renamed from: j */
    private float f4600j;

    /* renamed from: k */
    private float f4601k;

    /* renamed from: l */
    int f4602l;
    @NonNull

    /* renamed from: m */
    Callback f4603m;

    /* renamed from: n */
    private int f4604n;

    /* renamed from: o */
    int f4605o;

    /* renamed from: p */
    List<RecoverAnimation> f4606p;

    /* renamed from: q */
    private int f4607q;

    /* renamed from: r */
    RecyclerView f4608r;

    /* renamed from: s */
    final Runnable f4609s;

    /* renamed from: t */
    VelocityTracker f4610t;

    /* renamed from: u */
    private List<RecyclerView.ViewHolder> f4611u;

    /* renamed from: v */
    private List<Integer> f4612v;

    /* renamed from: w */
    private RecyclerView.ChildDrawingOrderCallback f4613w;

    /* renamed from: x */
    View f4614x;

    /* renamed from: y */
    int f4615y;

    /* renamed from: z */
    GestureDetectorCompat f4616z;

    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$1 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ItemTouchHelper$1.class */
    class RunnableC04661 implements Runnable {

        /* renamed from: f */
        final /* synthetic */ ItemTouchHelper f4617f;

        @Override // java.lang.Runnable
        public void run() {
            ItemTouchHelper itemTouchHelper = this.f4617f;
            if (itemTouchHelper.f4593c != null && itemTouchHelper.m17715C()) {
                ItemTouchHelper itemTouchHelper2 = this.f4617f;
                RecyclerView.ViewHolder viewHolder = itemTouchHelper2.f4593c;
                if (viewHolder != null) {
                    itemTouchHelper2.m17699x(viewHolder);
                }
                ItemTouchHelper itemTouchHelper3 = this.f4617f;
                itemTouchHelper3.f4608r.removeCallbacks(itemTouchHelper3.f4609s);
                ViewCompat.m19199f0(this.f4617f.f4608r, this);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$2 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ItemTouchHelper$2.class */
    class C04672 implements RecyclerView.OnItemTouchListener {

        /* renamed from: a */
        final /* synthetic */ ItemTouchHelper f4618a;

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        /* renamed from: a */
        public void mo17301a(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
            this.f4618a.f4616z.m19313a(motionEvent);
            VelocityTracker velocityTracker = this.f4618a.f4610t;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            if (this.f4618a.f4602l != -1) {
                int actionMasked = motionEvent.getActionMasked();
                int findPointerIndex = motionEvent.findPointerIndex(this.f4618a.f4602l);
                if (findPointerIndex >= 0) {
                    this.f4618a.m17709n(actionMasked, motionEvent, findPointerIndex);
                }
                ItemTouchHelper itemTouchHelper = this.f4618a;
                RecyclerView.ViewHolder viewHolder = itemTouchHelper.f4593c;
                if (viewHolder != null) {
                    int i = 0;
                    if (actionMasked != 1) {
                        if (actionMasked != 2) {
                            if (actionMasked == 3) {
                                VelocityTracker velocityTracker2 = itemTouchHelper.f4610t;
                                if (velocityTracker2 != null) {
                                    velocityTracker2.clear();
                                }
                            } else if (actionMasked == 6) {
                                int actionIndex = motionEvent.getActionIndex();
                                if (motionEvent.getPointerId(actionIndex) == this.f4618a.f4602l) {
                                    if (actionIndex == 0) {
                                        i = 1;
                                    }
                                    this.f4618a.f4602l = motionEvent.getPointerId(i);
                                    ItemTouchHelper itemTouchHelper2 = this.f4618a;
                                    itemTouchHelper2.m17712F(motionEvent, itemTouchHelper2.f4605o, actionIndex);
                                    return;
                                }
                                return;
                            } else {
                                return;
                            }
                        } else if (findPointerIndex >= 0) {
                            itemTouchHelper.m17712F(motionEvent, itemTouchHelper.f4605o, findPointerIndex);
                            this.f4618a.m17699x(viewHolder);
                            ItemTouchHelper itemTouchHelper3 = this.f4618a;
                            itemTouchHelper3.f4608r.removeCallbacks(itemTouchHelper3.f4609s);
                            this.f4618a.f4609s.run();
                            this.f4618a.f4608r.invalidate();
                            return;
                        } else {
                            return;
                        }
                    }
                    this.f4618a.m17714D(null, 0);
                    this.f4618a.f4602l = -1;
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        /* renamed from: c */
        public boolean mo17300c(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
            int findPointerIndex;
            RecoverAnimation q;
            this.f4618a.f4616z.m19313a(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            boolean z = true;
            if (actionMasked == 0) {
                this.f4618a.f4602l = motionEvent.getPointerId(0);
                this.f4618a.f4594d = motionEvent.getX();
                this.f4618a.f4595e = motionEvent.getY();
                this.f4618a.m17698y();
                ItemTouchHelper itemTouchHelper = this.f4618a;
                if (itemTouchHelper.f4593c == null && (q = itemTouchHelper.m17706q(motionEvent)) != null) {
                    ItemTouchHelper itemTouchHelper2 = this.f4618a;
                    itemTouchHelper2.f4594d -= q.f4639i;
                    itemTouchHelper2.f4595e -= q.f4640j;
                    itemTouchHelper2.m17707p(q.f4635e, true);
                    if (this.f4618a.f4591a.remove(q.f4635e.itemView)) {
                        ItemTouchHelper itemTouchHelper3 = this.f4618a;
                        itemTouchHelper3.f4603m.m17692c(itemTouchHelper3.f4608r, q.f4635e);
                    }
                    this.f4618a.m17714D(q.f4635e, q.f4636f);
                    ItemTouchHelper itemTouchHelper4 = this.f4618a;
                    itemTouchHelper4.m17712F(motionEvent, itemTouchHelper4.f4605o, 0);
                }
            } else if (actionMasked == 3 || actionMasked == 1) {
                ItemTouchHelper itemTouchHelper5 = this.f4618a;
                itemTouchHelper5.f4602l = -1;
                itemTouchHelper5.m17714D(null, 0);
            } else {
                int i = this.f4618a.f4602l;
                if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) >= 0) {
                    this.f4618a.m17709n(actionMasked, motionEvent, findPointerIndex);
                }
            }
            VelocityTracker velocityTracker = this.f4618a.f4610t;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            if (this.f4618a.f4593c == null) {
                z = false;
            }
            return z;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        /* renamed from: e */
        public void mo17299e(boolean z) {
            if (z) {
                this.f4618a.m17714D(null, 0);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ItemTouchHelper$Callback.class */
    public static abstract class Callback {

        /* renamed from: b */
        private static final Interpolator f4626b = new Interpolator() { // from class: androidx.recyclerview.widget.ItemTouchHelper.Callback.1
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f * f * f * f * f;
            }
        };

        /* renamed from: c */
        private static final Interpolator f4627c = new Interpolator() { // from class: androidx.recyclerview.widget.ItemTouchHelper.Callback.2
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        };

        /* renamed from: a */
        private int f4628a = -1;

        /* renamed from: e */
        public static int m17690e(int i, int i2) {
            int i3;
            int i4 = i & 789516;
            if (i4 == 0) {
                return i;
            }
            int i5 = i & (i4 ^ (-1));
            if (i2 == 0) {
                i3 = i4 << 2;
            } else {
                int i6 = i4 << 1;
                i5 |= (-789517) & i6;
                i3 = (i6 & 789516) << 2;
            }
            return i5 | i3;
        }

        /* renamed from: i */
        private int m17686i(RecyclerView recyclerView) {
            if (this.f4628a == -1) {
                this.f4628a = recyclerView.getResources().getDimensionPixelSize(C0445R.dimen.item_touch_helper_max_drag_scroll_per_frame);
            }
            return this.f4628a;
        }

        /* renamed from: s */
        public static int m17677s(int i, int i2) {
            return i2 << (i * 8);
        }

        /* renamed from: t */
        public static int m17676t(int i, int i2) {
            int s = m17677s(0, i2 | i);
            return m17677s(2, i) | m17677s(1, i2) | s;
        }

        /* renamed from: A */
        public void m17696A(@Nullable RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder != null) {
                ItemTouchUIUtilImpl.f4647a.mo17660b(viewHolder.itemView);
            }
        }

        /* renamed from: B */
        public abstract void m17695B(@NonNull RecyclerView.ViewHolder viewHolder, int i);

        /* renamed from: a */
        public boolean m17694a(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2) {
            return true;
        }

        /* renamed from: b */
        public RecyclerView.ViewHolder m17693b(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull List<RecyclerView.ViewHolder> list, int i, int i2) {
            int width = viewHolder.itemView.getWidth();
            int height = viewHolder.itemView.getHeight();
            int left = i - viewHolder.itemView.getLeft();
            int top = i2 - viewHolder.itemView.getTop();
            int size = list.size();
            RecyclerView.ViewHolder viewHolder2 = null;
            int i3 = -1;
            for (int i4 = 0; i4 < size; i4++) {
                RecyclerView.ViewHolder viewHolder3 = list.get(i4);
                RecyclerView.ViewHolder viewHolder4 = viewHolder2;
                int i5 = i3;
                if (left > 0) {
                    int right = viewHolder3.itemView.getRight() - (i + width);
                    viewHolder4 = viewHolder2;
                    i5 = i3;
                    if (right < 0) {
                        viewHolder4 = viewHolder2;
                        i5 = i3;
                        if (viewHolder3.itemView.getRight() > viewHolder.itemView.getRight()) {
                            int abs = Math.abs(right);
                            viewHolder4 = viewHolder2;
                            i5 = i3;
                            if (abs > i3) {
                                viewHolder4 = viewHolder3;
                                i5 = abs;
                            }
                        }
                    }
                }
                RecyclerView.ViewHolder viewHolder5 = viewHolder4;
                int i6 = i5;
                if (left < 0) {
                    int left2 = viewHolder3.itemView.getLeft() - i;
                    viewHolder5 = viewHolder4;
                    i6 = i5;
                    if (left2 > 0) {
                        viewHolder5 = viewHolder4;
                        i6 = i5;
                        if (viewHolder3.itemView.getLeft() < viewHolder.itemView.getLeft()) {
                            int abs2 = Math.abs(left2);
                            viewHolder5 = viewHolder4;
                            i6 = i5;
                            if (abs2 > i5) {
                                viewHolder5 = viewHolder3;
                                i6 = abs2;
                            }
                        }
                    }
                }
                RecyclerView.ViewHolder viewHolder6 = viewHolder5;
                int i7 = i6;
                if (top < 0) {
                    int top2 = viewHolder3.itemView.getTop() - i2;
                    viewHolder6 = viewHolder5;
                    i7 = i6;
                    if (top2 > 0) {
                        viewHolder6 = viewHolder5;
                        i7 = i6;
                        if (viewHolder3.itemView.getTop() < viewHolder.itemView.getTop()) {
                            int abs3 = Math.abs(top2);
                            viewHolder6 = viewHolder5;
                            i7 = i6;
                            if (abs3 > i6) {
                                viewHolder6 = viewHolder3;
                                i7 = abs3;
                            }
                        }
                    }
                }
                viewHolder2 = viewHolder6;
                i3 = i7;
                if (top > 0) {
                    int bottom = viewHolder3.itemView.getBottom() - (i2 + height);
                    viewHolder2 = viewHolder6;
                    i3 = i7;
                    if (bottom < 0) {
                        viewHolder2 = viewHolder6;
                        i3 = i7;
                        if (viewHolder3.itemView.getBottom() > viewHolder.itemView.getBottom()) {
                            int abs4 = Math.abs(bottom);
                            viewHolder2 = viewHolder6;
                            i3 = i7;
                            if (abs4 > i7) {
                                i3 = abs4;
                                viewHolder2 = viewHolder3;
                            }
                        }
                    }
                }
            }
            return viewHolder2;
        }

        /* renamed from: c */
        public void m17692c(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            ItemTouchUIUtilImpl.f4647a.mo17661a(viewHolder.itemView);
        }

        /* renamed from: d */
        public int m17691d(int i, int i2) {
            int i3;
            int i4;
            int i5 = i & 3158064;
            if (i5 == 0) {
                return i;
            }
            int i6 = i & (i5 ^ (-1));
            if (i2 == 0) {
                i4 = i5 >> 2;
                i3 = i6;
            } else {
                int i7 = i5 >> 1;
                i3 = i6 | ((-3158065) & i7);
                i4 = (i7 & 3158064) >> 2;
            }
            return i3 | i4;
        }

        /* renamed from: f */
        final int m17689f(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return m17691d(mo17662k(recyclerView, viewHolder), ViewCompat.m19244A(recyclerView));
        }

        /* renamed from: g */
        public long m17688g(@NonNull RecyclerView recyclerView, int i, float f, float f2) {
            RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
            if (itemAnimator == null) {
                return i == 8 ? 200L : 250L;
            }
            return i == 8 ? itemAnimator.m17482n() : itemAnimator.m17481o();
        }

        /* renamed from: h */
        public int m17687h() {
            return 0;
        }

        /* renamed from: j */
        public float m17685j(@NonNull RecyclerView.ViewHolder viewHolder) {
            return 0.5f;
        }

        /* renamed from: k */
        public abstract int mo17662k(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder);

        /* renamed from: l */
        public float m17684l(float f) {
            return f;
        }

        /* renamed from: m */
        public float m17683m(@NonNull RecyclerView.ViewHolder viewHolder) {
            return 0.5f;
        }

        /* renamed from: n */
        public float m17682n(float f) {
            return f;
        }

        /* renamed from: o */
        boolean m17681o(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return (m17689f(recyclerView, viewHolder) & 16711680) != 0;
        }

        /* renamed from: p */
        public int m17680p(@NonNull RecyclerView recyclerView, int i, int i2, int i3, long j) {
            float f = 1.0f;
            int signum = (int) (((int) Math.signum(i2)) * m17686i(recyclerView) * f4627c.getInterpolation(Math.min(1.0f, (Math.abs(i2) * 1.0f) / i)));
            if (j <= 2000) {
                f = ((float) j) / 2000.0f;
            }
            int interpolation = (int) (signum * f4626b.getInterpolation(f));
            int i4 = interpolation;
            if (interpolation == 0) {
                i4 = i2 > 0 ? 1 : -1;
            }
            return i4;
        }

        /* renamed from: q */
        public boolean m17679q() {
            return true;
        }

        /* renamed from: r */
        public boolean m17678r() {
            return true;
        }

        /* renamed from: u */
        public void m17675u(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            ItemTouchUIUtilImpl.f4647a.mo17658d(canvas, recyclerView, viewHolder.itemView, f, f2, i, z);
        }

        /* renamed from: v */
        public void m17674v(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            ItemTouchUIUtilImpl.f4647a.mo17659c(canvas, recyclerView, viewHolder.itemView, f, f2, i, z);
        }

        /* renamed from: w */
        void m17673w(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, List<RecoverAnimation> list, int i, float f, float f2) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                RecoverAnimation recoverAnimation = list.get(i2);
                recoverAnimation.m17665e();
                int save = canvas.save();
                m17675u(canvas, recyclerView, recoverAnimation.f4635e, recoverAnimation.f4639i, recoverAnimation.f4640j, recoverAnimation.f4636f, false);
                canvas.restoreToCount(save);
            }
            if (viewHolder != null) {
                int save2 = canvas.save();
                m17675u(canvas, recyclerView, viewHolder, f, f2, i, true);
                canvas.restoreToCount(save2);
            }
        }

        /* renamed from: x */
        void m17672x(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, List<RecoverAnimation> list, int i, float f, float f2) {
            int size = list.size();
            boolean z = false;
            for (int i2 = 0; i2 < size; i2++) {
                RecoverAnimation recoverAnimation = list.get(i2);
                int save = canvas.save();
                m17674v(canvas, recyclerView, recoverAnimation.f4635e, recoverAnimation.f4639i, recoverAnimation.f4640j, recoverAnimation.f4636f, false);
                canvas.restoreToCount(save);
            }
            if (viewHolder != null) {
                int save2 = canvas.save();
                m17674v(canvas, recyclerView, viewHolder, f, f2, i, true);
                canvas.restoreToCount(save2);
            }
            for (int i3 = size - 1; i3 >= 0; i3--) {
                RecoverAnimation recoverAnimation2 = list.get(i3);
                if (recoverAnimation2.f4642l && !recoverAnimation2.f4638h) {
                    list.remove(i3);
                } else if (!recoverAnimation2.f4642l) {
                    z = true;
                }
            }
            if (z) {
                recyclerView.invalidate();
            }
        }

        /* renamed from: y */
        public abstract boolean m17671y(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2);

        /* renamed from: z */
        public void m17670z(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull RecyclerView.ViewHolder viewHolder2, int i2, int i3, int i4) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof ViewDropHandler) {
                ((ViewDropHandler) layoutManager).mo17625b(viewHolder.itemView, viewHolder2.itemView, i3, i4);
                return;
            }
            if (layoutManager.mo17145l()) {
                if (layoutManager.m17430R(viewHolder2.itemView) <= recyclerView.getPaddingLeft()) {
                    recyclerView.scrollToPosition(i2);
                }
                if (layoutManager.m17426U(viewHolder2.itemView) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                    recyclerView.scrollToPosition(i2);
                }
            }
            if (layoutManager.mo17142m()) {
                if (layoutManager.m17425V(viewHolder2.itemView) <= recyclerView.getPaddingTop()) {
                    recyclerView.scrollToPosition(i2);
                }
                if (layoutManager.m17433P(viewHolder2.itemView) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                    recyclerView.scrollToPosition(i2);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener.class */
    private class ItemTouchHelperGestureListener extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: f */
        private boolean f4629f;

        /* renamed from: g */
        final /* synthetic */ ItemTouchHelper f4630g;

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            View r;
            RecyclerView.ViewHolder childViewHolder;
            if (this.f4629f && (r = this.f4630g.m17705r(motionEvent)) != null && (childViewHolder = this.f4630g.f4608r.getChildViewHolder(r)) != null) {
                ItemTouchHelper itemTouchHelper = this.f4630g;
                if (itemTouchHelper.f4603m.m17681o(itemTouchHelper.f4608r, childViewHolder)) {
                    int pointerId = motionEvent.getPointerId(0);
                    int i = this.f4630g.f4602l;
                    if (pointerId == i) {
                        int findPointerIndex = motionEvent.findPointerIndex(i);
                        float x = motionEvent.getX(findPointerIndex);
                        float y = motionEvent.getY(findPointerIndex);
                        ItemTouchHelper itemTouchHelper2 = this.f4630g;
                        itemTouchHelper2.f4594d = x;
                        itemTouchHelper2.f4595e = y;
                        itemTouchHelper2.f4599i = 0.0f;
                        itemTouchHelper2.f4598h = 0.0f;
                        if (itemTouchHelper2.f4603m.m17678r()) {
                            this.f4630g.m17714D(childViewHolder, 2);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation.class */
    public static class RecoverAnimation implements Animator.AnimatorListener {

        /* renamed from: a */
        final float f4631a;

        /* renamed from: b */
        final float f4632b;

        /* renamed from: c */
        final float f4633c;

        /* renamed from: d */
        final float f4634d;

        /* renamed from: e */
        final RecyclerView.ViewHolder f4635e;

        /* renamed from: f */
        final int f4636f;

        /* renamed from: g */
        private final ValueAnimator f4637g;

        /* renamed from: h */
        boolean f4638h;

        /* renamed from: i */
        float f4639i;

        /* renamed from: j */
        float f4640j;

        /* renamed from: k */
        boolean f4641k = false;

        /* renamed from: l */
        boolean f4642l = false;

        /* renamed from: m */
        private float f4643m;

        RecoverAnimation(RecyclerView.ViewHolder viewHolder, int i, int i2, float f, float f2, float f3, float f4) {
            this.f4636f = i2;
            this.f4635e = viewHolder;
            this.f4631a = f;
            this.f4632b = f2;
            this.f4633c = f3;
            this.f4634d = f4;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.f4637g = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ItemTouchHelper.RecoverAnimation.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    RecoverAnimation.this.m17667c(valueAnimator.getAnimatedFraction());
                }
            });
            this.f4637g.setTarget(viewHolder.itemView);
            this.f4637g.addListener(this);
            m17667c(0.0f);
        }

        /* renamed from: a */
        public void m17669a() {
            this.f4637g.cancel();
        }

        /* renamed from: b */
        public void m17668b(long j) {
            this.f4637g.setDuration(j);
        }

        /* renamed from: c */
        public void m17667c(float f) {
            this.f4643m = f;
        }

        /* renamed from: d */
        public void m17666d() {
            this.f4635e.setIsRecyclable(false);
            this.f4637g.start();
        }

        /* renamed from: e */
        public void m17665e() {
            float f = this.f4631a;
            float f2 = this.f4633c;
            if (f == f2) {
                this.f4639i = this.f4635e.itemView.getTranslationX();
            } else {
                this.f4639i = f + (this.f4643m * (f2 - f));
            }
            float f3 = this.f4632b;
            float f4 = this.f4634d;
            if (f3 == f4) {
                this.f4640j = this.f4635e.itemView.getTranslationY();
            } else {
                this.f4640j = f3 + (this.f4643m * (f4 - f3));
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            m17667c(1.0f);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f4642l) {
                this.f4635e.setIsRecyclable(true);
            }
            this.f4642l = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ItemTouchHelper$SimpleCallback.class */
    public static abstract class SimpleCallback extends Callback {

        /* renamed from: d */
        private int f4645d;

        /* renamed from: e */
        private int f4646e;

        /* renamed from: C */
        public int m17664C(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return this.f4646e;
        }

        /* renamed from: D */
        public int m17663D(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return this.f4645d;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        /* renamed from: k */
        public int mo17662k(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return Callback.m17676t(m17664C(recyclerView, viewHolder), m17663D(recyclerView, viewHolder));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler.class */
    public interface ViewDropHandler {
        /* renamed from: b */
        void mo17625b(@NonNull View view, @NonNull View view2, int i, int i2);
    }

    /* renamed from: A */
    private void m17717A() {
        VelocityTracker velocityTracker = this.f4610t;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f4610t = null;
        }
    }

    /* renamed from: E */
    private int m17713E(RecyclerView.ViewHolder viewHolder) {
        if (this.f4604n == 2) {
            return 0;
        }
        int k = this.f4603m.mo17662k(this.f4608r, viewHolder);
        int d = (this.f4603m.m17691d(k, ViewCompat.m19244A(this.f4608r)) & 65280) >> 8;
        if (d == 0) {
            return 0;
        }
        int i = (k & 65280) >> 8;
        if (Math.abs(this.f4598h) > Math.abs(this.f4599i)) {
            int m = m17710m(viewHolder, d);
            if (m > 0) {
                return (i & m) == 0 ? Callback.m17690e(m, ViewCompat.m19244A(this.f4608r)) : m;
            }
            int o = m17708o(viewHolder, d);
            if (o > 0) {
                return o;
            }
            return 0;
        }
        int o2 = m17708o(viewHolder, d);
        if (o2 > 0) {
            return o2;
        }
        int m2 = m17710m(viewHolder, d);
        if (m2 <= 0) {
            return 0;
        }
        int i2 = m2;
        if ((i & m2) == 0) {
            i2 = Callback.m17690e(m2, ViewCompat.m19244A(this.f4608r));
        }
        return i2;
    }

    /* renamed from: l */
    private void m17711l() {
        if (Build.VERSION.SDK_INT < 21) {
            if (this.f4613w == null) {
                this.f4613w = new RecyclerView.ChildDrawingOrderCallback() { // from class: androidx.recyclerview.widget.ItemTouchHelper.5
                    @Override // androidx.recyclerview.widget.RecyclerView.ChildDrawingOrderCallback
                    /* renamed from: a */
                    public int mo17492a(int i, int i2) {
                        ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
                        View view = itemTouchHelper.f4614x;
                        if (view == null) {
                            return i2;
                        }
                        int i3 = itemTouchHelper.f4615y;
                        int i4 = i3;
                        if (i3 == -1) {
                            i4 = itemTouchHelper.f4608r.indexOfChild(view);
                            ItemTouchHelper.this.f4615y = i4;
                        }
                        if (i2 == i - 1) {
                            return i4;
                        }
                        if (i2 >= i4) {
                            i2++;
                        }
                        return i2;
                    }
                };
            }
            this.f4608r.setChildDrawingOrderCallback(this.f4613w);
        }
    }

    /* renamed from: m */
    private int m17710m(RecyclerView.ViewHolder viewHolder, int i) {
        if ((i & 12) == 0) {
            return 0;
        }
        int i2 = 8;
        int i3 = this.f4598h > 0.0f ? 8 : 4;
        VelocityTracker velocityTracker = this.f4610t;
        if (velocityTracker != null && this.f4602l > -1) {
            velocityTracker.computeCurrentVelocity(1000, this.f4603m.m17682n(this.f4597g));
            float xVelocity = this.f4610t.getXVelocity(this.f4602l);
            float yVelocity = this.f4610t.getYVelocity(this.f4602l);
            if (xVelocity <= 0.0f) {
                i2 = 4;
            }
            float abs = Math.abs(xVelocity);
            if ((i2 & i) != 0 && i3 == i2 && abs >= this.f4603m.m17684l(this.f4596f) && abs > Math.abs(yVelocity)) {
                return i2;
            }
        }
        float width = this.f4608r.getWidth();
        float m = this.f4603m.m17683m(viewHolder);
        if ((i & i3) == 0 || Math.abs(this.f4598h) <= width * m) {
            return 0;
        }
        return i3;
    }

    /* renamed from: o */
    private int m17708o(RecyclerView.ViewHolder viewHolder, int i) {
        if ((i & 3) == 0) {
            return 0;
        }
        int i2 = 2;
        int i3 = this.f4599i > 0.0f ? 2 : 1;
        VelocityTracker velocityTracker = this.f4610t;
        if (velocityTracker != null && this.f4602l > -1) {
            velocityTracker.computeCurrentVelocity(1000, this.f4603m.m17682n(this.f4597g));
            float xVelocity = this.f4610t.getXVelocity(this.f4602l);
            float yVelocity = this.f4610t.getYVelocity(this.f4602l);
            if (yVelocity <= 0.0f) {
                i2 = 1;
            }
            float abs = Math.abs(yVelocity);
            if ((i2 & i) != 0 && i2 == i3 && abs >= this.f4603m.m17684l(this.f4596f) && abs > Math.abs(xVelocity)) {
                return i2;
            }
        }
        float height = this.f4608r.getHeight();
        float m = this.f4603m.m17683m(viewHolder);
        if ((i & i3) == 0 || Math.abs(this.f4599i) <= height * m) {
            return 0;
        }
        return i3;
    }

    /* renamed from: s */
    private List<RecyclerView.ViewHolder> m17704s(RecyclerView.ViewHolder viewHolder) {
        List<RecyclerView.ViewHolder> list = this.f4611u;
        if (list == null) {
            this.f4611u = new ArrayList();
            this.f4612v = new ArrayList();
        } else {
            list.clear();
            this.f4612v.clear();
        }
        int h = this.f4603m.m17687h();
        int round = Math.round(this.f4600j + this.f4598h) - h;
        int round2 = Math.round(this.f4601k + this.f4599i) - h;
        int i = h * 2;
        int width = viewHolder.itemView.getWidth() + round + i;
        int height = viewHolder.itemView.getHeight() + round2 + i;
        int i2 = (round + width) / 2;
        int i3 = (round2 + height) / 2;
        RecyclerView.LayoutManager layoutManager = this.f4608r.getLayoutManager();
        int K = layoutManager.m17441K();
        for (int i4 = 0; i4 < K; i4++) {
            View J = layoutManager.m17442J(i4);
            if (J != viewHolder.itemView && J.getBottom() >= round2 && J.getTop() <= height && J.getRight() >= round && J.getLeft() <= width) {
                RecyclerView.ViewHolder childViewHolder = this.f4608r.getChildViewHolder(J);
                if (this.f4603m.m17694a(this.f4608r, this.f4593c, childViewHolder)) {
                    int abs = Math.abs(i2 - ((J.getLeft() + J.getRight()) / 2));
                    int abs2 = Math.abs(i3 - ((J.getTop() + J.getBottom()) / 2));
                    int i5 = (abs * abs) + (abs2 * abs2);
                    int size = this.f4611u.size();
                    int i6 = 0;
                    for (int i7 = 0; i7 < size && i5 > this.f4612v.get(i7).intValue(); i7++) {
                        i6++;
                    }
                    this.f4611u.add(i6, childViewHolder);
                    this.f4612v.add(i6, Integer.valueOf(i5));
                }
            }
        }
        return this.f4611u;
    }

    /* renamed from: t */
    private RecyclerView.ViewHolder m17703t(MotionEvent motionEvent) {
        View r;
        RecyclerView.LayoutManager layoutManager = this.f4608r.getLayoutManager();
        int i = this.f4602l;
        if (i == -1) {
            return null;
        }
        int findPointerIndex = motionEvent.findPointerIndex(i);
        float x = motionEvent.getX(findPointerIndex);
        float f = this.f4594d;
        float y = motionEvent.getY(findPointerIndex);
        float f2 = this.f4595e;
        float abs = Math.abs(x - f);
        float abs2 = Math.abs(y - f2);
        int i2 = this.f4607q;
        if (abs < i2 && abs2 < i2) {
            return null;
        }
        if (abs > abs2 && layoutManager.mo17145l()) {
            return null;
        }
        if ((abs2 <= abs || !layoutManager.mo17142m()) && (r = m17705r(motionEvent)) != null) {
            return this.f4608r.getChildViewHolder(r);
        }
        return null;
    }

    /* renamed from: u */
    private void m17702u(float[] fArr) {
        if ((this.f4605o & 12) != 0) {
            fArr[0] = (this.f4600j + this.f4598h) - this.f4593c.itemView.getLeft();
        } else {
            fArr[0] = this.f4593c.itemView.getTranslationX();
        }
        if ((this.f4605o & 3) != 0) {
            fArr[1] = (this.f4601k + this.f4599i) - this.f4593c.itemView.getTop();
        } else {
            fArr[1] = this.f4593c.itemView.getTranslationY();
        }
    }

    /* renamed from: w */
    private static boolean m17700w(View view, float f, float f2, float f3, float f4) {
        return f >= f3 && f <= f3 + ((float) view.getWidth()) && f2 >= f4 && f2 <= f4 + ((float) view.getHeight());
    }

    /* renamed from: B */
    void m17716B(View view) {
        if (view == this.f4614x) {
            this.f4614x = null;
            if (this.f4613w != null) {
                this.f4608r.setChildDrawingOrderCallback(null);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00c0, code lost:
        if (r15 > 0) goto L_0x00c9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0134, code lost:
        if (r14 > 0) goto L_0x013d;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01b1  */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean m17715C() {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.m17715C():boolean");
    }

    /* renamed from: D */
    void m17714D(@Nullable RecyclerView.ViewHolder viewHolder, int i) {
        boolean z;
        float f;
        float f2;
        if (viewHolder != this.f4593c || i != this.f4604n) {
            this.f4590B = Long.MIN_VALUE;
            int i2 = this.f4604n;
            m17707p(viewHolder, true);
            this.f4604n = i;
            if (i == 2) {
                if (viewHolder != null) {
                    this.f4614x = viewHolder.itemView;
                    m17711l();
                } else {
                    throw new IllegalArgumentException("Must pass a ViewHolder when dragging");
                }
            }
            final RecyclerView.ViewHolder viewHolder2 = this.f4593c;
            if (viewHolder2 != null) {
                if (viewHolder2.itemView.getParent() != null) {
                    final int E = i2 == 2 ? 0 : m17713E(viewHolder2);
                    m17717A();
                    if (E == 1 || E == 2) {
                        f2 = Math.signum(this.f4599i) * this.f4608r.getHeight();
                        f = 0.0f;
                    } else {
                        f = (E == 4 || E == 8 || E == 16 || E == 32) ? Math.signum(this.f4598h) * this.f4608r.getWidth() : 0.0f;
                        f2 = 0.0f;
                    }
                    int i3 = i2 == 2 ? 8 : E > 0 ? 2 : 4;
                    m17702u(this.f4592b);
                    float[] fArr = this.f4592b;
                    float f3 = fArr[0];
                    float f4 = fArr[1];
                    RecoverAnimation recoverAnimation = new RecoverAnimation(viewHolder2, i3, i2, f3, f4, f, f2) { // from class: androidx.recyclerview.widget.ItemTouchHelper.3
                        @Override // androidx.recyclerview.widget.ItemTouchHelper.RecoverAnimation, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            if (!this.f4641k) {
                                if (E <= 0) {
                                    ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
                                    itemTouchHelper.f4603m.m17692c(itemTouchHelper.f4608r, viewHolder2);
                                } else {
                                    ItemTouchHelper.this.f4591a.add(viewHolder2.itemView);
                                    this.f4638h = true;
                                    int i4 = E;
                                    if (i4 > 0) {
                                        ItemTouchHelper.this.m17697z(this, i4);
                                    }
                                }
                                ItemTouchHelper itemTouchHelper2 = ItemTouchHelper.this;
                                View view = itemTouchHelper2.f4614x;
                                View view2 = viewHolder2.itemView;
                                if (view == view2) {
                                    itemTouchHelper2.m17716B(view2);
                                }
                            }
                        }
                    };
                    recoverAnimation.m17668b(this.f4603m.m17688g(this.f4608r, i3, f - f3, f2 - f4));
                    this.f4606p.add(recoverAnimation);
                    recoverAnimation.m17666d();
                    z = true;
                } else {
                    m17716B(viewHolder2.itemView);
                    this.f4603m.m17692c(this.f4608r, viewHolder2);
                    z = false;
                }
                this.f4593c = null;
            } else {
                z = false;
            }
            if (viewHolder != null) {
                this.f4605o = (this.f4603m.m17689f(this.f4608r, viewHolder) & ((1 << ((i * 8) + 8)) - 1)) >> (this.f4604n * 8);
                this.f4600j = viewHolder.itemView.getLeft();
                this.f4601k = viewHolder.itemView.getTop();
                this.f4593c = viewHolder;
                if (i == 2) {
                    viewHolder.itemView.performHapticFeedback(0);
                }
            }
            ViewParent parent = this.f4608r.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(this.f4593c != null);
            }
            if (!z) {
                this.f4608r.getLayoutManager().m17373v1();
            }
            this.f4603m.m17696A(this.f4593c, this.f4604n);
            this.f4608r.invalidate();
        }
    }

    /* renamed from: F */
    void m17712F(MotionEvent motionEvent, int i, int i2) {
        float x = motionEvent.getX(i2);
        float y = motionEvent.getY(i2);
        float f = x - this.f4594d;
        this.f4598h = f;
        this.f4599i = y - this.f4595e;
        if ((i & 4) == 0) {
            this.f4598h = Math.max(0.0f, f);
        }
        if ((i & 8) == 0) {
            this.f4598h = Math.min(0.0f, this.f4598h);
        }
        if ((i & 1) == 0) {
            this.f4599i = Math.max(0.0f, this.f4599i);
        }
        if ((i & 2) == 0) {
            this.f4599i = Math.min(0.0f, this.f4599i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    /* renamed from: b */
    public void mo16410b(@NonNull View view) {
        m17716B(view);
        RecyclerView.ViewHolder childViewHolder = this.f4608r.getChildViewHolder(view);
        if (childViewHolder != null) {
            RecyclerView.ViewHolder viewHolder = this.f4593c;
            if (viewHolder == null || childViewHolder != viewHolder) {
                m17707p(childViewHolder, false);
                if (this.f4591a.remove(childViewHolder.itemView)) {
                    this.f4603m.m17692c(this.f4608r, childViewHolder);
                    return;
                }
                return;
            }
            m17714D(null, 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    /* renamed from: d */
    public void mo16409d(@NonNull View view) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    /* renamed from: g */
    public void mo17467g(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.setEmpty();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    /* renamed from: i */
    public void mo9946i(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        float f;
        float f2;
        this.f4615y = -1;
        if (this.f4593c != null) {
            m17702u(this.f4592b);
            float[] fArr = this.f4592b;
            f2 = fArr[0];
            f = fArr[1];
        } else {
            f2 = 0.0f;
            f = 0.0f;
        }
        this.f4603m.m17673w(canvas, recyclerView, this.f4593c, this.f4606p, this.f4604n, f2, f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    /* renamed from: k */
    public void mo17464k(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        float f;
        float f2;
        if (this.f4593c != null) {
            m17702u(this.f4592b);
            float[] fArr = this.f4592b;
            f2 = fArr[0];
            f = fArr[1];
        } else {
            f2 = 0.0f;
            f = 0.0f;
        }
        this.f4603m.m17672x(canvas, recyclerView, this.f4593c, this.f4606p, this.f4604n, f2, f);
    }

    /* renamed from: n */
    void m17709n(int i, MotionEvent motionEvent, int i2) {
        RecyclerView.ViewHolder t;
        int f;
        if (this.f4593c == null && i == 2 && this.f4604n != 2 && this.f4603m.m17679q() && this.f4608r.getScrollState() != 1 && (t = m17703t(motionEvent)) != null && (f = (this.f4603m.m17689f(this.f4608r, t) & 65280) >> 8) != 0) {
            float x = motionEvent.getX(i2);
            float y = motionEvent.getY(i2);
            float f2 = x - this.f4594d;
            float f3 = y - this.f4595e;
            float abs = Math.abs(f2);
            float abs2 = Math.abs(f3);
            int i3 = this.f4607q;
            if (abs >= i3 || abs2 >= i3) {
                if (abs > abs2) {
                    if (f2 < 0.0f && (f & 4) == 0) {
                        return;
                    }
                    if (f2 > 0.0f && (f & 8) == 0) {
                        return;
                    }
                } else if (f3 < 0.0f && (f & 1) == 0) {
                    return;
                } else {
                    if (f3 > 0.0f && (f & 2) == 0) {
                        return;
                    }
                }
                this.f4599i = 0.0f;
                this.f4598h = 0.0f;
                this.f4602l = motionEvent.getPointerId(0);
                m17714D(t, 1);
            }
        }
    }

    /* renamed from: p */
    void m17707p(RecyclerView.ViewHolder viewHolder, boolean z) {
        for (int size = this.f4606p.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = this.f4606p.get(size);
            if (recoverAnimation.f4635e == viewHolder) {
                recoverAnimation.f4641k |= z;
                if (!recoverAnimation.f4642l) {
                    recoverAnimation.m17669a();
                }
                this.f4606p.remove(size);
                return;
            }
        }
    }

    /* renamed from: q */
    RecoverAnimation m17706q(MotionEvent motionEvent) {
        if (this.f4606p.isEmpty()) {
            return null;
        }
        View r = m17705r(motionEvent);
        for (int size = this.f4606p.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = this.f4606p.get(size);
            if (recoverAnimation.f4635e.itemView == r) {
                return recoverAnimation;
            }
        }
        return null;
    }

    /* renamed from: r */
    View m17705r(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        RecyclerView.ViewHolder viewHolder = this.f4593c;
        if (viewHolder != null) {
            View view = viewHolder.itemView;
            if (m17700w(view, x, y, this.f4600j + this.f4598h, this.f4601k + this.f4599i)) {
                return view;
            }
        }
        for (int size = this.f4606p.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = this.f4606p.get(size);
            View view2 = recoverAnimation.f4635e.itemView;
            if (m17700w(view2, x, y, recoverAnimation.f4639i, recoverAnimation.f4640j)) {
                return view2;
            }
        }
        return this.f4608r.findChildViewUnder(x, y);
    }

    /* renamed from: v */
    boolean m17701v() {
        int size = this.f4606p.size();
        for (int i = 0; i < size; i++) {
            if (!this.f4606p.get(i).f4642l) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: x */
    void m17699x(RecyclerView.ViewHolder viewHolder) {
        if (!this.f4608r.isLayoutRequested() && this.f4604n == 2) {
            float j = this.f4603m.m17685j(viewHolder);
            int i = (int) (this.f4600j + this.f4598h);
            int i2 = (int) (this.f4601k + this.f4599i);
            if (Math.abs(i2 - viewHolder.itemView.getTop()) >= viewHolder.itemView.getHeight() * j || Math.abs(i - viewHolder.itemView.getLeft()) >= viewHolder.itemView.getWidth() * j) {
                List<RecyclerView.ViewHolder> s = m17704s(viewHolder);
                if (s.size() != 0) {
                    RecyclerView.ViewHolder b = this.f4603m.m17693b(viewHolder, s, i, i2);
                    if (b == null) {
                        this.f4611u.clear();
                        this.f4612v.clear();
                        return;
                    }
                    int adapterPosition = b.getAdapterPosition();
                    int adapterPosition2 = viewHolder.getAdapterPosition();
                    if (this.f4603m.m17671y(this.f4608r, viewHolder, b)) {
                        this.f4603m.m17670z(this.f4608r, viewHolder, adapterPosition2, b, adapterPosition, i, i2);
                    }
                }
            }
        }
    }

    /* renamed from: y */
    void m17698y() {
        VelocityTracker velocityTracker = this.f4610t;
        if (velocityTracker != null) {
            velocityTracker.recycle();
        }
        this.f4610t = VelocityTracker.obtain();
    }

    /* renamed from: z */
    void m17697z(final RecoverAnimation recoverAnimation, final int i) {
        this.f4608r.post(new Runnable() { // from class: androidx.recyclerview.widget.ItemTouchHelper.4
            @Override // java.lang.Runnable
            public void run() {
                RecyclerView recyclerView = ItemTouchHelper.this.f4608r;
                if (recyclerView != null && recyclerView.isAttachedToWindow()) {
                    RecoverAnimation recoverAnimation2 = recoverAnimation;
                    if (!recoverAnimation2.f4641k && recoverAnimation2.f4635e.getAdapterPosition() != -1) {
                        RecyclerView.ItemAnimator itemAnimator = ItemTouchHelper.this.f4608r.getItemAnimator();
                        if ((itemAnimator == null || !itemAnimator.m17479q(null)) && !ItemTouchHelper.this.m17701v()) {
                            ItemTouchHelper.this.f4603m.m17695B(recoverAnimation.f4635e, i);
                        } else {
                            ItemTouchHelper.this.f4608r.post(this);
                        }
                    }
                }
            }
        });
    }
}
