package com.daimajia.swipe;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import androidx.core.p026h.C0576c;
import androidx.core.p026h.C0595u;
import androidx.p029d.p031b.C0644c;
import com.daimajia.swipe.C1798a;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/daimajia/swipe/SwipeLayout.class */
public class SwipeLayout extends FrameLayout {

    /* renamed from: c */
    private static final EnumC1790b f5417c = EnumC1790b.Right;

    /* renamed from: a */
    View.OnClickListener f5418a;

    /* renamed from: b */
    View.OnLongClickListener f5419b;

    /* renamed from: d */
    private int f5420d;

    /* renamed from: e */
    private EnumC1790b f5421e;

    /* renamed from: f */
    private C0644c f5422f;

    /* renamed from: g */
    private int f5423g;

    /* renamed from: h */
    private LinkedHashMap<EnumC1790b, View> f5424h;

    /* renamed from: i */
    private EnumC1793e f5425i;

    /* renamed from: j */
    private float[] f5426j;

    /* renamed from: k */
    private List<AbstractC1797i> f5427k;

    /* renamed from: l */
    private List<AbstractC1795g> f5428l;

    /* renamed from: m */
    private Map<View, ArrayList<AbstractC1792d>> f5429m;

    /* renamed from: n */
    private Map<View, Boolean> f5430n;

    /* renamed from: o */
    private AbstractC1789a f5431o;

    /* renamed from: p */
    private boolean f5432p;

    /* renamed from: q */
    private boolean[] f5433q;

    /* renamed from: r */
    private boolean f5434r;

    /* renamed from: s */
    private C0644c.AbstractC0647a f5435s;

    /* renamed from: t */
    private int f5436t;

    /* renamed from: u */
    private List<AbstractC1791c> f5437u;

    /* renamed from: v */
    private boolean f5438v;

    /* renamed from: w */
    private float f5439w;

    /* renamed from: x */
    private float f5440x;

    /* renamed from: y */
    private Rect f5441y;

    /* renamed from: z */
    private GestureDetector f5442z;

