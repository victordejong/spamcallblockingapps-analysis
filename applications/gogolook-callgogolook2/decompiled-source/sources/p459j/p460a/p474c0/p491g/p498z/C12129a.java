package p459j.p460a.p474c0.p491g.p498z;

import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.PopupWindow;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12204q0;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: j.a.c0.g.z.a */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/z/a.class */
public class C12129a extends Animation {

    /* renamed from: a */
    public final View f27246a;

    /* renamed from: b */
    public final Rect f27247b;

    /* renamed from: c */
    public Rect f27248c;

    /* renamed from: h */
    public PopupWindow f27253h;

    /* renamed from: i */
    public View f27254i;

    /* renamed from: j */
    public final View f27255j;

    /* renamed from: k */
    public Runnable f27256k;

    /* renamed from: l */
    public Runnable f27257l;

    /* renamed from: m */
    public final StringBuilder f27258m = new StringBuilder();

    /* renamed from: n */
    public final Runnable f27259n = new RunnableC12131b();

    /* renamed from: d */
    public final Rect f27249d = new Rect();

    /* renamed from: e */
    public final Rect f27250e = new Rect();

    /* renamed from: f */
    public final Rect f27251f = new Rect();

    /* renamed from: g */
    public final TypeEvaluator<Rect> f27252g = C12135b.m7047a();

    /* renamed from: j.a.c0.g.z.a$a  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/z/a$a.class */
    public class animationAnimation$AnimationListenerC12130a implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC12130a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (C12129a.this.f27257l != null) {
                C12129a.this.f27257l.run();
            }
            C12129a.this.m7057e();
            C12129a.this.f27258m.append("oAE,");
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            if (C12129a.this.f27256k != null) {
                C12129a.this.f27256k.run();
            }
            C12129a.this.f27258m.append("oAS,");
        }
    }

    /* renamed from: j.a.c0.g.z.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/z/a$b.class */
    public class RunnableC12131b implements Runnable {
        public RunnableC12131b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C12153d0.m6981e("MessagingApp", "PopupTransitionAnimation: " + ((Object) C12129a.this.f27258m));
        }
    }

    /* renamed from: j.a.c0.g.z.a$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/z/a$c.class */
    public class RunnableC12132c implements Runnable {

        /* renamed from: a */
        public boolean f27262a = false;

        /* renamed from: b */
        public boolean f27263b = true;

        public RunnableC12132c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f27262a) {
                C12129a.this.f27246a.getGlobalVisibleRect(C12129a.this.f27249d);
                if (C12129a.this.f27249d.width() > 1 && C12129a.this.f27249d.height() > 1) {
                    this.f27262a = true;
                    C12129a.this.f27246a.startAnimation(C12129a.this);
                    C12129a.this.f27246a.invalidate();
                    C12204q0.m6814a().postDelayed(C12129a.this.f27259n, C12129a.this.getDuration() * 2);
                } else if (!this.f27263b) {
                    C12129a.this.f27246a.setAlpha(1.0f);
                    C12129a.this.f27246a.setVisibility(0);
                } else {
                    this.f27263b = false;
                    C12212s0.m6790a(C12129a.this.f27246a, this);
                }
            }
        }
    }

    /* renamed from: j.a.c0.g.z.a$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/z/a$d.class */
    public class RunnableC12133d implements Runnable {
        public RunnableC12133d() {
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:6:0x0018 -> B:3:0x000a). Please submit an issue!!! */
        @Override // java.lang.Runnable
        public void run() {
            try {
                C12129a.this.f27253h.dismiss();
            } catch (IllegalArgumentException e) {
            }
            C12204q0.m6814a().removeCallbacks(C12129a.this.f27259n);
        }
    }

    /* renamed from: j.a.c0.g.z.a$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/z/a$e.class */
    public class C12134e extends View {
        public C12134e(Context context) {
            super(context);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            canvas.save();
            canvas.clipRect(getLeft(), C12129a.this.f27251f.bottom - C12129a.this.f27250e.top, getRight(), getBottom());
            canvas.drawColor(0);
            float alpha = C12129a.this.f27246a.getAlpha();
            C12129a.this.f27246a.setAlpha(1.0f);
            canvas.translate(C12129a.this.f27248c.left, C12129a.this.f27248c.top - C12129a.this.f27250e.top);
            float width = C12129a.this.f27246a.getWidth();
            float height = C12129a.this.f27246a.getHeight();
            if (width > 0.0f && height > 0.0f) {
                canvas.scale(C12129a.this.f27248c.width() / width, C12129a.this.f27248c.height() / height);
            }
            canvas.clipRect(0, 0, C12129a.this.f27248c.width(), C12129a.this.f27248c.height());
            if (!C12129a.this.f27250e.isEmpty()) {
                C12129a.this.f27246a.draw(canvas);
            }
            C12129a.this.f27246a.setAlpha(alpha);
            canvas.restore();
        }
    }

    public C12129a(Rect rect, View view) {
        this.f27246a = view;
        this.f27247b = rect;
        this.f27248c = new Rect(this.f27247b);
        this.f27255j = view.getRootView().findViewById(2131361836);
        setDuration(C12212s0.f27369a);
        setInterpolator(C12212s0.f27372d);
        setAnimationListener(new animationAnimation$AnimationListenerC12130a());
    }

    /* renamed from: a */
    public static boolean m7063a(View view, Rect rect) {
        rect.set(C12212s0.m6792a(view));
        return !rect.isEmpty();
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        if (this.f27253h == null) {
            m7055f();
        }
        this.f27250e.set(C12212s0.m6792a(this.f27254i));
        this.f27251f.set(C12212s0.m6792a(this.f27255j));
        m7059d();
        this.f27248c = this.f27252g.evaluate(f, this.f27247b, this.f27249d);
        this.f27254i.invalidate();
        if (f >= 0.98d) {
            StringBuilder sb = this.f27258m;
            sb.append("aT");
            sb.append(f);
            sb.append(',');
        }
        if (f == 1.0f) {
            m7057e();
        }
    }

    /* renamed from: d */
    public final void m7059d() {
        Rect rect = this.f27249d;
        int i = rect.top;
        int i2 = rect.left;
        int i3 = rect.right;
        int i4 = rect.bottom;
        if (!m7063a(this.f27246a, rect)) {
            Rect rect2 = this.f27249d;
            rect2.top = i;
            rect2.left = i2;
            rect2.bottom = i4;
            rect2.right = i3;
        }
    }

    /* renamed from: e */
    public final void m7057e() {
        this.f27258m.append("d,");
        this.f27246a.setAlpha(1.0f);
        this.f27246a.setVisibility(0);
        C12204q0.m6814a().post(new RunnableC12133d());
    }

    /* renamed from: f */
    public final void m7055f() {
        this.f27254i = new C12134e(this.f27246a.getContext());
        this.f27253h = new PopupWindow(this.f27246a.getContext());
        this.f27253h.setBackgroundDrawable(null);
        this.f27253h.setContentView(this.f27254i);
        this.f27253h.setWidth(-1);
        this.f27253h.setHeight(-1);
        this.f27253h.setTouchable(false);
        this.f27253h.showAtLocation(this.f27246a, 48, 0, 1);
    }

    /* renamed from: g */
    public void m7053g() {
        this.f27246a.setVisibility(4);
        this.f27246a.setAlpha(0.0f);
        new RunnableC12132c().run();
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return false;
    }
}
