package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.appcompat.view.menu.AbstractC0219p;
/* renamed from: androidx.appcompat.widget.ab */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ab.class */
public abstract class AbstractView$OnAttachStateChangeListenerC0282ab implements View.OnAttachStateChangeListener, View.OnTouchListener {

    /* renamed from: a */
    private final float f1200a;

    /* renamed from: c */
    final View f1202c;

    /* renamed from: e */
    private Runnable f1204e;

    /* renamed from: f */
    private Runnable f1205f;

    /* renamed from: g */
    private boolean f1206g;

    /* renamed from: h */
    private int f1207h;

    /* renamed from: i */
    private final int[] f1208i = new int[2];

    /* renamed from: b */
    private final int f1201b = ViewConfiguration.getTapTimeout();

    /* renamed from: d */
    private final int f1203d = (this.f1201b + ViewConfiguration.getLongPressTimeout()) / 2;

    /* renamed from: androidx.appcompat.widget.ab$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ab$a.class */
    public class RunnableC0283a implements Runnable {
        RunnableC0283a() {
            AbstractView$OnAttachStateChangeListenerC0282ab.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = AbstractView$OnAttachStateChangeListenerC0282ab.this.f1202c.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ab$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ab$b.class */
    public class RunnableC0284b implements Runnable {
        RunnableC0284b() {
            AbstractView$OnAttachStateChangeListenerC0282ab.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnAttachStateChangeListenerC0282ab.this.m21555d();
        }
    }

    public AbstractView$OnAttachStateChangeListenerC0282ab(View view) {
        this.f1202c = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1200a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
    }

    /* renamed from: a */
    private boolean m21560a(MotionEvent motionEvent) {
        boolean z;
        View view = this.f1202c;
        if (view.isEnabled()) {
            switch (motionEvent.getActionMasked()) {
                case 0:
                    this.f1207h = motionEvent.getPointerId(0);
                    if (this.f1204e == null) {
                        this.f1204e = new RunnableC0283a();
                    }
                    view.postDelayed(this.f1204e, this.f1201b);
                    if (this.f1205f == null) {
                        this.f1205f = new RunnableC0284b();
                    }
                    view.postDelayed(this.f1205f, this.f1203d);
                    z = false;
                    break;
                case 1:
                case 3:
                    m21554e();
                    z = false;
                    break;
                case 2:
                    int findPointerIndex = motionEvent.findPointerIndex(this.f1207h);
                    z = false;
                    if (findPointerIndex >= 0) {
                        z = false;
                        if (!m21559a(view, motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex), this.f1200a)) {
                            m21554e();
                            view.getParent().requestDisallowInterceptTouchEvent(true);
                            z = true;
                            break;
                        }
                    }
                    break;
                default:
                    z = false;
                    break;
            }
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    private static boolean m21559a(View view, float f, float f2, float f3) {
        return f >= (-f3) && f2 >= (-f3) && f < ((float) (view.getRight() - view.getLeft())) + f3 && f2 < ((float) (view.getBottom() - view.getTop())) + f3;
    }

    /* renamed from: a */
    private boolean m21558a(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1208i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    /* renamed from: b */
    private boolean m21557b(MotionEvent motionEvent) {
        View view = this.f1202c;
        AbstractC0219p mo21358a = mo21358a();
        boolean z = false;
        if (mo21358a != null) {
            if (!mo21358a.mo21536e()) {
                z = false;
            } else {
                C0370z c0370z = (C0370z) mo21358a.mo21532g();
                z = false;
                if (c0370z != null) {
                    z = false;
                    if (c0370z.isShown()) {
                        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                        m21556b(view, obtainNoHistory);
                        m21558a(c0370z, obtainNoHistory);
                        boolean mo21159a = c0370z.mo21159a(obtainNoHistory, this.f1207h);
                        obtainNoHistory.recycle();
                        int actionMasked = motionEvent.getActionMasked();
                        z = mo21159a && (actionMasked != 1 && actionMasked != 3);
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private boolean m21556b(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1208i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    /* renamed from: e */
    private void m21554e() {
        if (this.f1205f != null) {
            this.f1202c.removeCallbacks(this.f1205f);
        }
        if (this.f1204e != null) {
            this.f1202c.removeCallbacks(this.f1204e);
        }
    }

    /* renamed from: a */
    public abstract AbstractC0219p mo21358a();

    /* renamed from: b */
    protected boolean mo21357b() {
        AbstractC0219p mo21358a = mo21358a();
        if (mo21358a == null || mo21358a.mo21536e()) {
            return true;
        }
        mo21358a.mo21545a_();
        return true;
    }

    /* renamed from: c */
    protected boolean mo21356c() {
        AbstractC0219p mo21358a = mo21358a();
        if (mo21358a == null || !mo21358a.mo21536e()) {
            return true;
        }
        mo21358a.mo21538d();
        return true;
    }

    /* renamed from: d */
    void m21555d() {
        m21554e();
        View view = this.f1202c;
        if (!view.isEnabled() || view.isLongClickable() || !mo21357b()) {
            return;
        }
        view.getParent().requestDisallowInterceptTouchEvent(true);
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        view.onTouchEvent(obtain);
        obtain.recycle();
        this.f1206g = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
        if (r0 != false) goto L13;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r10, android.view.MotionEvent r11) {
        /*
            r9 = this;
            r0 = 0
            r12 = r0
            r0 = r9
            boolean r0 = r0.f1206g
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L3e
            r0 = r9
            r1 = r11
            boolean r0 = r0.m21557b(r1)
            if (r0 != 0) goto L1c
            r0 = r9
            boolean r0 = r0.mo21356c()
            if (r0 != 0) goto L38
        L1c:
            r0 = 1
            r14 = r0
        L1f:
            r0 = r9
            r1 = r14
            r0.f1206g = r1
            r0 = r14
            if (r0 != 0) goto L32
            r0 = r12
            r14 = r0
            r0 = r13
            if (r0 == 0) goto L35
        L32:
            r0 = 1
            r14 = r0
        L35:
            r0 = r14
            return r0
        L38:
            r0 = 0
            r14 = r0
            goto L1f
        L3e:
            r0 = r9
            r1 = r11
            boolean r0 = r0.m21560a(r1)
            if (r0 == 0) goto L76
            r0 = r9
            boolean r0 = r0.mo21357b()
            if (r0 == 0) goto L76
            r0 = 1
            r14 = r0
        L50:
            r0 = r14
            if (r0 == 0) goto L73
            long r0 = android.os.SystemClock.uptimeMillis()
            r15 = r0
            r0 = r15
            r1 = r15
            r2 = 3
            r3 = 0
            r4 = 0
            r5 = 0
            android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r0, r1, r2, r3, r4, r5)
            r10 = r0
            r0 = r9
            android.view.View r0 = r0.f1202c
            r1 = r10
            boolean r0 = r0.onTouchEvent(r1)
            r0 = r10
            r0.recycle()
        L73:
            goto L1f
        L76:
            r0 = 0
            r14 = r0
            goto L50
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0282ab.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f1206g = false;
        this.f1207h = -1;
        if (this.f1204e != null) {
            this.f1202c.removeCallbacks(this.f1204e);
        }
    }
}
