package com.p051a.p052a.p053a.p054a.p058c;

import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.core.p023g.C0552u;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
import com.p051a.p052a.p053a.p054a.p055a.C1101a;
import com.p051a.p052a.p053a.p054a.p059d.C1155a;
import com.p051a.p052a.p053a.p054a.p059d.C1157c;
import java.lang.ref.WeakReference;
/* renamed from: com.a.a.a.a.c.l */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/c/l.class */
public class C1143l {

    /* renamed from: a */
    public static final Interpolator f3606a = new animationInterpolatorC1134c();

    /* renamed from: b */
    public static final Interpolator f3607b = new DecelerateInterpolator();

    /* renamed from: D */
    private C1137f f3611D;

    /* renamed from: E */
    private C1140i f3612E;

    /* renamed from: F */
    private C1138g f3613F;

    /* renamed from: G */
    private C1152m f3614G;

    /* renamed from: H */
    private NestedScrollView f3615H;

    /* renamed from: I */
    private int f3616I;

    /* renamed from: J */
    private int f3617J;

    /* renamed from: K */
    private int f3618K;

    /* renamed from: L */
    private int f3619L;

    /* renamed from: M */
    private int f3620M;

    /* renamed from: N */
    private int f3621N;

    /* renamed from: O */
    private int f3622O;

    /* renamed from: P */
    private int f3623P;

    /* renamed from: Q */
    private int f3624Q;

    /* renamed from: R */
    private int f3625R;

    /* renamed from: S */
    private int f3626S;

    /* renamed from: T */
    private int f3627T;

    /* renamed from: V */
    private int f3629V;

    /* renamed from: W */
    private C1141j f3630W;

    /* renamed from: X */
    private C1141j f3631X;

    /* renamed from: Y */
    private HandlerC1148b f3632Y;

    /* renamed from: Z */
    private AbstractC1149c f3633Z;

    /* renamed from: aa */
    private boolean f3634aa;

    /* renamed from: ab */
    private boolean f3635ab;

    /* renamed from: ae */
    private Object f3638ae;

    /* renamed from: c */
    RecyclerView.AbstractC0977w f3642c;

    /* renamed from: d */
    private RecyclerView f3643d;

    /* renamed from: i */
    private AbstractC1133b f3648i;

    /* renamed from: j */
    private NinePatchDrawable f3649j;

    /* renamed from: k */
    private float f3650k;

    /* renamed from: l */
    private int f3651l;

    /* renamed from: m */
    private int f3652m;

    /* renamed from: n */
    private int f3653n;

    /* renamed from: o */
    private int f3654o;

    /* renamed from: q */
    private boolean f3656q;

    /* renamed from: r */
    private boolean f3657r;

    /* renamed from: u */
    private boolean f3660u;

    /* renamed from: v */
    private boolean f3661v;

    /* renamed from: w */
    private int f3662w;

    /* renamed from: x */
    private int f3663x;

    /* renamed from: e */
    private Interpolator f3644e = f3606a;

    /* renamed from: p */
    private long f3655p = -1;

    /* renamed from: s */
    private boolean f3658s = true;

    /* renamed from: y */
    private final Rect f3664y = new Rect();

    /* renamed from: z */
    private int f3665z = 200;

    /* renamed from: A */
    private Interpolator f3608A = f3607b;

    /* renamed from: B */
    private int f3609B = 0;

    /* renamed from: C */
    private C1139h f3610C = new C1139h();

    /* renamed from: U */
    private int f3628U = 0;

    /* renamed from: ac */
    private float f3636ac = 1.0f;

    /* renamed from: ad */
    private int f3637ad = 0;

    /* renamed from: af */
    private C1151e f3639af = new C1151e();

    /* renamed from: ag */
    private C1147a f3640ag = new C1147a();

    /* renamed from: ah */
    private final Runnable f3641ah = new Runnable() { // from class: com.a.a.a.a.c.l.3
        @Override // java.lang.Runnable
        public void run() {
            if (C1143l.this.f3642c != null) {
                C1143l c1143l = C1143l.this;
                c1143l.m4028b(c1143l.m4004f());
            }
        }
    };