    /* renamed from: com.daimajia.swipe.SwipeLayout$4 */
    /* loaded from: classes-dex2jar.jar:com/daimajia/swipe/SwipeLayout$4.class */
    public static /* synthetic */ class C17884 {

        /* renamed from: a */
        static final /* synthetic */ int[] f5447a = new int[EnumC1790b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:19:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:17:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0042 -> B:15:0x0014). Please submit an issue!!! */
        static {
            try {
                f5447a[EnumC1790b.Top.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5447a[EnumC1790b.Bottom.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5447a[EnumC1790b.Left.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5447a[EnumC1790b.Right.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.daimajia.swipe.SwipeLayout$a */
    /* loaded from: classes-dex2jar.jar:com/daimajia/swipe/SwipeLayout$a.class */
    public interface AbstractC1789a {
        /* renamed from: a */
        void m16276a(SwipeLayout swipeLayout, boolean z);
    }

    /* renamed from: com.daimajia.swipe.SwipeLayout$b */
    /* loaded from: classes-dex2jar.jar:com/daimajia/swipe/SwipeLayout$b.class */
    public enum EnumC1790b {
        Left,
        Top,
        Right,
        Bottom
    }

    /* renamed from: com.daimajia.swipe.SwipeLayout$c */
    /* loaded from: classes-dex2jar.jar:com/daimajia/swipe/SwipeLayout$c.class */
    public interface AbstractC1791c {
        /* renamed from: a */
        void m16275a(SwipeLayout swipeLayout);
    }

    /* renamed from: com.daimajia.swipe.SwipeLayout$d */
    /* loaded from: classes-dex2jar.jar:com/daimajia/swipe/SwipeLayout$d.class */
    public interface AbstractC1792d {
        /* renamed from: a */
        void m16274a(View view, EnumC1790b enumC1790b, float f, int i);
    }

    /* renamed from: com.daimajia.swipe.SwipeLayout$e */
    /* loaded from: classes-dex2jar.jar:com/daimajia/swipe/SwipeLayout$e.class */
    public enum EnumC1793e {
        LayDown,
        PullOut
    }

    /* renamed from: com.daimajia.swipe.SwipeLayout$f */
    /* loaded from: classes-dex2jar.jar:com/daimajia/swipe/SwipeLayout$f.class */
    public enum EnumC1794f {
        Middle,
        Open,
        Close
    }

    /* renamed from: com.daimajia.swipe.SwipeLayout$g */
    /* loaded from: classes-dex2jar.jar:com/daimajia/swipe/SwipeLayout$g.class */
    public interface AbstractC1795g {
        /* renamed from: a */
        boolean m16273a(MotionEvent motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.daimajia.swipe.SwipeLayout$h */
    /* loaded from: classes-dex2jar.jar:com/daimajia/swipe/SwipeLayout$h.class */
    public class C1796h extends GestureDetector.SimpleOnGestureListener {
        C1796h() {
            SwipeLayout.this = r4;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (SwipeLayout.this.f5431o != null) {
                View currentBottomView = SwipeLayout.this.getCurrentBottomView();
                View surfaceView = SwipeLayout.this.getSurfaceView();
                SwipeLayout.this.f5431o.m16276a(SwipeLayout.this, ((currentBottomView == null || (motionEvent.getX() > ((float) currentBottomView.getLeft()) ? 1 : (motionEvent.getX() == ((float) currentBottomView.getLeft()) ? 0 : -1)) <= 0 || (motionEvent.getX() > ((float) currentBottomView.getRight()) ? 1 : (motionEvent.getX() == ((float) currentBottomView.getRight()) ? 0 : -1)) >= 0 || (motionEvent.getY() > ((float) currentBottomView.getTop()) ? 1 : (motionEvent.getY() == ((float) currentBottomView.getTop()) ? 0 : -1)) <= 0 || (motionEvent.getY() > ((float) currentBottomView.getBottom()) ? 1 : (motionEvent.getY() == ((float) currentBottomView.getBottom()) ? 0 : -1)) >= 0) ? surfaceView : currentBottomView) == surfaceView);
                return true;
            }
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (SwipeLayout.this.f5434r && SwipeLayout.this.m16298b(motionEvent)) {
                SwipeLayout.this.m16282i();
            }
            return super.onSingleTapUp(motionEvent);
        }
    }

    /* renamed from: com.daimajia.swipe.SwipeLayout$i */
    /* loaded from: classes-dex2jar.jar:com/daimajia/swipe/SwipeLayout$i.class */
    public interface AbstractC1797i {
        /* renamed from: a */
        void m16272a(SwipeLayout swipeLayout);

        /* renamed from: a */
        void m16271a(SwipeLayout swipeLayout, float f, float f2);

        /* renamed from: a */
        void m16270a(SwipeLayout swipeLayout, int i, int i2);

        /* renamed from: b */
        void m16269b(SwipeLayout swipeLayout);

        /* renamed from: c */
        void m16268c(SwipeLayout swipeLayout);

        /* renamed from: d */
        void m16267d(SwipeLayout swipeLayout);
    }

    public SwipeLayout(Context context) {
        this(context, null);
    }

    public SwipeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwipeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5421e = f5417c;
        this.f5423g = 0;
        this.f5424h = new LinkedHashMap<>();
        this.f5426j = new float[4];
        this.f5427k = new ArrayList();
        this.f5428l = new ArrayList();
        this.f5429m = new HashMap();
        this.f5430n = new HashMap();
        this.f5432p = true;
        this.f5433q = new boolean[]{true, true, true, true};
        this.f5434r = false;
        this.f5435s = new C0644c.AbstractC0647a() { // from class: com.daimajia.swipe.SwipeLayout.1

            /* renamed from: a */
            boolean f5443a = true;

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: a */
            public int mo3676a(View view) {
                return SwipeLayout.this.f5423g;
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: a */
            public int mo3527a(View view, int i2, int i3) {
                int i4;
                if (view != SwipeLayout.this.getSurfaceView()) {
                    i4 = i2;
                    if (SwipeLayout.this.getCurrentBottomView() == view) {
                        switch (C17884.f5447a[SwipeLayout.this.f5421e.ordinal()]) {
                            case 1:
                            case 2:
                                i4 = SwipeLayout.this.getPaddingLeft();
                                break;
                            case 3:
                                i4 = i2;
                                if (SwipeLayout.this.f5425i == EnumC1793e.PullOut) {
                                    i4 = i2;
                                    if (i2 > SwipeLayout.this.getPaddingLeft()) {
                                        i4 = SwipeLayout.this.getPaddingLeft();
                                        break;
                                    }
                                }
                                break;
                            case 4:
                                i4 = i2;
                                if (SwipeLayout.this.f5425i == EnumC1793e.PullOut) {
                                    i4 = i2;
                                    if (i2 < SwipeLayout.this.getMeasuredWidth() - SwipeLayout.this.f5423g) {
                                        i4 = SwipeLayout.this.getMeasuredWidth() - SwipeLayout.this.f5423g;
                                        break;
                                    }
                                }
                                break;
                            default:
                                i4 = i2;
                                break;
                        }
                    }
                } else {
                    switch (C17884.f5447a[SwipeLayout.this.f5421e.ordinal()]) {
                        case 1:
                        case 2:
                            i4 = SwipeLayout.this.getPaddingLeft();
                            break;
                        case 3:
                            if (i2 >= SwipeLayout.this.getPaddingLeft()) {
                                i4 = i2;
                                if (i2 > SwipeLayout.this.getPaddingLeft() + SwipeLayout.this.f5423g) {
                                    i4 = SwipeLayout.this.getPaddingLeft() + SwipeLayout.this.f5423g;
                                    break;
                                }
                            } else {
                                i4 = SwipeLayout.this.getPaddingLeft();
                                break;
                            }
                            break;
                        case 4:
                            if (i2 <= SwipeLayout.this.getPaddingLeft()) {
                                i4 = i2;
                                if (i2 < SwipeLayout.this.getPaddingLeft() - SwipeLayout.this.f5423g) {
                                    i4 = SwipeLayout.this.getPaddingLeft() - SwipeLayout.this.f5423g;
                                    break;
                                }
                            } else {
                                i4 = SwipeLayout.this.getPaddingLeft();
                                break;
                            }
                            break;
                        default:
                            i4 = i2;
                            break;
                    }
                }
                return i4;
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: a */
            public void mo3528a(View view, float f, float f2) {
                super.mo3528a(view, f, f2);
                for (AbstractC1797i abstractC1797i : SwipeLayout.this.f5427k) {
                    abstractC1797i.m16271a(SwipeLayout.this, f, f2);
                }
                SwipeLayout.this.m16313a(f, f2, this.f5443a);
                SwipeLayout.this.invalidate();
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: a */
            public void mo3526a(View view, int i2, int i3, int i4, int i5) {
                int i6;
                int i7;
                View surfaceView = SwipeLayout.this.getSurfaceView();
                if (surfaceView == null) {
                    return;
                }
                View currentBottomView = SwipeLayout.this.getCurrentBottomView();
                int left = surfaceView.getLeft();
                int right = surfaceView.getRight();
                int top = surfaceView.getTop();
                int bottom = surfaceView.getBottom();
                if (view == surfaceView) {
                    if (SwipeLayout.this.f5425i == EnumC1793e.PullOut && currentBottomView != null) {
                        if (SwipeLayout.this.f5421e == EnumC1790b.Left || SwipeLayout.this.f5421e == EnumC1790b.Right) {
                            currentBottomView.offsetLeftAndRight(i4);
                        } else {
                            currentBottomView.offsetTopAndBottom(i5);
                        }
                    }
                } else if (SwipeLayout.this.getBottomViews().contains(view)) {
                    if (SwipeLayout.this.f5425i == EnumC1793e.PullOut) {
                        surfaceView.offsetLeftAndRight(i4);
                        surfaceView.offsetTopAndBottom(i5);
                    } else {
                        Rect m16307a = SwipeLayout.this.m16307a(SwipeLayout.this.f5421e);
                        if (currentBottomView != null) {
                            currentBottomView.layout(m16307a.left, m16307a.top, m16307a.right, m16307a.bottom);
                        }
                        int left2 = surfaceView.getLeft() + i4;
                        int top2 = surfaceView.getTop() + i5;
                        if (SwipeLayout.this.f5421e == EnumC1790b.Left && left2 < SwipeLayout.this.getPaddingLeft()) {
                            i7 = SwipeLayout.this.getPaddingLeft();
                            i6 = top2;
                        } else if (SwipeLayout.this.f5421e == EnumC1790b.Right && left2 > SwipeLayout.this.getPaddingLeft()) {
                            i7 = SwipeLayout.this.getPaddingLeft();
                            i6 = top2;
                        } else if (SwipeLayout.this.f5421e != EnumC1790b.Top || top2 >= SwipeLayout.this.getPaddingTop()) {
                            i6 = top2;
                            i7 = left2;
                            if (SwipeLayout.this.f5421e == EnumC1790b.Bottom) {
                                i6 = top2;
                                i7 = left2;
                                if (top2 > SwipeLayout.this.getPaddingTop()) {
                                    i6 = SwipeLayout.this.getPaddingTop();
                                    i7 = left2;
                                }
                            }
                        } else {
                            i6 = SwipeLayout.this.getPaddingTop();
                            i7 = left2;
                        }
                        surfaceView.layout(i7, i6, SwipeLayout.this.getMeasuredWidth() + i7, SwipeLayout.this.getMeasuredHeight() + i6);
                    }
                }
                SwipeLayout.this.m16299b(left, top, right, bottom);
                SwipeLayout.this.m16312a(left, top, i4, i5);
                SwipeLayout.this.invalidate();
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: b */
            public int mo3525b(View view) {
                return SwipeLayout.this.f5423g;
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: b */
            public int mo3523b(View view, int i2, int i3) {
                int i4;
                if (view != SwipeLayout.this.getSurfaceView()) {
                    View surfaceView = SwipeLayout.this.getSurfaceView();
                    int top = surfaceView == null ? 0 : surfaceView.getTop();
                    switch (C17884.f5447a[SwipeLayout.this.f5421e.ordinal()]) {
                        case 1:
                            if (SwipeLayout.this.f5425i != EnumC1793e.PullOut) {
                                if (top + i3 >= SwipeLayout.this.getPaddingTop()) {
                                    i4 = i2;
                                    if (top + i3 > SwipeLayout.this.getPaddingTop() + SwipeLayout.this.f5423g) {
                                        i4 = SwipeLayout.this.getPaddingTop() + SwipeLayout.this.f5423g;
                                        break;
                                    }
                                } else {
                                    i4 = SwipeLayout.this.getPaddingTop();
                                    break;
                                }
                            } else {
                                i4 = i2;
                                if (i2 > SwipeLayout.this.getPaddingTop()) {
                                    i4 = SwipeLayout.this.getPaddingTop();
                                    break;
                                }
                            }
                            break;
                        case 2:
                            if (SwipeLayout.this.f5425i != EnumC1793e.PullOut) {
                                if (top + i3 < SwipeLayout.this.getPaddingTop()) {
                                    i4 = i2;
                                    if (top + i3 <= SwipeLayout.this.getPaddingTop() - SwipeLayout.this.f5423g) {
                                        i4 = SwipeLayout.this.getPaddingTop() - SwipeLayout.this.f5423g;
                                        break;
                                    }
                                } else {
                                    i4 = SwipeLayout.this.getPaddingTop();
                                    break;
                                }
                            } else {
                                i4 = i2;
                                if (i2 < SwipeLayout.this.getMeasuredHeight() - SwipeLayout.this.f5423g) {
                                    i4 = SwipeLayout.this.getMeasuredHeight() - SwipeLayout.this.f5423g;
                                    break;
                                }
                            }
                            break;
                        case 3:
                        case 4:
                            i4 = SwipeLayout.this.getPaddingTop();
                            break;
                        default:
                            i4 = i2;
                            break;
                    }
                } else {
                    switch (C17884.f5447a[SwipeLayout.this.f5421e.ordinal()]) {
                        case 1:
                            if (i2 >= SwipeLayout.this.getPaddingTop()) {
                                i4 = i2;
                                if (i2 > SwipeLayout.this.getPaddingTop() + SwipeLayout.this.f5423g) {
                                    i4 = SwipeLayout.this.getPaddingTop() + SwipeLayout.this.f5423g;
                                    break;
                                }
                            } else {
                                i4 = SwipeLayout.this.getPaddingTop();
                                break;
                            }
                            break;
                        case 2:
                            if (i2 >= SwipeLayout.this.getPaddingTop() - SwipeLayout.this.f5423g) {
                                i4 = i2;
                                if (i2 > SwipeLayout.this.getPaddingTop()) {
                                    i4 = SwipeLayout.this.getPaddingTop();
                                    break;
                                }
                            } else {
                                i4 = SwipeLayout.this.getPaddingTop() - SwipeLayout.this.f5423g;
                                break;
                            }
                            break;
                        case 3:
                        case 4:
                            i4 = SwipeLayout.this.getPaddingTop();
                            break;
                        default:
                            i4 = i2;
                            break;
                    }
                }
                return i4;
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: b */
            public boolean mo3524b(View view, int i2) {
                boolean z = true;
                boolean z2 = view == SwipeLayout.this.getSurfaceView() || SwipeLayout.this.getBottomViews().contains(view);
                if (z2) {
                    if (SwipeLayout.this.getOpenStatus() != EnumC1794f.Close) {
                        z = false;
                    }
                    this.f5443a = z;
                }
                return z2;
            }
        };
        this.f5436t = 0;
        this.f5439w = -1.0f;
        this.f5440x = -1.0f;
        this.f5442z = new GestureDetector(getContext(), new C1796h());
        this.f5422f = C0644c.m20048a(this, this.f5435s);
        this.f5420d = ViewConfiguration.get(context).getScaledTouchSlop();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1798a.C1799a.SwipeLayout);
        int i2 = obtainStyledAttributes.getInt(C1798a.C1799a.SwipeLayout_drag_edge, 2);
        this.f5426j[EnumC1790b.Left.ordinal()] = obtainStyledAttributes.getDimension(C1798a.C1799a.SwipeLayout_leftEdgeSwipeOffset, 0.0f);
        this.f5426j[EnumC1790b.Right.ordinal()] = obtainStyledAttributes.getDimension(C1798a.C1799a.SwipeLayout_rightEdgeSwipeOffset, 0.0f);
        this.f5426j[EnumC1790b.Top.ordinal()] = obtainStyledAttributes.getDimension(C1798a.C1799a.SwipeLayout_topEdgeSwipeOffset, 0.0f);
        this.f5426j[EnumC1790b.Bottom.ordinal()] = obtainStyledAttributes.getDimension(C1798a.C1799a.SwipeLayout_bottomEdgeSwipeOffset, 0.0f);
        setClickToClose(obtainStyledAttributes.getBoolean(C1798a.C1799a.SwipeLayout_clickToClose, this.f5434r));
        if ((i2 & 1) == 1) {
            this.f5424h.put(EnumC1790b.Left, null);
        }
        if ((i2 & 4) == 4) {
            this.f5424h.put(EnumC1790b.Top, null);
        }
        if ((i2 & 2) == 2) {
            this.f5424h.put(EnumC1790b.Right, null);
        }
        if ((i2 & 8) == 8) {
            this.f5424h.put(EnumC1790b.Bottom, null);
        }
        this.f5425i = EnumC1793e.values()[obtainStyledAttributes.getInt(C1798a.C1799a.SwipeLayout_show_mode, EnumC1793e.PullOut.ordinal())];
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private int m16314a(float f) {
        return (int) ((getContext().getResources().getDisplayMetrics().density * f) + 0.5f);
    }

    /* renamed from: a */
    public Rect m16307a(EnumC1790b enumC1790b) {
        int i;
        int i2;
        int i3;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        if (enumC1790b == EnumC1790b.Right) {
            i = getMeasuredWidth() - this.f5423g;
        } else {
            i = paddingLeft;
            if (enumC1790b == EnumC1790b.Bottom) {
                paddingTop = getMeasuredHeight() - this.f5423g;
                i = paddingLeft;
            }
        }
        if (enumC1790b == EnumC1790b.Left || enumC1790b == EnumC1790b.Right) {
            i2 = i + this.f5423g;
            i3 = getMeasuredHeight() + paddingTop;
        } else {
            i2 = i + getMeasuredWidth();
            i3 = this.f5423g + paddingTop;
        }
        return new Rect(i, paddingTop, i2, i3);
    }

    /* renamed from: a */
    private Rect m16306a(EnumC1793e enumC1793e, Rect rect) {
        View currentBottomView = getCurrentBottomView();
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom;
        if (enumC1793e == EnumC1793e.PullOut) {
            if (this.f5421e == EnumC1790b.Left) {
                i = rect.left - this.f5423g;
            } else if (this.f5421e == EnumC1790b.Right) {
                i = rect.right;
            } else {
                i2 = this.f5421e == EnumC1790b.Top ? rect.top - this.f5423g : rect.bottom;
            }
            if (this.f5421e == EnumC1790b.Left || this.f5421e == EnumC1790b.Right) {
                i4 = rect.bottom;
                i3 = i + (currentBottomView == null ? 0 : currentBottomView.getMeasuredWidth());
            } else {
                i4 = (currentBottomView == null ? 0 : currentBottomView.getMeasuredHeight()) + i2;
                i3 = rect.right;
            }
        } else if (enumC1793e == EnumC1793e.LayDown) {
            if (this.f5421e == EnumC1790b.Left) {
                i3 = i + this.f5423g;
            } else if (this.f5421e == EnumC1790b.Right) {
                i = i3 - this.f5423g;
            } else if (this.f5421e == EnumC1790b.Top) {
                i4 = this.f5423g + i2;
            } else {
                i2 = i4 - this.f5423g;
            }
        }
        return new Rect(i, i2, i3, i4);
    }

    /* renamed from: a */
    private Rect m16302a(boolean z) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i = paddingTop;
        int i2 = paddingLeft;
        if (z) {
            if (this.f5421e == EnumC1790b.Left) {
                i2 = getPaddingLeft() + this.f5423g;
                i = paddingTop;
            } else if (this.f5421e == EnumC1790b.Right) {
                i2 = getPaddingLeft() - this.f5423g;
                i = paddingTop;
            } else if (this.f5421e == EnumC1790b.Top) {
                i = getPaddingTop() + this.f5423g;
                i2 = paddingLeft;
            } else {
                i = getPaddingTop() - this.f5423g;
                i2 = paddingLeft;
            }
        }
        return new Rect(i2, i, getMeasuredWidth() + i2, getMeasuredHeight() + i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01cd, code lost:
        if (r10 == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0119, code lost:
        if (r12 == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0173, code lost:
        if (r12 == false) goto L80;
     */
    /* JADX WARN: Removed duplicated region for block: B:128:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0187  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m16310a(android.view.MotionEvent r4) {
        /*
            Method dump skipped, instructions count: 602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.daimajia.swipe.SwipeLayout.m16310a(android.view.MotionEvent):void");
    }

    /* renamed from: b */
    public boolean m16298b(MotionEvent motionEvent) {
        boolean contains;
        View surfaceView = getSurfaceView();
        if (surfaceView == null) {
            contains = false;
        } else {
            if (this.f5441y == null) {
                this.f5441y = new Rect();
            }
            surfaceView.getHitRect(this.f5441y);
            contains = this.f5441y.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        return contains;
    }

    private AdapterView getAdapterView() {
        ViewParent parent = getParent();
        return parent instanceof AdapterView ? (AdapterView) parent : null;
    }

    private float getCurrentOffset() {
        return this.f5421e == null ? 0.0f : this.f5426j[this.f5421e.ordinal()];
    }

    /* renamed from: j */
    private void m16281j() {
        EnumC1794f openStatus = getOpenStatus();
        List<View> bottomViews = getBottomViews();
        if (openStatus != EnumC1794f.Close) {
            View currentBottomView = getCurrentBottomView();
            if (currentBottomView == null || currentBottomView.getVisibility() == 0) {
                return;
            }
            currentBottomView.setVisibility(0);
            return;
        }
        for (View view : bottomViews) {
            if (view != null && view.getVisibility() != 4) {
                view.setVisibility(4);
            }
        }
    }

    /* renamed from: k */
    private boolean m16280k() {
        return getAdapterView() != null;
    }

    /* renamed from: l */
    public void m16279l() {
        AdapterView adapterView;
        int positionForView;
        if (getOpenStatus() != EnumC1794f.Close) {
            return;
        }
        ViewParent parent = getParent();
        if (!(parent instanceof AdapterView) || (positionForView = (adapterView = (AdapterView) parent).getPositionForView(this)) == -1) {
            return;
        }
        adapterView.performItemClick(adapterView.getChildAt(positionForView - adapterView.getFirstVisiblePosition()), positionForView, adapterView.getAdapter().getItemId(positionForView));
    }

    /* renamed from: m */
    public boolean m16278m() {
        boolean z;
        if (getOpenStatus() != EnumC1794f.Close) {
            z = false;
        } else {
            ViewParent parent = getParent();
            if (parent instanceof AdapterView) {
                AdapterView<?> adapterView = (AdapterView) parent;
                int positionForView = adapterView.getPositionForView(this);
                if (positionForView == -1) {
                    z = false;
                } else {
                    long itemIdAtPosition = adapterView.getItemIdAtPosition(positionForView);
                    try {
                        Method declaredMethod = AbsListView.class.getDeclaredMethod("performLongPress", View.class, Integer.TYPE, Long.TYPE);
                        declaredMethod.setAccessible(true);
                        z = ((Boolean) declaredMethod.invoke(adapterView, this, Integer.valueOf(positionForView), Long.valueOf(itemIdAtPosition))).booleanValue();
                    } catch (Exception e) {
                        e.printStackTrace();
                        boolean onItemLongClick = adapterView.getOnItemLongClickListener() != null ? adapterView.getOnItemLongClickListener().onItemLongClick(adapterView, this, positionForView, itemIdAtPosition) : false;
                        z = onItemLongClick;
                        if (onItemLongClick) {
                            adapterView.performHapticFeedback(0);
                            z = onItemLongClick;
                        }
                    }
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: n */
    private void m16277n() {
        View currentBottomView = getCurrentBottomView();
        if (currentBottomView != null) {
            if (this.f5421e == EnumC1790b.Left || this.f5421e == EnumC1790b.Right) {
                this.f5423g = currentBottomView.getMeasuredWidth() - m16314a(getCurrentOffset());
            } else {
                this.f5423g = currentBottomView.getMeasuredHeight() - m16314a(getCurrentOffset());
            }
        }
        if (this.f5425i == EnumC1793e.PullOut) {
            m16315a();
        } else if (this.f5425i == EnumC1793e.LayDown) {
            m16300b();
        }
        m16281j();
    }

    private void setCurrentDragEdge(EnumC1790b enumC1790b) {
        if (this.f5421e != enumC1790b) {
            this.f5421e = enumC1790b;
            m16277n();
        }
    }

    /* renamed from: a */
    protected Rect m16309a(View view) {
        Rect rect = new Rect(view.getLeft(), view.getTop(), 0, 0);
        View view2 = view;
        while (view2.getParent() != null && view2 != getRootView()) {
            view2 = (View) view2.getParent();
            if (view2 == this) {
                break;
            }
            rect.left += view2.getLeft();
            rect.top += view2.getTop();
        }
        rect.right = rect.left + view.getMeasuredWidth();
        rect.bottom = rect.top + view.getMeasuredHeight();
        return rect;
    }

    /* renamed from: a */
    void m16315a() {
        Rect m16302a = m16302a(false);
        View surfaceView = getSurfaceView();
        if (surfaceView != null) {
            surfaceView.layout(m16302a.left, m16302a.top, m16302a.right, m16302a.bottom);
            bringChildToFront(surfaceView);
        }
        Rect m16306a = m16306a(EnumC1793e.PullOut, m16302a);
        View currentBottomView = getCurrentBottomView();
        if (currentBottomView != null) {
            currentBottomView.layout(m16306a.left, m16306a.top, m16306a.right, m16306a.bottom);
        }
    }

    /* renamed from: a */
    protected void m16313a(float f, float f2, boolean z) {
        float m20064a = this.f5422f.m20064a();
        View surfaceView = getSurfaceView();
        EnumC1790b enumC1790b = this.f5421e;
        if (enumC1790b == null || surfaceView == null) {
            return;
        }
        float f3 = z ? 0.25f : 0.75f;
        if (enumC1790b == EnumC1790b.Left) {
            if (f > m20064a) {
                m16284h();
            } else if (f < (-m20064a)) {
                m16282i();
            } else if ((getSurfaceView().getLeft() * 1.0f) / this.f5423g > f3) {
                m16284h();
            } else {
                m16282i();
            }
        } else if (enumC1790b == EnumC1790b.Right) {
            if (f > m20064a) {
                m16282i();
            } else if (f < (-m20064a)) {
                m16284h();
            } else if (((-getSurfaceView().getLeft()) * 1.0f) / this.f5423g > f3) {
                m16284h();
            } else {
                m16282i();
            }
        } else if (enumC1790b == EnumC1790b.Top) {
            if (f2 > m20064a) {
                m16284h();
            } else if (f2 < (-m20064a)) {
                m16282i();
            } else if ((getSurfaceView().getTop() * 1.0f) / this.f5423g > f3) {
                m16284h();
            } else {
                m16282i();
            }
        } else if (enumC1790b != EnumC1790b.Bottom) {
        } else {
            if (f2 > m20064a) {
                m16282i();
            } else if (f2 < (-m20064a)) {
                m16284h();
            } else if (((-getSurfaceView().getTop()) * 1.0f) / this.f5423g > f3) {
                m16284h();
            } else {
                m16282i();
            }
        }
    }

    /* renamed from: a */
    protected void m16312a(int i, int i2, int i3, int i4) {
        boolean z = false;
        EnumC1790b dragEdge = getDragEdge();
        if (dragEdge != EnumC1790b.Left ? dragEdge != EnumC1790b.Right ? dragEdge != EnumC1790b.Top ? dragEdge != EnumC1790b.Bottom || i4 <= 0 : i4 >= 0 : i3 <= 0 : i3 >= 0) {
            z = true;
        }
        m16311a(i, i2, z);
    }

    /* renamed from: a */
    protected void m16311a(int i, int i2, boolean z) {
        m16281j();
        EnumC1794f openStatus = getOpenStatus();
        if (!this.f5427k.isEmpty()) {
            this.f5436t++;
            for (AbstractC1797i abstractC1797i : this.f5427k) {
                if (this.f5436t == 1) {
                    if (z) {
                        abstractC1797i.m16272a(this);
                    } else {
                        abstractC1797i.m16268c(this);
                    }
                }
                abstractC1797i.m16270a(this, i - getPaddingLeft(), i2 - getPaddingTop());
            }
            if (openStatus == EnumC1794f.Close) {
                for (AbstractC1797i abstractC1797i2 : this.f5427k) {
                    abstractC1797i2.m16267d(this);
                }
                this.f5436t = 0;
            }
            if (openStatus != EnumC1794f.Open) {
                return;
            }
            View currentBottomView = getCurrentBottomView();
            if (currentBottomView != null) {
                currentBottomView.setEnabled(true);
            }
            for (AbstractC1797i abstractC1797i3 : this.f5427k) {
                abstractC1797i3.m16269b(this);
            }
            this.f5436t = 0;
        }
    }

    /* renamed from: a */
    public void m16301a(boolean z, boolean z2) {
        View surfaceView = getSurfaceView();
        View currentBottomView = getCurrentBottomView();
        if (surfaceView == null) {
            return;
        }
        Rect m16302a = m16302a(true);
        if (z) {
            this.f5422f.m20051a(surfaceView, m16302a.left, m16302a.top);
        } else {
            int i = m16302a.left;
            int left = surfaceView.getLeft();
            int i2 = m16302a.top;
            int top = surfaceView.getTop();
            surfaceView.layout(m16302a.left, m16302a.top, m16302a.right, m16302a.bottom);
            if (getShowMode() == EnumC1793e.PullOut) {
                Rect m16306a = m16306a(EnumC1793e.PullOut, m16302a);
                if (currentBottomView != null) {
                    currentBottomView.layout(m16306a.left, m16306a.top, m16306a.right, m16306a.bottom);
                }
            }
            if (z2) {
                m16299b(m16302a.left, m16302a.top, m16302a.right, m16302a.bottom);
                m16312a(m16302a.left, m16302a.top, i - left, i2 - top);
            } else {
                m16281j();
            }
        }
        invalidate();
    }

    /* renamed from: a */
    protected boolean m16308a(View view, Rect rect, EnumC1790b enumC1790b, int i, int i2, int i3, int i4) {
        boolean z = false;
        if (!this.f5430n.get(view).booleanValue()) {
            int i5 = rect.left;
            int i6 = rect.right;
            int i7 = rect.top;
            int i8 = rect.bottom;
            if (getShowMode() == EnumC1793e.LayDown) {
                if ((enumC1790b == EnumC1790b.Right && i3 <= i5) || ((enumC1790b == EnumC1790b.Left && i >= i6) || ((enumC1790b == EnumC1790b.Top && i2 >= i8) || (enumC1790b == EnumC1790b.Bottom && i4 <= i7)))) {
                    z = true;
                }
                z = false;
            } else {
                if (getShowMode() == EnumC1793e.PullOut && ((enumC1790b == EnumC1790b.Right && i6 <= getWidth()) || ((enumC1790b == EnumC1790b.Left && i5 >= getPaddingLeft()) || ((enumC1790b == EnumC1790b.Top && i7 >= getPaddingTop()) || (enumC1790b == EnumC1790b.Bottom && i8 <= getHeight()))))) {
                    z = true;
                }
                z = false;
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        int i2;
        try {
            i2 = ((Integer) layoutParams.getClass().getField("gravity").get(layoutParams)).intValue();
        } catch (Exception e) {
            e.printStackTrace();
            i2 = 0;
        }
        if (i2 <= 0) {
            Iterator<Map.Entry<EnumC1790b, View>> it = this.f5424h.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<EnumC1790b, View> next = it.next();
                if (next.getValue() == null) {
                    this.f5424h.put(next.getKey(), view);
                    break;
                }
            }
        } else {
            int m20421a = C0576c.m20421a(i2, C0595u.m20320g(this));
            if ((m20421a & 3) == 3) {
                this.f5424h.put(EnumC1790b.Left, view);
            }
            if ((m20421a & 5) == 5) {
                this.f5424h.put(EnumC1790b.Right, view);
            }
            if ((m20421a & 48) == 48) {
                this.f5424h.put(EnumC1790b.Top, view);
            }
            if ((m20421a & 80) == 80) {
                this.f5424h.put(EnumC1790b.Bottom, view);
            }
        }
        if (view == null || view.getParent() == this) {
            return;
        }
        super.addView(view, i, layoutParams);
    }

    /* renamed from: b */
    void m16300b() {
        Rect m16302a = m16302a(false);
        View surfaceView = getSurfaceView();
        if (surfaceView != null) {
            surfaceView.layout(m16302a.left, m16302a.top, m16302a.right, m16302a.bottom);
            bringChildToFront(surfaceView);
        }
        Rect m16306a = m16306a(EnumC1793e.LayDown, m16302a);
        View currentBottomView = getCurrentBottomView();
        if (currentBottomView != null) {
            currentBottomView.layout(m16306a.left, m16306a.top, m16306a.right, m16306a.bottom);
        }
    }

    /* renamed from: b */
    protected void m16299b(int i, int i2, int i3, int i4) {
        if (this.f5429m.isEmpty()) {
            return;
        }
        for (Map.Entry<View, ArrayList<AbstractC1792d>> entry : this.f5429m.entrySet()) {
            View key = entry.getKey();
            Rect m16309a = m16309a(key);
            if (m16297b(key, m16309a, this.f5421e, i, i2, i3, i4)) {
                this.f5430n.put(key, false);
                int i5 = 0;
                float f = 0.0f;
                if (getShowMode() == EnumC1793e.LayDown) {
                    switch (C17884.f5447a[this.f5421e.ordinal()]) {
                        case 1:
                            i5 = m16309a.top - i2;
                            f = i5 / key.getHeight();
                            break;
                        case 2:
                            i5 = m16309a.bottom - i4;
                            f = i5 / key.getHeight();
                            break;
                        case 3:
                            i5 = m16309a.left - i;
                            f = i5 / key.getWidth();
                            break;
                        case 4:
                            i5 = m16309a.right - i3;
                            f = i5 / key.getWidth();
                            break;
                    }
                } else {
                    if (getShowMode() == EnumC1793e.PullOut) {
                        switch (C17884.f5447a[this.f5421e.ordinal()]) {
                            case 1:
                                i5 = m16309a.bottom - getPaddingTop();
                                f = i5 / key.getHeight();
                                break;
                            case 2:
                                i5 = m16309a.top - getHeight();
                                f = i5 / key.getHeight();
                                break;
                            case 3:
                                i5 = m16309a.right - getPaddingLeft();
                                f = i5 / key.getWidth();
                                break;
                            case 4:
                                i5 = m16309a.left - getWidth();
                                f = i5 / key.getWidth();
                                break;
                        }
                    }
                    f = 0.0f;
                    i5 = 0;
                }
                Iterator<AbstractC1792d> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    it.next().m16274a(key, this.f5421e, Math.abs(f), i5);
                    if (Math.abs(f) == 1.0f) {
                        this.f5430n.put(key, true);
                    }
                }
            }
            if (m16308a(key, m16309a, this.f5421e, i, i2, i3, i4)) {
                this.f5430n.put(key, true);
                Iterator<AbstractC1792d> it2 = entry.getValue().iterator();
                while (it2.hasNext()) {
                    AbstractC1792d next = it2.next();
                    if (this.f5421e == EnumC1790b.Left || this.f5421e == EnumC1790b.Right) {
                        next.m16274a(key, this.f5421e, 1.0f, key.getWidth());
                    } else {
                        next.m16274a(key, this.f5421e, 1.0f, key.getHeight());
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public void m16295b(boolean z, boolean z2) {
        View surfaceView = getSurfaceView();
        if (surfaceView == null) {
            return;
        }
        if (z) {
            this.f5422f.m20051a(getSurfaceView(), getPaddingLeft(), getPaddingTop());
        } else {
            Rect m16302a = m16302a(false);
            int i = m16302a.left;
            int left = surfaceView.getLeft();
            int i2 = m16302a.top;
            int top = surfaceView.getTop();
            surfaceView.layout(m16302a.left, m16302a.top, m16302a.right, m16302a.bottom);
            if (z2) {
                m16299b(m16302a.left, m16302a.top, m16302a.right, m16302a.bottom);
                m16312a(m16302a.left, m16302a.top, i - left, i2 - top);
            } else {
                m16281j();
            }
        }
        invalidate();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x005d, code lost:
        if (r9 <= r0) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006e, code lost:
        if (r7 >= r0) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007f, code lost:
        if (r8 < r0) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0090, code lost:
        if (r10 <= r0) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00da, code lost:
        if (r0 >= getPaddingTop()) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ef, code lost:
        if (r0 > getWidth()) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0104, code lost:
        if (r0 < getPaddingLeft()) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0119, code lost:
        if (r0 >= getPaddingTop()) goto L7;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean m16297b(android.view.View r4, android.graphics.Rect r5, com.daimajia.swipe.SwipeLayout.EnumC1790b r6, int r7, int r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.daimajia.swipe.SwipeLayout.m16297b(android.view.View, android.graphics.Rect, com.daimajia.swipe.SwipeLayout$b, int, int, int, int):boolean");
    }

    /* renamed from: c */
    public boolean m16294c() {
        return this.f5432p;
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (this.f5422f.m20047a(true)) {
            C0595u.m20324e(this);
        }
    }

    /* renamed from: d */
    public boolean m16292d() {
        View view = this.f5424h.get(EnumC1790b.Left);
        return view != null && view.getParent() == this && view != getSurfaceView() && this.f5433q[EnumC1790b.Left.ordinal()];
    }

    /* renamed from: e */
    public boolean m16290e() {
        View view = this.f5424h.get(EnumC1790b.Right);
        return view != null && view.getParent() == this && view != getSurfaceView() && this.f5433q[EnumC1790b.Right.ordinal()];
    }

    /* renamed from: f */
    public boolean m16288f() {
        View view = this.f5424h.get(EnumC1790b.Top);
        return view != null && view.getParent() == this && view != getSurfaceView() && this.f5433q[EnumC1790b.Top.ordinal()];
    }

    /* renamed from: g */
    public boolean m16286g() {
        View view = this.f5424h.get(EnumC1790b.Bottom);
        return view != null && view.getParent() == this && view != getSurfaceView() && this.f5433q[EnumC1790b.Bottom.ordinal()];
    }

    public List<View> getBottomViews() {
        ArrayList arrayList = new ArrayList();
        for (EnumC1790b enumC1790b : EnumC1790b.values()) {
            arrayList.add(this.f5424h.get(enumC1790b));
        }
        return arrayList;
    }

    public View getCurrentBottomView() {
        List<View> bottomViews = getBottomViews();
        return this.f5421e.ordinal() < bottomViews.size() ? bottomViews.get(this.f5421e.ordinal()) : null;
    }

    public int getDragDistance() {
        return this.f5423g;
    }

    public EnumC1790b getDragEdge() {
        return this.f5421e;
    }

    public Map<EnumC1790b, View> getDragEdgeMap() {
        return this.f5424h;
    }

    @Deprecated
    public List<EnumC1790b> getDragEdges() {
        return new ArrayList(this.f5424h.keySet());
    }

    public EnumC1794f getOpenStatus() {
        EnumC1794f enumC1794f;
        View surfaceView = getSurfaceView();
        if (surfaceView == null) {
            enumC1794f = EnumC1794f.Close;
        } else {
            int left = surfaceView.getLeft();
            int top = surfaceView.getTop();
            enumC1794f = (left == getPaddingLeft() && top == getPaddingTop()) ? EnumC1794f.Close : (left == getPaddingLeft() - this.f5423g || left == getPaddingLeft() + this.f5423g || top == getPaddingTop() - this.f5423g || top == getPaddingTop() + this.f5423g) ? EnumC1794f.Open : EnumC1794f.Middle;
        }
        return enumC1794f;
    }

    public EnumC1793e getShowMode() {
        return this.f5425i;
    }

    public View getSurfaceView() {
        return getChildCount() == 0 ? null : getChildAt(getChildCount() - 1);
    }

    /* renamed from: h */
    public void m16284h() {
        m16301a(true, true);
    }

    /* renamed from: i */
    public void m16282i() {
        m16295b(true, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (m16280k()) {
            if (this.f5418a == null) {
                setOnClickListener(new View.OnClickListener() { // from class: com.daimajia.swipe.SwipeLayout.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        SwipeLayout.this.m16279l();
                    }
                });
            }
            if (this.f5419b != null) {
                return;
            }
            setOnLongClickListener(new View.OnLongClickListener() { // from class: com.daimajia.swipe.SwipeLayout.3
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    SwipeLayout.this.m16278m();
                    return true;
                }
            });
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        ViewParent parent;
        if (!m16294c()) {
            z = false;
        } else if (!this.f5434r || getOpenStatus() != EnumC1794f.Open || !m16298b(motionEvent)) {
            Iterator<AbstractC1795g> it = this.f5428l.iterator();
            while (true) {
                if (!it.hasNext()) {
                    switch (motionEvent.getAction()) {
                        case 0:
                            this.f5422f.m20040b(motionEvent);
                            this.f5438v = false;
                            this.f5439w = motionEvent.getRawX();
                            this.f5440x = motionEvent.getRawY();
                            if (getOpenStatus() == EnumC1794f.Middle) {
                                this.f5438v = true;
                            }
                            z = this.f5438v;
                            break;
                        case 1:
                        case 3:
                            this.f5438v = false;
                            this.f5422f.m20040b(motionEvent);
                            z = this.f5438v;
                            break;
                        case 2:
                            boolean z2 = this.f5438v;
                            m16310a(motionEvent);
                            if (this.f5438v && (parent = getParent()) != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                            if (!z2 && this.f5438v) {
                                z = false;
                                break;
                            }
                            z = this.f5438v;
                            break;
                        default:
                            this.f5422f.m20040b(motionEvent);
                            z = this.f5438v;
                            break;
                    }
                } else {
                    AbstractC1795g next = it.next();
                    if (next != null && next.m16273a(motionEvent)) {
                        z = false;
                        break;
                    }
                }
            }
        } else {
            z = true;
        }
        return z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        m16277n();
        if (this.f5437u != null) {
            for (int i5 = 0; i5 < this.f5437u.size(); i5++) {
                this.f5437u.get(i5).m16275a(this);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0084  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r3
            boolean r0 = r0.m16294c()
            if (r0 != 0) goto L11
            r0 = r3
            r1 = r4
            boolean r0 = super.onTouchEvent(r1)
            r5 = r0
        Lf:
            r0 = r5
            return r0
        L11:
            r0 = r4
            int r0 = r0.getActionMasked()
            r6 = r0
            r0 = r3
            android.view.GestureDetector r0 = r0.f5442z
            r1 = r4
            boolean r0 = r0.onTouchEvent(r1)
            r0 = r6
            switch(r0) {
                case 0: goto L60;
                case 1: goto L99;
                case 2: goto L78;
                case 3: goto L99;
                default: goto L40;
            }
        L40:
            r0 = r3
            androidx.d.b.c r0 = r0.f5422f
            r1 = r4
            r0.m20040b(r1)
        L48:
            r0 = r3
            r1 = r4
            boolean r0 = super.onTouchEvent(r1)
            if (r0 != 0) goto L5b
            r0 = r3
            boolean r0 = r0.f5438v
            if (r0 != 0) goto L5b
            r0 = r6
            if (r0 != 0) goto Lf
        L5b:
            r0 = 1
            r5 = r0
            goto Lf
        L60:
            r0 = r3
            androidx.d.b.c r0 = r0.f5422f
            r1 = r4
            r0.m20040b(r1)
            r0 = r3
            r1 = r4
            float r1 = r1.getRawX()
            r0.f5439w = r1
            r0 = r3
            r1 = r4
            float r1 = r1.getRawY()
            r0.f5440x = r1
        L78:
            r0 = r3
            r1 = r4
            r0.m16310a(r1)
            r0 = r3
            boolean r0 = r0.f5438v
            if (r0 == 0) goto L48
            r0 = r3
            android.view.ViewParent r0 = r0.getParent()
            r1 = 1
            r0.requestDisallowInterceptTouchEvent(r1)
            r0 = r3
            androidx.d.b.c r0 = r0.f5422f
            r1 = r4
            r0.m20040b(r1)
            goto L48
        L99:
            r0 = r3
            r1 = 0
            r0.f5438v = r1
            r0 = r3
            androidx.d.b.c r0 = r0.f5422f
            r1 = r4
            r0.m20040b(r1)
            goto L48
        */
        throw new UnsupportedOperationException("Method not decompiled: com.daimajia.swipe.SwipeLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        for (Map.Entry entry : new HashMap(this.f5424h).entrySet()) {
            if (entry.getValue() == view) {
                this.f5424h.remove(entry.getKey());
            }
        }
    }

    public void setBottomSwipeEnabled(boolean z) {
        this.f5433q[EnumC1790b.Bottom.ordinal()] = z;
    }

    public void setClickToClose(boolean z) {
        this.f5434r = z;
    }

    public void setDragDistance(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        this.f5423g = m16314a(i2);
        requestLayout();
    }

    @Deprecated
    public void setDragEdge(EnumC1790b enumC1790b) {
        if (getChildCount() >= 2) {
            this.f5424h.put(enumC1790b, getChildAt(getChildCount() - 2));
        }
        setCurrentDragEdge(enumC1790b);
    }

    @Deprecated
    public void setDragEdges(List<EnumC1790b> list) {
        int min = Math.min(list.size(), getChildCount() - 1);
        for (int i = 0; i < min; i++) {
            this.f5424h.put(list.get(i), getChildAt(i));
        }
        if (list.size() == 0 || list.contains(f5417c)) {
            setCurrentDragEdge(f5417c);
        } else {
            setCurrentDragEdge(list.get(0));
        }
    }

    @Deprecated
    public void setDragEdges(EnumC1790b... enumC1790bArr) {
        setDragEdges(Arrays.asList(enumC1790bArr));
    }

    public void setLeftSwipeEnabled(boolean z) {
        this.f5433q[EnumC1790b.Left.ordinal()] = z;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.f5418a = onClickListener;
    }

    public void setOnDoubleClickListener(AbstractC1789a abstractC1789a) {
        this.f5431o = abstractC1789a;
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        super.setOnLongClickListener(onLongClickListener);
        this.f5419b = onLongClickListener;
    }

    public void setRightSwipeEnabled(boolean z) {
        this.f5433q[EnumC1790b.Right.ordinal()] = z;
    }

    public void setShowMode(EnumC1793e enumC1793e) {
        this.f5425i = enumC1793e;
        requestLayout();
    }

    public void setSwipeEnabled(boolean z) {
        this.f5432p = z;
    }

    public void setTopSwipeEnabled(boolean z) {
        this.f5433q[EnumC1790b.Top.ordinal()] = z;
    }
}
