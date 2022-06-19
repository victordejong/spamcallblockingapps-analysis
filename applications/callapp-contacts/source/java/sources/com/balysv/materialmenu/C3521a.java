package com.balysv.materialmenu;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.util.TypedValue;
import android.view.animation.DecelerateInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.balysv.materialmenu.a */
/* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/a.class */
public final class C3521a extends Drawable implements Animatable {

    /* renamed from: A */
    private C3527c f13392A;

    /* renamed from: B */
    private Property<C3521a, Float> f13393B;

    /* renamed from: a */
    public final Object f13394a;

    /* renamed from: b */
    final Paint f13395b;

    /* renamed from: c */
    final Paint f13396c;

    /* renamed from: d */
    float f13397d;

    /* renamed from: e */
    public boolean f13398e;

    /* renamed from: f */
    public EnumC3526b f13399f;

    /* renamed from: g */
    public EnumC3526b f13400g;

    /* renamed from: h */
    boolean f13401h;

    /* renamed from: i */
    public ObjectAnimator f13402i;

    /* renamed from: j */
    Animator.AnimatorListener f13403j;

    /* renamed from: k */
    private final float f13404k;

    /* renamed from: l */
    private final float f13405l;

    /* renamed from: m */
    private final float f13406m;

    /* renamed from: n */
    private final float f13407n;

    /* renamed from: o */
    private final float f13408o;

    /* renamed from: p */
    private final float f13409p;

    /* renamed from: q */
    private final int f13410q;

    /* renamed from: r */
    private final int f13411r;

    /* renamed from: s */
    private final float f13412s;

    /* renamed from: t */
    private final float f13413t;

    /* renamed from: u */
    private final float f13414u;

    /* renamed from: v */
    private final float f13415v;

    /* renamed from: w */
    private final float f13416w;

    /* renamed from: x */
    private final EnumC3528d f13417x;

    /* renamed from: y */
    private EnumC3525a f13418y;

    /* renamed from: z */
    private boolean f13419z;