    /* renamed from: g */
    private RecyclerView.AbstractC0964m f3646g = new RecyclerView.AbstractC0964m() { // from class: com.a.a.a.a.c.l.1
        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0964m
        /* renamed from: a */
        public void mo3991a(boolean z) {
            C1143l.this.m4005e(z);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0964m
        /* renamed from: a */
        public boolean mo3992a(RecyclerView recyclerView, MotionEvent motionEvent) {
            return C1143l.this.m4044a(recyclerView, motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0964m
        /* renamed from: b */
        public void mo3990b(RecyclerView recyclerView, MotionEvent motionEvent) {
            C1143l.this.m4027b(recyclerView, motionEvent);
        }
    };

    /* renamed from: h */
    private RecyclerView.AbstractC0965n f3647h = new RecyclerView.AbstractC0965n() { // from class: com.a.a.a.a.c.l.2
        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0965n
        /* renamed from: a */
        public void mo3989a(RecyclerView recyclerView, int i) {
            C1143l.this.m4048a(recyclerView, i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0965n
        /* renamed from: a */
        public void mo572a(RecyclerView recyclerView, int i, int i2) {
            C1143l.this.m4047a(recyclerView, i, i2);
        }
    };

    /* renamed from: f */
    private RunnableC1150d f3645f = new RunnableC1150d(this);

    /* renamed from: t */
    private int f3659t = ViewConfiguration.getLongPressTimeout();

    /* renamed from: com.a.a.a.a.c.l$a */
    /* loaded from: classes-dex2jar.jar:com/a/a/a/a/c/l$a.class */
    public static class C1147a {

        /* renamed from: a */
        public RecyclerView f3669a;

        /* renamed from: b */
        public C1140i f3670b;

        /* renamed from: c */
        public RecyclerView.AbstractC0977w f3671c;

        /* renamed from: d */
        public int f3672d;

        /* renamed from: e */
        public int f3673e;

        /* renamed from: f */
        public int f3674f;

        /* renamed from: g */
        public int f3675g;

        /* renamed from: h */
        public int f3676h;

        /* renamed from: i */
        public int f3677i;

        /* renamed from: j */
        public int f3678j;

        /* renamed from: k */
        public boolean f3679k;

        /* renamed from: l */
        public C1141j f3680l;

        /* renamed from: m */
        public C1141j f3681m;

        /* renamed from: n */
        public boolean f3682n;

        C1147a() {
        }

        /* renamed from: a */
        public void m3988a() {
            this.f3669a = null;
            this.f3670b = null;
            this.f3671c = null;
        }

        /* renamed from: a */
        public void m3987a(RecyclerView recyclerView, RecyclerView.AbstractC0977w abstractC0977w, C1140i c1140i, int i, int i2, C1141j c1141j, C1141j c1141j2, boolean z) {
            this.f3669a = recyclerView;
            this.f3670b = c1140i;
            this.f3671c = abstractC0977w;
            this.f3672d = i;
            this.f3673e = i2;
            this.f3680l = c1141j;
            this.f3681m = c1141j2;
            this.f3682n = z;
            this.f3678j = C1155a.m3950a(recyclerView);
            boolean z2 = true;
            if (C1155a.m3959a(this.f3678j) != 1) {
                z2 = false;
            }
            this.f3679k = z2;
            int i3 = i - c1140i.f3600f;
            this.f3676h = i3;
            this.f3674f = i3;
            int i4 = i2 - c1140i.f3601g;
            this.f3677i = i4;
            this.f3675g = i4;
            if (this.f3679k) {
                this.f3674f = Math.max(this.f3674f, recyclerView.getPaddingLeft());
                this.f3674f = Math.min(this.f3674f, Math.max(0, (recyclerView.getWidth() - recyclerView.getPaddingRight()) - this.f3670b.f3595a));
                return;
            }
            this.f3675g = Math.max(this.f3675g, recyclerView.getPaddingTop());
            this.f3675g = Math.min(this.f3675g, Math.max(0, (recyclerView.getHeight() - recyclerView.getPaddingBottom()) - this.f3670b.f3596b));
        }
    }

    /* renamed from: com.a.a.a.a.c.l$b */
    /* loaded from: classes-dex2jar.jar:com/a/a/a/a/c/l$b.class */
    public static class HandlerC1148b extends Handler {

        /* renamed from: a */
        private C1143l f3683a;

        /* renamed from: b */
        private MotionEvent f3684b;

        public HandlerC1148b(C1143l c1143l) {
            this.f3683a = c1143l;
        }

        /* renamed from: a */
        public void m3986a() {
            removeMessages(1);
            MotionEvent motionEvent = this.f3684b;
            if (motionEvent != null) {
                motionEvent.recycle();
                this.f3684b = null;
            }
        }

        /* renamed from: a */
        public void m3985a(MotionEvent motionEvent, int i) {
            m3986a();
            this.f3684b = MotionEvent.obtain(motionEvent);
            sendEmptyMessageAtTime(1, motionEvent.getDownTime() + i);
        }

        /* renamed from: b */
        public void m3984b() {
            removeMessages(2);
        }

        /* renamed from: c */
        public void m3983c() {
            if (m3982d()) {
                return;
            }
            sendEmptyMessage(2);
        }

        /* renamed from: d */
        public boolean m3982d() {
            return hasMessages(2);
        }

        /* renamed from: e */
        public void m3981e() {
            sendEmptyMessage(3);
        }

        /* renamed from: f */
        public void m3980f() {
            removeMessages(3);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                this.f3683a.m4056a(this.f3684b);
            } else if (i == 2) {
                this.f3683a.m4003f(true);
            } else if (i != 3) {
            } else {
                this.f3683a.m4021c();
            }
        }
    }

    /* renamed from: com.a.a.a.a.c.l$c */
    /* loaded from: classes-dex2jar.jar:com/a/a/a/a/c/l$c.class */
    public interface AbstractC1149c {
        /* renamed from: a */
        void m3979a(int i);

        /* renamed from: a */
        void m3978a(int i, int i2);

        /* renamed from: a */
        void m3977a(int i, int i2, boolean z);

        /* renamed from: b */
        void m3976b(int i, int i2);
    }

    /* renamed from: com.a.a.a.a.c.l$d */
    /* loaded from: classes-dex2jar.jar:com/a/a/a/a/c/l$d.class */
    public static class RunnableC1150d implements Runnable {

        /* renamed from: a */
        private final WeakReference<C1143l> f3685a;

        /* renamed from: b */
        private boolean f3686b;

        public RunnableC1150d(C1143l c1143l) {
            this.f3685a = new WeakReference<>(c1143l);
        }

        /* renamed from: a */
        public void m3975a() {
            C1143l c1143l;
            RecyclerView m4004f;
            if (this.f3686b || (c1143l = this.f3685a.get()) == null || (m4004f = c1143l.m4004f()) == null) {
                return;
            }
            C0552u.m6265a(m4004f, this);
            this.f3686b = true;
        }

        /* renamed from: b */
        public void m3974b() {
            if (!this.f3686b) {
                return;
            }
            this.f3686b = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1143l c1143l = this.f3685a.get();
            if (c1143l != null && this.f3686b) {
                c1143l.m4007e();
                RecyclerView m4004f = c1143l.m4004f();
                if (m4004f == null || !this.f3686b) {
                    this.f3686b = false;
                } else {
                    C0552u.m6265a(m4004f, this);
                }
            }
        }
    }

    /* renamed from: com.a.a.a.a.c.l$e */
    /* loaded from: classes-dex2jar.jar:com/a/a/a/a/c/l$e.class */
    public static class C1151e {

        /* renamed from: a */
        public RecyclerView.AbstractC0977w f3687a;

        /* renamed from: b */
        public int f3688b;

        /* renamed from: c */
        public boolean f3689c;

        C1151e() {
        }

        /* renamed from: a */
        public void m3973a() {
            this.f3687a = null;
            this.f3688b = -1;
            this.f3689c = false;
        }
    }

    /* renamed from: a */
    private static NestedScrollView m4055a(View view) {
        ViewParent parent = view.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (viewParent != null) {
                if (viewParent instanceof NestedScrollView) {
                    return (NestedScrollView) viewParent;
                }
                parent = viewParent.getParent();
            } else {
                return null;
            }
        }
    }

    /* renamed from: a */
    private static RecyclerView.AbstractC0977w m4036a(C1147a c1147a) {
        return C1155a.m3949a(c1147a.f3669a, c1147a.f3672d, c1147a.f3673e);
    }

    /* renamed from: a */
    private static RecyclerView.AbstractC0977w m4035a(C1147a c1147a, boolean z) {
        if (z) {
            return null;
        }
        RecyclerView.AbstractC0977w m4036a = m4036a(c1147a);
        RecyclerView.AbstractC0977w abstractC0977w = m4036a;
        if (m4036a == null) {
            abstractC0977w = m4024b(c1147a);
        }
        return abstractC0977w;
    }

    /* renamed from: a */
    private C1141j m4038a(C1101a c1101a, C1141j c1141j) {
        RecyclerView.AbstractC0945a adapter = this.f3643d.getAdapter();
        return new C1141j(C1157c.m3930a(c1101a, this.f3611D, adapter, c1141j.m4065a()), C1157c.m3930a(c1101a, this.f3611D, adapter, c1141j.m4063b()));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c5  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.p051a.p052a.p053a.p054a.p058c.C1143l.C1151e m4034a(com.p051a.p052a.p053a.p054a.p058c.C1143l.C1151e r6, com.p051a.p052a.p053a.p054a.p058c.C1143l.C1147a r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p051a.p052a.p053a.p054a.p058c.C1143l.m4034a(com.a.a.a.a.c.l$e, com.a.a.a.a.c.l$a, boolean):com.a.a.a.a.c.l$e");
    }

    /* renamed from: a */
    private static Integer m4053a(View view, boolean z) {
        Integer num;
        if (view != null) {
            num = Integer.valueOf(z ? view.getTop() : view.getLeft());
        } else {
            num = null;
        }
        return num;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0118, code lost:
        if (r0 < r0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0127, code lost:
        if (r0 > r0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x012a, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x01b2, code lost:
        if (r0 < r0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01c1, code lost:
        if (r0 > r0) goto L43;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m4046a(androidx.recyclerview.widget.RecyclerView r9, int r10, androidx.recyclerview.widget.RecyclerView.AbstractC0977w r11, androidx.recyclerview.widget.RecyclerView.AbstractC0977w r12) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p051a.p052a.p053a.p054a.p058c.C1143l.m4046a(androidx.recyclerview.widget.RecyclerView, int, androidx.recyclerview.widget.RecyclerView$w, androidx.recyclerview.widget.RecyclerView$w):void");
    }

    /* renamed from: a */
    private static void m4045a(RecyclerView recyclerView, int i, boolean z) {
        if (z) {
            recyclerView.scrollBy(0, i);
        } else {
            recyclerView.scrollBy(i, 0);
        }
    }

    /* renamed from: a */
    private void m4043a(RecyclerView recyclerView, MotionEvent motionEvent, RecyclerView.AbstractC0977w abstractC0977w, C1141j c1141j, C1101a c1101a, int i, Object obj) {
        m4026b(recyclerView, abstractC0977w);
        this.f3632Y.m3986a();
        this.f3612E = new C1140i(recyclerView, abstractC0977w, this.f3618K, this.f3619L);
        this.f3642c = abstractC0977w;
        this.f3630W = c1141j;
        this.f3631X = m4038a(c1101a, this.f3630W);
        NestedScrollView m4055a = m4055a((View) this.f3643d);
        if (m4055a == null || this.f3643d.isNestedScrollingEnabled()) {
            this.f3615H = null;
        } else {
            this.f3615H = m4055a;
        }
        this.f3629V = recyclerView.getOverScrollMode();
        recyclerView.setOverScrollMode(2);
        this.f3618K = (int) (motionEvent.getX() + 0.5f);
        this.f3619L = (int) (motionEvent.getY() + 0.5f);
        NestedScrollView nestedScrollView = this.f3615H;
        this.f3616I = nestedScrollView != null ? nestedScrollView.getScrollX() : 0;
        NestedScrollView nestedScrollView2 = this.f3615H;
        this.f3617J = nestedScrollView2 != null ? nestedScrollView2.getScrollY() : 0;
        int i2 = this.f3619L;
        this.f3625R = i2;
        this.f3623P = i2;
        this.f3621N = i2;
        int i3 = this.f3618K;
        this.f3624Q = i3;
        this.f3622O = i3;
        this.f3620M = i3;
        this.f3628U = 0;
        this.f3637ad = this.f3609B;
        this.f3638ae = obj;
        this.f3643d.getParent().requestDisallowInterceptTouchEvent(true);
        m3996l();
        this.f3611D.m4110a(this.f3612E, abstractC0977w, this.f3630W, i, this.f3637ad);
        this.f3611D.onBindViewHolder(abstractC0977w, i);
        this.f3613F = new C1138g(this.f3643d, abstractC0977w, this.f3631X);
        this.f3613F.m4091a(this.f3649j);
        this.f3613F.m4086a(this.f3610C);
        this.f3613F.m4085a(this.f3612E, this.f3618K, this.f3619L);
        int m3950a = C1155a.m3950a(this.f3643d);
        if (!this.f3660u && C1155a.m3947b(m3950a)) {
            this.f3614G = new C1152m(this.f3643d, abstractC0977w, this.f3612E);
            this.f3614G.m3965b(this.f3644e);
            this.f3614G.m3972a();
            this.f3614G.m3970a(this.f3613F.m4082b(), this.f3613F.m4095a());
        }
        AbstractC1133b abstractC1133b = this.f3648i;
        if (abstractC1133b != null) {
            abstractC1133b.m4119c();
        }
        this.f3611D.m4104d();
        AbstractC1149c abstractC1149c = this.f3633Z;
        if (abstractC1149c != null) {
            abstractC1149c.m3979a(this.f3611D.m4100f());
            this.f3633Z.m3976b(0, 0);
        }
    }

    /* renamed from: a */
    private void m4040a(RecyclerView recyclerView, RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0977w abstractC0977w2, Rect rect, int i, int i2) {
        int i3;
        int i4;
        AbstractC1149c abstractC1149c = this.f3633Z;
        if (abstractC1149c != null) {
            abstractC1149c.m3978a(i, i2);
        }
        RecyclerView.AbstractC0956i layoutManager = this.f3643d.getLayoutManager();
        int m3950a = C1155a.m3950a(this.f3643d);
        boolean z = true;
        if (C1155a.m3959a(m3950a) != 1) {
            z = false;
        }
        int m3948a = C1155a.m3948a(this.f3643d, false);
        View view = abstractC0977w != null ? abstractC0977w.itemView : null;
        View view2 = abstractC0977w2.itemView;
        View m3953a = C1155a.m3953a(layoutManager, m3948a);
        int layoutPosition = abstractC0977w != null ? abstractC0977w.getLayoutPosition() : -1;
        int layoutPosition2 = abstractC0977w2.getLayoutPosition();
        Integer m4053a = m4053a(view, z);
        Integer m4053a2 = m4053a(view2, z);
        Integer m4053a3 = m4053a(m3953a, z);
        this.f3611D.m4108b(i, i2, m3950a);
        if (m3948a == layoutPosition && m4053a3 != null && m4053a2 != null) {
            m4045a(recyclerView, -(m4053a2.intValue() - m4053a3.intValue()), z);
            m4017c(recyclerView);
        } else if (m3948a != layoutPosition2 || view == null || m4053a == null || m4053a.equals(m4053a2)) {
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            if (z) {
                i4 = layoutManager.getDecoratedMeasuredHeight(view) + marginLayoutParams.topMargin;
                i3 = marginLayoutParams.bottomMargin;
            } else {
                i4 = layoutManager.getDecoratedMeasuredWidth(view) + marginLayoutParams.leftMargin;
                i3 = marginLayoutParams.rightMargin;
            }
            m4045a(recyclerView, -(i4 + i3), z);
            m4017c(recyclerView);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00ea, code lost:
        if (((r7 ? 8 : 2) & r0) == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00ed, code lost:
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0112, code lost:
        if (((r7 ? 4 : 1) & r0) == 0) goto L17;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m4039a(androidx.recyclerview.widget.RecyclerView r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p051a.p052a.p053a.p054a.p058c.C1143l.m4039a(androidx.recyclerview.widget.RecyclerView, boolean):void");
    }

    /* renamed from: a */
    private void m4037a(C1141j c1141j, int i) {
        int max = Math.max(0, this.f3611D.getItemCount() - 1);
        if (c1141j.m4065a() > c1141j.m4063b()) {
            throw new IllegalStateException("Invalid wrappedAdapterRange specified --- start > wrappedAdapterRange (wrappedAdapterRange = " + c1141j + ")");
        } else if (c1141j.m4065a() < 0) {
            throw new IllegalStateException("Invalid wrappedAdapterRange specified --- start < 0 (wrappedAdapterRange = " + c1141j + ")");
        } else if (c1141j.m4063b() > max) {
            throw new IllegalStateException("Invalid wrappedAdapterRange specified --- end >= count (wrappedAdapterRange = " + c1141j + ")");
        } else if (c1141j.m4064a(i)) {
        } else {
            throw new IllegalStateException("Invalid wrappedAdapterRange specified --- does not contain drag target item (wrappedAdapterRange = " + c1141j + ", position = " + i + ")");
        }
    }

    /* renamed from: a */
    private boolean m4058a(int i, boolean z) {
        boolean z2 = true;
        if (i != 1) {
            z2 = false;
        }
        boolean m4032b = m4032b();
        HandlerC1148b handlerC1148b = this.f3632Y;
        if (handlerC1148b != null) {
            handlerC1148b.m3986a();
        }
        this.f3653n = 0;
        this.f3654o = 0;
        this.f3618K = 0;
        this.f3619L = 0;
        this.f3620M = 0;
        this.f3621N = 0;
        this.f3622O = 0;
        this.f3623P = 0;
        this.f3624Q = 0;
        this.f3625R = 0;
        this.f3626S = 0;
        this.f3627T = 0;
        this.f3655p = -1L;
        this.f3634aa = false;
        this.f3635ab = false;
        if (z && m4032b()) {
            m4001g(z2);
        }
        return m4032b;
    }

    /* renamed from: a */
    private static boolean m4054a(View view, View view2, Rect rect) {
        ViewParent parent;
        do {
            parent = view.getParent();
            if (!(parent instanceof ViewGroup)) {
                return false;
            }
            ((ViewGroup) parent).offsetDescendantRectToMyCoords(view, rect);
            view = (View) parent;
        } while (parent != view2);
        return true;
    }

    /* renamed from: a */
    private boolean m4050a(RecyclerView.AbstractC0977w abstractC0977w, int i, int i2) {
        int adapterPosition = abstractC0977w.getAdapterPosition();
        int m3934a = C1157c.m3934a(this.f3643d.getAdapter(), this.f3611D, (Object) null, adapterPosition);
        if (m3934a == -1) {
            return false;
        }
        View view = abstractC0977w.itemView;
        boolean z = false;
        if (this.f3611D.m4111a(abstractC0977w, m3934a, i - (view.getLeft() + ((int) (view.getTranslationX() + 0.5f))), i2 - (view.getTop() + ((int) (view.getTranslationY() + 0.5f))))) {
            z = false;
            if (abstractC0977w.getAdapterPosition() == adapterPosition) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a */
    private boolean m4042a(RecyclerView recyclerView, MotionEvent motionEvent, boolean z) {
        RecyclerView.AbstractC0977w m3949a;
        if (this.f3612E != null) {
            return false;
        }
        int x = (int) (motionEvent.getX() + 0.5f);
        int y = (int) (motionEvent.getY() + 0.5f);
        this.f3618K = x;
        this.f3619L = y;
        if (this.f3655p == -1) {
            return false;
        }
        if ((z && ((!this.f3634aa || Math.abs(x - this.f3653n) <= this.f3651l) && (!this.f3635ab || Math.abs(y - this.f3654o) <= this.f3651l))) || (m3949a = C1155a.m3949a(recyclerView, this.f3653n, this.f3654o)) == null || !m4050a(m3949a, x, y)) {
            return false;
        }
        RecyclerView.AbstractC0945a adapter = this.f3643d.getAdapter();
        C1101a c1101a = new C1101a();
        int m3933a = C1157c.m3933a(adapter, this.f3611D, null, m3949a.getAdapterPosition(), c1101a);
        C1141j m4101e = this.f3611D.m4101e(m3949a, m3933a);
        C1141j c1141j = m4101e;
        if (m4101e == null) {
            c1141j = new C1141j(0, Math.max(0, this.f3611D.getItemCount() - 1));
        }
        m4037a(c1141j, m3933a);
        m4043a(recyclerView, motionEvent, m3949a, c1141j, c1101a, m3933a, c1101a.m4261c().f3491b);
        return true;
    }

    /* renamed from: a */
    private boolean m4041a(RecyclerView recyclerView, RecyclerView.AbstractC0977w abstractC0977w) {
        if (!(abstractC0977w instanceof AbstractC1136e)) {
            return false;
        }
        int m4018c = m4018c(abstractC0977w);
        return m4018c >= 0 && m4018c < this.f3611D.getItemCount();
    }

    /* renamed from: b */
    private static RecyclerView.AbstractC0977w m4024b(C1147a c1147a) {
        float f;
        float f2;
        int m3940d = C1155a.m3940d(c1147a.f3669a);
        int height = c1147a.f3669a.getHeight();
        int width = c1147a.f3669a.getWidth();
        int paddingLeft = c1147a.f3679k ? c1147a.f3669a.getPaddingLeft() : 0;
        int paddingTop = !c1147a.f3679k ? c1147a.f3669a.getPaddingTop() : 0;
        int paddingRight = ((width - paddingLeft) - (c1147a.f3679k ? c1147a.f3669a.getPaddingRight() : 0)) / m3940d;
        int paddingBottom = ((height - paddingTop) - (!c1147a.f3679k ? c1147a.f3669a.getPaddingBottom() : 0)) / m3940d;
        int i = c1147a.f3672d;
        int i2 = c1147a.f3673e;
        int m4065a = c1147a.f3681m.m4065a();
        int m4063b = c1147a.f3681m.m4063b();
        if (c1147a.f3679k) {
            f2 = i - paddingLeft;
            f = paddingRight;
        } else {
            f2 = i2 - paddingTop;
            f = paddingBottom;
        }
        for (int min = Math.min(Math.max((int) (f2 / f), 0), m3940d - 1); min >= 0; min--) {
            RecyclerView.AbstractC0977w m3949a = C1155a.m3949a(c1147a.f3669a, c1147a.f3679k ? (paddingRight * min) + paddingLeft + (paddingRight / 2) : i, !c1147a.f3679k ? (paddingBottom * min) + paddingTop + (paddingBottom / 2) : i2);
            if (m3949a != null) {
                int adapterPosition = m3949a.getAdapterPosition();
                if (adapterPosition != -1 && adapterPosition >= m4065a && adapterPosition <= m4063b) {
                    return m3949a;
                }
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00f9, code lost:
        if (r16 == r20) goto L18;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.recyclerview.widget.RecyclerView.AbstractC0977w m4023b(com.p051a.p052a.p053a.p054a.p058c.C1143l.C1147a r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p051a.p052a.p053a.p054a.p058c.C1143l.m4023b(com.a.a.a.a.c.l$a, boolean):androidx.recyclerview.widget.RecyclerView$w");
    }

    /* renamed from: b */
    private static void m4026b(RecyclerView recyclerView, RecyclerView.AbstractC0977w abstractC0977w) {
        RecyclerView.AbstractC0950f itemAnimator = recyclerView != null ? recyclerView.getItemAnimator() : null;
        if (itemAnimator != null) {
            itemAnimator.mo4167d(abstractC0977w);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x0287, code lost:
        r9 = -r5.f3650k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x02a8, code lost:
        r9 = r5.f3650k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x02ae, code lost:
        r9 = r9 * 0.005f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x012b, code lost:
        if ((r0 & (r7 ? 8 : 2)) == 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x012e, code lost:
        r21 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0153, code lost:
        if ((r0 & (r7 ? 4 : 1)) == 0) goto L43;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m4025b(androidx.recyclerview.widget.RecyclerView r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 756
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p051a.p052a.p053a.p054a.p058c.C1143l.m4025b(androidx.recyclerview.widget.RecyclerView, boolean):void");
    }

    /* renamed from: c */
    private int m4019c(int i) {
        this.f3663x = 0;
        this.f3661v = true;
        this.f3643d.scrollBy(0, i);
        this.f3661v = false;
        return this.f3663x;
    }

    /* renamed from: c */
    private int m4018c(RecyclerView.AbstractC0977w abstractC0977w) {
        if (abstractC0977w == null) {
            return -1;
        }
        return C1157c.m3934a(this.f3643d.getAdapter(), this.f3611D, this.f3638ae, abstractC0977w.getAdapterPosition());
    }

    /* renamed from: c */
    private static RecyclerView.AbstractC0977w m4015c(C1147a c1147a, boolean z) {
        RecyclerView.AbstractC0977w abstractC0977w;
        RecyclerView.AbstractC0977w findViewHolderForAdapterPosition;
        if (c1147a.f3671c == null) {
            return null;
        }
        if (c1147a.f3682n || z) {
            float f = c1147a.f3671c.itemView.getResources().getDisplayMetrics().density * 8.0f;
            float min = Math.min(c1147a.f3670b.f3595a * 0.2f, f);
            float min2 = Math.min(c1147a.f3670b.f3596b * 0.2f, f);
            float f2 = c1147a.f3674f + (c1147a.f3670b.f3595a * 0.5f);
            float f3 = c1147a.f3675g + (c1147a.f3670b.f3596b * 0.5f);
            RecyclerView.AbstractC0977w m3949a = C1155a.m3949a(c1147a.f3669a, f2 - min, f3 - min2);
            abstractC0977w = null;
            if (m3949a == C1155a.m3949a(c1147a.f3669a, f2 + min, f3 + min2)) {
                abstractC0977w = m3949a;
            }
        } else {
            int adapterPosition = c1147a.f3671c.getAdapterPosition();
            int top = c1147a.f3679k ? c1147a.f3671c.itemView.getTop() : c1147a.f3671c.itemView.getLeft();
            int i = c1147a.f3679k ? c1147a.f3675g : c1147a.f3674f;
            if (i < top) {
                abstractC0977w = null;
                if (adapterPosition > 0) {
                    findViewHolderForAdapterPosition = c1147a.f3669a.findViewHolderForAdapterPosition(adapterPosition - 1);
                    abstractC0977w = findViewHolderForAdapterPosition;
                }
            } else {
                abstractC0977w = null;
                if (i > top) {
                    abstractC0977w = null;
                    if (adapterPosition < c1147a.f3669a.getAdapter().getItemCount() - 1) {
                        findViewHolderForAdapterPosition = c1147a.f3669a.findViewHolderForAdapterPosition(adapterPosition + 1);
                        abstractC0977w = findViewHolderForAdapterPosition;
                    }
                }
            }
        }
        return abstractC0977w;
    }

    /* renamed from: c */
    private static void m4017c(RecyclerView recyclerView) {
        RecyclerView.AbstractC0950f itemAnimator = recyclerView != null ? recyclerView.getItemAnimator() : null;
        if (itemAnimator != null) {
            itemAnimator.mo4168d();
        }
    }

    /* renamed from: c */
    private boolean m4016c(RecyclerView recyclerView, MotionEvent motionEvent) {
        boolean z;
        RecyclerView.AbstractC0977w m3949a = C1155a.m3949a(recyclerView, motionEvent.getX(), motionEvent.getY());
        if (!m4041a(recyclerView, m3949a)) {
            return false;
        }
        int x = (int) (motionEvent.getX() + 0.5f);
        int y = (int) (motionEvent.getY() + 0.5f);
        if (!m4050a(m3949a, x, y)) {
            return false;
        }
        int m3939e = C1155a.m3939e(this.f3643d);
        int m3940d = C1155a.m3940d(this.f3643d);
        this.f3618K = x;
        this.f3653n = x;
        this.f3619L = y;
        this.f3654o = y;
        this.f3655p = m3949a.getItemId();
        this.f3634aa = m3939e == 0 || (m3939e == 1 && m3940d > 1);
        boolean z2 = true;
        if (m3939e != 1) {
            z2 = m3939e == 0 && m3940d > 1;
        }
        this.f3635ab = z2;
        if (this.f3657r) {
            z = m4042a(recyclerView, motionEvent, false);
        } else {
            z = false;
            if (this.f3656q) {
                this.f3632Y.m3985a(motionEvent, this.f3659t);
                z = false;
            }
        }
        return z;
    }

    /* renamed from: d */
    private int m4011d(int i) {
        this.f3662w = 0;
        this.f3661v = true;
        this.f3643d.scrollBy(i, 0);
        this.f3661v = false;
        return this.f3662w;
    }

    /* renamed from: d */
    private void m4012d(float f) {
        if (f == FlexItem.FLEX_GROW_DEFAULT) {
            this.f3648i.m4122b();
        } else if (f < FlexItem.FLEX_GROW_DEFAULT) {
            this.f3648i.m4126a(f);
        } else {
            this.f3648i.m4121b(f);
        }
    }

    /* renamed from: d */
    private void m4010d(RecyclerView recyclerView) {
        if (this.f3614G != null) {
            m4017c(recyclerView);
        }
    }

    /* renamed from: d */
    private boolean m4009d(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f3658s) {
            return m4042a(recyclerView, motionEvent, true);
        }
        return false;
    }

    /* renamed from: e */
    private void m4006e(RecyclerView recyclerView, MotionEvent motionEvent) {
        this.f3618K = (int) (motionEvent.getX() + 0.5f);
        this.f3619L = (int) (motionEvent.getY() + 0.5f);
        NestedScrollView nestedScrollView = this.f3615H;
        this.f3616I = nestedScrollView != null ? nestedScrollView.getScrollX() : 0;
        NestedScrollView nestedScrollView2 = this.f3615H;
        this.f3617J = nestedScrollView2 != null ? nestedScrollView2.getScrollY() : 0;
        this.f3622O = Math.min(this.f3622O, this.f3618K);
        this.f3623P = Math.min(this.f3623P, this.f3619L);
        this.f3624Q = Math.max(this.f3624Q, this.f3618K);
        this.f3625R = Math.max(this.f3625R, this.f3619L);
        m4000h();
        if (this.f3613F.m4092a(m3999i(), m3998j(), false)) {
            C1152m c1152m = this.f3614G;
            if (c1152m != null) {
                c1152m.m3970a(this.f3613F.m4082b(), this.f3613F.m4095a());
            }
            m4028b(recyclerView);
            m3997k();
        }
    }

    /* renamed from: g */
    private void m4001g(boolean z) {
        int i;
        if (!m4032b()) {
            return;
        }
        HandlerC1148b handlerC1148b = this.f3632Y;
        if (handlerC1148b != null) {
            handlerC1148b.m3984b();
            this.f3632Y.m3980f();
        }
        RecyclerView recyclerView = this.f3643d;
        if (recyclerView != null && this.f3642c != null) {
            recyclerView.setOverScrollMode(this.f3629V);
        }
        C1138g c1138g = this.f3613F;
        if (c1138g != null) {
            c1138g.m4133a(this.f3665z);
            this.f3613F.m4129a(this.f3608A);
            this.f3613F.m4083a(true);
        }
        C1152m c1152m = this.f3614G;
        if (c1152m != null) {
            c1152m.m4133a(this.f3665z);
            this.f3613F.m4129a(this.f3608A);
            this.f3614G.m3966a(true);
        }
        AbstractC1133b abstractC1133b = this.f3648i;
        if (abstractC1133b != null) {
            abstractC1133b.m4122b();
        }
        m3995m();
        RecyclerView recyclerView2 = this.f3643d;
        if (recyclerView2 != null && recyclerView2.getParent() != null) {
            this.f3643d.getParent().requestDisallowInterceptTouchEvent(false);
        }
        RecyclerView recyclerView3 = this.f3643d;
        if (recyclerView3 != null) {
            recyclerView3.invalidate();
        }
        this.f3630W = null;
        this.f3631X = null;
        this.f3613F = null;
        this.f3614G = null;
        this.f3642c = null;
        this.f3612E = null;
        this.f3638ae = null;
        this.f3615H = null;
        this.f3618K = 0;
        this.f3619L = 0;
        this.f3616I = 0;
        this.f3617J = 0;
        this.f3620M = 0;
        this.f3621N = 0;
        this.f3622O = 0;
        this.f3623P = 0;
        this.f3624Q = 0;
        this.f3625R = 0;
        this.f3626S = 0;
        this.f3627T = 0;
        this.f3634aa = false;
        this.f3635ab = false;
        C1137f c1137f = this.f3611D;
        int i2 = -1;
        if (c1137f != null) {
            i2 = c1137f.m4100f();
            i = this.f3611D.m4098g();
            this.f3611D.m4112a(i2, i, z);
        } else {
            i = -1;
        }
        AbstractC1149c abstractC1149c = this.f3633Z;
        if (abstractC1149c == null) {
            return;
        }
        abstractC1149c.m3977a(i2, i, z);
    }

    /* renamed from: h */
    private void m4000h() {
        int m3939e = C1155a.m3939e(this.f3643d);
        if (m3939e == 0) {
            int m3999i = m3999i();
            int i = this.f3620M;
            int i2 = this.f3622O;
            int i3 = this.f3652m;
            if (i - i2 > i3 || this.f3624Q - m3999i > i3) {
                this.f3628U |= 4;
            }
            int i4 = this.f3624Q;
            int i5 = this.f3620M;
            int i6 = this.f3652m;
            if (i4 - i5 <= i6 && m3999i - this.f3622O <= i6) {
                return;
            }
            this.f3628U |= 8;
        } else if (m3939e != 1) {
        } else {
            int m3998j = m3998j();
            int i7 = this.f3621N;
            int i8 = this.f3623P;
            int i9 = this.f3652m;
            if (i7 - i8 > i9 || this.f3625R - m3998j > i9) {
                this.f3628U = 1 | this.f3628U;
            }
            int i10 = this.f3625R;
            int i11 = this.f3621N;
            int i12 = this.f3652m;
            if (i10 - i11 <= i12 && m3998j - this.f3623P <= i12) {
                return;
            }
            this.f3628U |= 2;
        }
    }

    /* renamed from: i */
    private int m3999i() {
        int i = this.f3618K;
        NestedScrollView nestedScrollView = this.f3615H;
        int i2 = i;
        if (nestedScrollView != null) {
            i2 = i + (nestedScrollView.getScrollX() - this.f3616I);
        }
        return i2;
    }

    /* renamed from: j */
    private int m3998j() {
        int i = this.f3619L;
        NestedScrollView nestedScrollView = this.f3615H;
        int i2 = i;
        if (nestedScrollView != null) {
            i2 = i + (nestedScrollView.getScrollY() - this.f3617J);
        }
        return i2;
    }

    /* renamed from: k */
    private void m3997k() {
        if (this.f3633Z == null) {
            return;
        }
        this.f3633Z.m3976b(this.f3626S + this.f3613F.m4077d(), this.f3627T + this.f3613F.m4079c());
    }

    /* renamed from: l */
    private void m3996l() {
        this.f3645f.m3975a();
    }

    /* renamed from: m */
    private void m3995m() {
        RunnableC1150d runnableC1150d = this.f3645f;
        if (runnableC1150d != null) {
            runnableC1150d.m3974b();
        }
    }

    /* renamed from: n */
    private static boolean m3994n() {
        return Build.VERSION.SDK_INT >= 14;
    }

    /* renamed from: o */
    private void m3993o() {
        Log.i("ARVDragDropManager", "a view holder object which is bound to currently dragging item is recycled");
        this.f3642c = null;
        this.f3613F.m4068m();
    }

    /* renamed from: a */
    public RecyclerView.AbstractC0945a m4052a(RecyclerView.AbstractC0945a abstractC0945a) {
        if (abstractC0945a.hasStableIds()) {
            if (this.f3611D != null) {
                throw new IllegalStateException("already have a wrapped adapter");
            }
            this.f3611D = new C1137f(this, abstractC0945a);
            return this.f3611D;
        }
        throw new IllegalArgumentException("The passed adapter does not support stable IDs");
    }

    /* renamed from: a */
    public void m4060a(float f) {
        this.f3610C.f3589b = f;
    }

    /* renamed from: a */
    public void m4059a(int i) {
        this.f3659t = i;
    }

    /* renamed from: a */
    public void m4057a(NinePatchDrawable ninePatchDrawable) {
        this.f3649j = ninePatchDrawable;
    }

    /* renamed from: a */
    void m4056a(MotionEvent motionEvent) {
        if (this.f3656q) {
            m4042a(this.f3643d, motionEvent, false);
        }
    }

    /* renamed from: a */
    public void m4051a(RecyclerView.AbstractC0977w abstractC0977w) {
        if (abstractC0977w == this.f3642c) {
            m3993o();
            return;
        }
        C1152m c1152m = this.f3614G;
        if (c1152m == null) {
            return;
        }
        c1152m.m3964b(abstractC0977w);
    }

    /* renamed from: a */
    public void m4049a(RecyclerView recyclerView) {
        if (!m4061a()) {
            if (this.f3643d != null) {
                throw new IllegalStateException("RecyclerView instance has already been set");
            }
            this.f3643d = recyclerView;
            this.f3643d.addOnScrollListener(this.f3647h);
            this.f3643d.addOnItemTouchListener(this.f3646g);
            this.f3650k = this.f3643d.getResources().getDisplayMetrics().density;
            this.f3651l = ViewConfiguration.get(this.f3643d.getContext()).getScaledTouchSlop();
            this.f3652m = (int) ((this.f3651l * 1.5f) + 0.5f);
            this.f3632Y = new HandlerC1148b(this);
            if (!m3994n()) {
                return;
            }
            int m3939e = C1155a.m3939e(this.f3643d);
            if (m3939e == 0) {
                this.f3648i = new C1142k(this.f3643d);
            } else if (m3939e == 1) {
                this.f3648i = new C1154n(this.f3643d);
            }
            AbstractC1133b abstractC1133b = this.f3648i;
            if (abstractC1133b == null) {
                return;
            }
            abstractC1133b.m4127a();
            return;
        }
        throw new IllegalStateException("Accessing released object");
    }

    /* renamed from: a */
    void m4048a(RecyclerView recyclerView, int i) {
        if (i == 1) {
            m4003f(true);
        }
    }

    /* renamed from: a */
    void m4047a(RecyclerView recyclerView, int i, int i2) {
        if (this.f3661v) {
            this.f3662w = i;
            this.f3663x = i2;
        } else if (!m4032b()) {
        } else {
            C0552u.m6264a(this.f3643d, this.f3641ah, 500L);
        }
    }

    /* renamed from: a */
    public void m4033a(boolean z) {
        this.f3656q = z;
    }

    /* renamed from: a */
    public boolean m4061a() {
        return this.f3646g == null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0034, code lost:
        if (m4009d(r5, r6) != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
        if (r0 != 3) goto L19;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean m4044a(androidx.recyclerview.widget.RecyclerView r5, android.view.MotionEvent r6) {
        /*
            r4 = this;
            r0 = r6
            int r0 = r0.getActionMasked()
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L45
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L3a
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L1e
            r0 = r7
            r1 = 3
            if (r0 == r1) goto L3a
            goto L57
        L1e:
            r0 = r4
            boolean r0 = r0.m4032b()
            if (r0 == 0) goto L2e
            r0 = r4
            r1 = r5
            r2 = r6
            r0.m4006e(r1, r2)
            goto L5a
        L2e:
            r0 = r4
            r1 = r5
            r2 = r6
            boolean r0 = r0.m4009d(r1, r2)
            if (r0 == 0) goto L57
            goto L5a
        L3a:
            r0 = r4
            r1 = r7
            r2 = 1
            boolean r0 = r0.m4058a(r1, r2)
            r8 = r0
            goto L5a
        L45:
            r0 = r4
            boolean r0 = r0.m4032b()
            if (r0 != 0) goto L57
            r0 = r4
            r1 = r5
            r2 = r6
            boolean r0 = r0.m4016c(r1, r2)
            r8 = r0
            goto L5a
        L57:
            r0 = 0
            r8 = r0
        L5a:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p051a.p052a.p053a.p054a.p058c.C1143l.m4044a(androidx.recyclerview.widget.RecyclerView, android.view.MotionEvent):boolean");
    }

    /* renamed from: b */
    public void m4031b(float f) {
        this.f3610C.f3590c = f;
    }

    /* renamed from: b */
    public void m4030b(int i) {
        this.f3610C.f3588a = i;
    }

    /* renamed from: b */
    public void m4029b(RecyclerView.AbstractC0977w abstractC0977w) {
        if (this.f3642c != null) {
            m3993o();
        }
        this.f3642c = abstractC0977w;
        this.f3613F.m4088a(abstractC0977w);
    }

    /* renamed from: b */
    void m4028b(RecyclerView recyclerView) {
        RecyclerView.AbstractC0977w abstractC0977w = this.f3642c;
        C1147a c1147a = this.f3640ag;
        c1147a.m3987a(recyclerView, abstractC0977w, this.f3612E, m3999i(), m3998j(), this.f3630W, this.f3631X, this.f3660u);
        int m4100f = this.f3611D.m4100f();
        int m4098g = this.f3611D.m4098g();
        boolean z = false;
        C1151e m4034a = m4034a(this.f3639af, c1147a, false);
        C1151e c1151e = m4034a;
        if (m4034a.f3688b != -1) {
            boolean z2 = !this.f3660u;
            boolean z3 = z2;
            if (!z2) {
                z3 = this.f3611D.m4103d(m4100f, m4034a.f3688b);
            }
            c1151e = m4034a;
            z = z3;
            if (!z3) {
                C1151e m4034a2 = m4034a(this.f3639af, c1147a, true);
                c1151e = m4034a2;
                z = z3;
                if (m4034a2.f3688b != -1) {
                    z = this.f3611D.m4103d(m4100f, m4034a2.f3688b);
                    c1151e = m4034a2;
                }
            }
        }
        if (!z || c1151e.f3687a != null) {
            if (z) {
                m4046a(recyclerView, m4098g, abstractC0977w, c1151e.f3687a);
            }
            C1152m c1152m = this.f3614G;
            if (c1152m != null) {
                c1152m.m3969a(z ? c1151e.f3687a : null);
            }
            if (z) {
                this.f3632Y.m3981e();
            }
            c1151e.m3973a();
            c1147a.m3988a();
            return;
        }
        throw new IllegalStateException("bug check");
    }

    /* renamed from: b */
    void m4027b(RecyclerView recyclerView, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (!m4032b()) {
            return;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                m4006e(recyclerView, motionEvent);
                return;
            } else if (actionMasked != 3) {
                return;
            }
        }
        m4058a(actionMasked, true);
    }

    /* renamed from: b */
    public void m4022b(boolean z) {
        this.f3658s = z;
    }

    /* renamed from: b */
    public boolean m4032b() {
        return this.f3612E != null && !this.f3632Y.m3982d();
    }

    /* renamed from: c */
    void m4021c() {
        RecyclerView.AbstractC0977w findViewHolderForItemId = this.f3643d.findViewHolderForItemId(this.f3612E.f3597c);
        if (findViewHolderForItemId == null) {
            return;
        }
        int width = findViewHolderForItemId.itemView.getWidth();
        int height = findViewHolderForItemId.itemView.getHeight();
        if (width == this.f3612E.f3595a && height == this.f3612E.f3596b) {
            return;
        }
        this.f3612E = C1140i.m4066a(this.f3612E, findViewHolderForItemId);
        this.f3613F.m4084a(this.f3612E, findViewHolderForItemId);
    }

    /* renamed from: c */
    public void m4020c(float f) {
        this.f3610C.f3591d = f;
    }

    /* renamed from: c */
    public void m4014c(boolean z) {
        this.f3657r = z;
    }

    /* renamed from: d */
    public void m4013d() {
        m4003f(false);
    }

    /* renamed from: d */
    public void m4008d(boolean z) {
        this.f3660u = z;
    }

    /* renamed from: e */
    void m4007e() {
        RecyclerView recyclerView = this.f3643d;
        int m3939e = C1155a.m3939e(recyclerView);
        boolean z = true;
        if (m3939e != 0) {
            if (m3939e != 1) {
                return;
            }
            z = false;
        }
        if (this.f3615H != null) {
            m4039a(recyclerView, z);
        } else {
            m4025b(recyclerView, z);
        }
    }

    /* renamed from: e */
    void m4005e(boolean z) {
        if (z) {
            m4003f(true);
        }
    }

    /* renamed from: f */
    RecyclerView m4004f() {
        return this.f3643d;
    }

    /* renamed from: f */
    void m4003f(boolean z) {
        m4058a(3, false);
        if (z) {
            m4001g(false);
        } else if (!m4032b()) {
        } else {
            this.f3632Y.m3983c();
        }
    }

    /* renamed from: g */
    public RecyclerView.AbstractC0977w m4002g() {
        return this.f3642c;
    }
}