    /* renamed from: com.balysv.materialmenu.a$3 */
    /* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/a$3.class */
    public static final /* synthetic */ class C35243 {

        /* renamed from: a */
        static final /* synthetic */ int[] f13422a;

        /* renamed from: b */
        static final /* synthetic */ int[] f13423b;

        /* renamed from: c */
        static final /* synthetic */ int[] f13424c;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ac -> B:56:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00b0 -> B:52:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b4 -> B:64:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b8 -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bc -> B:68:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c0 -> B:66:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c4 -> B:17:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c8 -> B:44:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00cc -> B:54:0x007e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d0 -> B:50:0x0089). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d4 -> B:62:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00d8 -> B:58:0x009f). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC3526b.values().length];
            f13424c = iArr;
            try {
                iArr[EnumC3526b.BURGER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13424c[EnumC3526b.ARROW.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13424c[EnumC3526b.X.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13424c[EnumC3526b.CHECK.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[EnumC3528d.values().length];
            f13423b = iArr2;
            try {
                iArr2[EnumC3528d.REGULAR.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f13423b[EnumC3528d.THIN.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f13423b[EnumC3528d.EXTRA_THIN.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr3 = new int[EnumC3525a.values().length];
            f13422a = iArr3;
            try {
                iArr3[EnumC3525a.BURGER_ARROW.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f13422a[EnumC3525a.BURGER_X.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f13422a[EnumC3525a.ARROW_X.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f13422a[EnumC3525a.ARROW_CHECK.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f13422a[EnumC3525a.BURGER_CHECK.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f13422a[EnumC3525a.X_CHECK.ordinal()] = 6;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    /* renamed from: com.balysv.materialmenu.a$a */
    /* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/a$a.class */
    public enum EnumC3525a {
        BURGER_ARROW,
        BURGER_X,
        ARROW_X,
        ARROW_CHECK,
        BURGER_CHECK,
        X_CHECK;

        public final EnumC3526b getFirstState() {
            switch (C35243.f13422a[ordinal()]) {
                case 1:
                    return EnumC3526b.BURGER;
                case 2:
                    return EnumC3526b.BURGER;
                case 3:
                    return EnumC3526b.ARROW;
                case 4:
                    return EnumC3526b.ARROW;
                case 5:
                    return EnumC3526b.BURGER;
                case 6:
                    return EnumC3526b.X;
                default:
                    return null;
            }
        }

        public final EnumC3526b getSecondState() {
            switch (C35243.f13422a[ordinal()]) {
                case 1:
                    return EnumC3526b.ARROW;
                case 2:
                    return EnumC3526b.X;
                case 3:
                    return EnumC3526b.X;
                case 4:
                    return EnumC3526b.CHECK;
                case 5:
                    return EnumC3526b.CHECK;
                case 6:
                    return EnumC3526b.CHECK;
                default:
                    return null;
            }
        }
    }

    /* renamed from: com.balysv.materialmenu.a$b */
    /* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/a$b.class */
    public enum EnumC3526b {
        BURGER,
        ARROW,
        X,
        CHECK
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.balysv.materialmenu.a$c */
    /* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/a$c.class */
    public final class C3527c extends Drawable.ConstantState {

        /* renamed from: b */
        private int f13427b;

        private C3527c() {
            C3521a.this = r4;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f13427b;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            C3521a c3521a = new C3521a(C3521a.this.f13396c.getColor(), C3521a.this.f13417x, C3521a.this.f13402i.getDuration(), C3521a.this.f13410q, C3521a.this.f13411r, C3521a.this.f13413t, C3521a.this.f13416w, C3521a.this.f13412s, C3521a.this.f13405l);
            c3521a.m37821a(C3521a.this.f13400g != null ? C3521a.this.f13400g : C3521a.this.f13399f);
            c3521a.m37819a(C3521a.this.f13401h);
            c3521a.m37816b(C3521a.this.f13419z);
            return c3521a;
        }
    }

    /* renamed from: com.balysv.materialmenu.a$d */
    /* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/a$d.class */
    public enum EnumC3528d {
        REGULAR(3),
        THIN(2),
        EXTRA_THIN(1);
        
        private final int strokeWidth;

        EnumC3528d(int i) {
            this.strokeWidth = i;
        }

        public static EnumC3528d valueOf(int i) {
            if (i != 1) {
                if (i != 2 && i == 3) {
                    return REGULAR;
                }
                return THIN;
            }
            return EXTRA_THIN;
        }
    }

    private C3521a(int i, EnumC3528d enumC3528d, long j, int i2, int i3, float f, float f2, float f3, float f4) {
        this.f13394a = new Object();
        this.f13395b = new Paint();
        this.f13396c = new Paint();
        this.f13397d = BitmapDescriptorFactory.HUE_RED;
        this.f13398e = false;
        this.f13399f = EnumC3526b.BURGER;
        this.f13418y = EnumC3525a.BURGER_ARROW;
        this.f13393B = new Property<C3521a, Float>(Float.class, "transformation") { // from class: com.balysv.materialmenu.a.1
            @Override // android.util.Property
            public final /* synthetic */ Float get(C3521a c3521a) {
                return Float.valueOf(c3521a.f13397d);
            }

            @Override // android.util.Property
            public final /* synthetic */ void set(C3521a c3521a, Float f5) {
                C3521a c3521a2 = c3521a;
                c3521a2.f13397d = f5.floatValue();
                c3521a2.invalidateSelf();
            }
        };
        this.f13405l = f4;
        this.f13406m = f4 * 2.0f;
        float f5 = 3.0f * f4;
        this.f13407n = f5;
        this.f13408o = 4.0f * f4;
        this.f13409p = 8.0f * f4;
        this.f13404k = f4 / 2.0f;
        this.f13417x = enumC3528d;
        this.f13410q = i2;
        this.f13411r = i3;
        this.f13413t = f;
        this.f13416w = f2;
        this.f13412s = f3;
        this.f13415v = (i2 - f) / 2.0f;
        this.f13414u = (i3 - (f5 * 5.0f)) / 2.0f;
        m37823a(i);
        m37818b((int) j);
        this.f13392A = new C3527c();
    }

    public C3521a(Context context, int i, EnumC3528d enumC3528d) {
        this(context, i, enumC3528d, 1, 800);
    }

    public C3521a(Context context, int i, EnumC3528d enumC3528d, int i2) {
        this(context, i, enumC3528d, 1, i2);
    }

    public C3521a(Context context, int i, EnumC3528d enumC3528d, int i2, int i3) {
        this.f13394a = new Object();
        this.f13395b = new Paint();
        this.f13396c = new Paint();
        this.f13397d = BitmapDescriptorFactory.HUE_RED;
        this.f13398e = false;
        this.f13399f = EnumC3526b.BURGER;
        this.f13418y = EnumC3525a.BURGER_ARROW;
        this.f13393B = new Property<C3521a, Float>(Float.class, "transformation") { // from class: com.balysv.materialmenu.a.1
            @Override // android.util.Property
            public final /* synthetic */ Float get(C3521a c3521a) {
                return Float.valueOf(c3521a.f13397d);
            }

            @Override // android.util.Property
            public final /* synthetic */ void set(C3521a c3521a, Float f5) {
                C3521a c3521a2 = c3521a;
                c3521a2.f13397d = f5.floatValue();
                c3521a2.invalidateSelf();
            }
        };
        Resources resources = context.getResources();
        float m37822a = m37822a(resources, 1.0f);
        float f = i2;
        float f2 = m37822a * f;
        this.f13405l = f2;
        this.f13406m = m37822a(resources, 2.0f) * f;
        float m37822a2 = m37822a(resources, 3.0f) * f;
        this.f13407n = m37822a2;
        this.f13408o = m37822a(resources, 4.0f) * f;
        this.f13409p = m37822a(resources, 8.0f) * f;
        this.f13404k = f2 / 2.0f;
        this.f13417x = enumC3528d;
        this.f13401h = true;
        int m37822a3 = (int) (m37822a(resources, 40.0f) * f);
        this.f13410q = m37822a3;
        int m37822a4 = (int) (m37822a(resources, 40.0f) * f);
        this.f13411r = m37822a4;
        float m37822a5 = m37822a(resources, 20.0f) * f;
        this.f13413t = m37822a5;
        this.f13416w = m37822a(resources, 18.0f) * f;
        this.f13412s = m37822a(resources, enumC3528d.strokeWidth) * f;
        this.f13415v = (m37822a3 - m37822a5) / 2.0f;
        this.f13414u = (m37822a4 - (m37822a2 * 5.0f)) / 2.0f;
        m37823a(i);
        m37818b(i3);
        this.f13392A = new C3527c();
    }

    /* renamed from: a */
    private float m37824a(float f) {
        float f2;
        int i = C35243.f13423b[this.f13417x.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return BitmapDescriptorFactory.HUE_RED;
                }
                if (this.f13418y == EnumC3525a.ARROW_X || this.f13418y == EnumC3525a.X_CHECK) {
                    return this.f13408o - ((this.f13407n + this.f13405l) * f);
                }
                f2 = this.f13408o;
            } else if (this.f13418y == EnumC3525a.ARROW_X || this.f13418y == EnumC3525a.X_CHECK) {
                float f3 = this.f13407n;
                float f4 = this.f13404k;
                return (f3 + f4) - ((f3 + f4) * f);
            } else {
                f2 = this.f13407n + this.f13404k;
            }
        } else if (this.f13418y == EnumC3525a.ARROW_X || this.f13418y == EnumC3525a.X_CHECK) {
            float f5 = this.f13407n;
            return f5 - (f * f5);
        } else {
            f2 = this.f13407n;
        }
        return f * f2;
    }

    /* renamed from: a */
    private static float m37822a(Resources resources, float f) {
        return TypedValue.applyDimension(1, f, resources.getDisplayMetrics());
    }

    /* renamed from: a */
    private void m37823a(int i) {
        this.f13395b.setAntiAlias(true);
        this.f13395b.setStyle(Paint.Style.STROKE);
        this.f13395b.setStrokeWidth(this.f13412s);
        this.f13395b.setColor(i);
        this.f13396c.setAntiAlias(true);
        this.f13396c.setStyle(Paint.Style.FILL);
        this.f13396c.setColor(i);
        this.f13396c.setAlpha(200);
        setBounds(0, 0, this.f13410q, this.f13411r);
    }

    /* renamed from: a */
    private boolean m37825a() {
        return this.f13397d <= 1.0f;
    }

    /* renamed from: b */
    private void m37818b(int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, this.f13393B, BitmapDescriptorFactory.HUE_RED);
        this.f13402i = ofFloat;
        ofFloat.setInterpolator(new DecelerateInterpolator(3.0f));
        this.f13402i.setDuration(i);
        this.f13402i.addListener(new AnimatorListenerAdapter() { // from class: com.balysv.materialmenu.a.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                C3521a.this.f13398e = false;
                C3521a c3521a = C3521a.this;
                c3521a.m37821a(c3521a.f13400g);
            }
        });
    }

    /* renamed from: a */
    public final void m37821a(EnumC3526b enumC3526b) {
        synchronized (this.f13394a) {
            if (this.f13398e) {
                this.f13402i.cancel();
                this.f13398e = false;
            }
            if (this.f13399f == enumC3526b) {
                return;
            }
            int i = C35243.f13424c[enumC3526b.ordinal()];
            if (i == 1) {
                this.f13418y = EnumC3525a.BURGER_ARROW;
                this.f13397d = BitmapDescriptorFactory.HUE_RED;
            } else if (i == 2) {
                this.f13418y = EnumC3525a.BURGER_ARROW;
                this.f13397d = 1.0f;
            } else if (i == 3) {
                this.f13418y = EnumC3525a.BURGER_X;
                this.f13397d = 1.0f;
            } else if (i == 4) {
                this.f13418y = EnumC3525a.BURGER_CHECK;
                this.f13397d = 1.0f;
            }
            this.f13399f = enumC3526b;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public final void m37819a(boolean z) {
        this.f13401h = z;
        invalidateSelf();
    }

    /* renamed from: b */
    public final void m37816b(boolean z) {
        this.f13419z = z;
        invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0444  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0467  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0564  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0577  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x060f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0654  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x06b2  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0720  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0773  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x080c  */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(android.graphics.Canvas r9) {
        /*
            Method dump skipped, instructions count: 2065
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.balysv.materialmenu.C3521a.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        this.f13392A.f13427b = getChangingConfigurations();
        return this.f13392A;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f13411r;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f13410q;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f13398e;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.f13392A = new C3527c();
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f13395b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f13395b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        EnumC3526b enumC3526b;
        if (this.f13398e) {
            return;
        }
        EnumC3526b enumC3526b2 = this.f13400g;
        if (enumC3526b2 != null && enumC3526b2 != (enumC3526b = this.f13399f)) {
            this.f13398e = true;
            boolean z = enumC3526b == EnumC3526b.BURGER;
            boolean z2 = this.f13399f == EnumC3526b.ARROW;
            boolean z3 = this.f13399f == EnumC3526b.X;
            boolean z4 = this.f13399f == EnumC3526b.CHECK;
            boolean z5 = this.f13400g == EnumC3526b.BURGER;
            boolean z6 = this.f13400g == EnumC3526b.ARROW;
            boolean z7 = this.f13400g == EnumC3526b.X;
            boolean z8 = this.f13400g == EnumC3526b.CHECK;
            if ((!z || !z6) && (!z2 || !z5)) {
                if ((z2 && z7) || (z3 && z6)) {
                    this.f13418y = EnumC3525a.ARROW_X;
                } else if ((z && z7) || (z3 && z5)) {
                    this.f13418y = EnumC3525a.BURGER_X;
                } else if ((z2 && z8) || (z4 && z6)) {
                    this.f13418y = EnumC3525a.ARROW_CHECK;
                } else if ((z && z8) || (z4 && z5)) {
                    this.f13418y = EnumC3525a.BURGER_CHECK;
                } else if ((!z3 || !z8) && (!z4 || !z7)) {
                    throw new IllegalStateException(String.format("Animating from %s to %s is not supported", this.f13399f, this.f13400g));
                } else {
                    this.f13418y = EnumC3525a.X_CHECK;
                    z = z3;
                }
                z = z2;
            } else {
                this.f13418y = EnumC3525a.BURGER_ARROW;
            }
            ObjectAnimator objectAnimator = this.f13402i;
            float f = 1.0f;
            float f2 = z ? 0.0f : 1.0f;
            if (!z) {
                f = 2.0f;
            }
            objectAnimator.setFloatValues(f2, f);
            this.f13402i.start();
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        if (isRunning() && this.f13402i.isRunning()) {
            this.f13402i.end();
            return;
        }
        this.f13398e = false;
        invalidateSelf();
    }
}
