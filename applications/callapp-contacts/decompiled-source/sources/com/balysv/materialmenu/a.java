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
/* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/a.class */
public final class a extends Drawable implements Animatable {
    private c A;
    private Property<a, Float> B;

    /* renamed from: a  reason: collision with root package name */
    public final Object f7176a;

    /* renamed from: b  reason: collision with root package name */
    final Paint f7177b;

    /* renamed from: c  reason: collision with root package name */
    final Paint f7178c;

    /* renamed from: d  reason: collision with root package name */
    float f7179d;
    public boolean e;
    public b f;
    public b g;
    boolean h;
    public ObjectAnimator i;
    Animator.AnimatorListener j;
    private final float k;
    private final float l;
    private final float m;
    private final float n;
    private final float o;
    private final float p;
    private final int q;
    private final int r;
    private final float s;
    private final float t;
    private final float u;
    private final float v;
    private final float w;
    private final d x;
    private EnumC0135a y;
    private boolean z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.balysv.materialmenu.a$3  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/a$3.class */
    public static final /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7182a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f7183b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f7184c;

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
            int[] iArr = new int[b.values().length];
            f7184c = iArr;
            try {
                iArr[b.BURGER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f7184c[b.ARROW.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f7184c[b.X.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f7184c[b.CHECK.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[d.values().length];
            f7183b = iArr2;
            try {
                iArr2[d.REGULAR.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f7183b[d.THIN.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f7183b[d.EXTRA_THIN.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr3 = new int[EnumC0135a.values().length];
            f7182a = iArr3;
            try {
                iArr3[EnumC0135a.BURGER_ARROW.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f7182a[EnumC0135a.BURGER_X.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f7182a[EnumC0135a.ARROW_X.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f7182a[EnumC0135a.ARROW_CHECK.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f7182a[EnumC0135a.BURGER_CHECK.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f7182a[EnumC0135a.X_CHECK.ordinal()] = 6;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    /* renamed from: com.balysv.materialmenu.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/a$a.class */
    public enum EnumC0135a {
        BURGER_ARROW,
        BURGER_X,
        ARROW_X,
        ARROW_CHECK,
        BURGER_CHECK,
        X_CHECK;

        public final b getFirstState() {
            switch (AnonymousClass3.f7182a[ordinal()]) {
                case 1:
                    return b.BURGER;
                case 2:
                    return b.BURGER;
                case 3:
                    return b.ARROW;
                case 4:
                    return b.ARROW;
                case 5:
                    return b.BURGER;
                case 6:
                    return b.X;
                default:
                    return null;
            }
        }

        public final b getSecondState() {
            switch (AnonymousClass3.f7182a[ordinal()]) {
                case 1:
                    return b.ARROW;
                case 2:
                    return b.X;
                case 3:
                    return b.X;
                case 4:
                    return b.CHECK;
                case 5:
                    return b.CHECK;
                case 6:
                    return b.CHECK;
                default:
                    return null;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/a$b.class */
    public enum b {
        BURGER,
        ARROW,
        X,
        CHECK
    }

    /* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/a$c.class */
    final class c extends Drawable.ConstantState {

        /* renamed from: b  reason: collision with root package name */
        private int f7186b;

        private c() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f7186b;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            a aVar = new a(a.this.f7178c.getColor(), a.this.x, a.this.i.getDuration(), a.this.q, a.this.r, a.this.t, a.this.w, a.this.s, a.this.l);
            aVar.a(a.this.g != null ? a.this.g : a.this.f);
            aVar.a(a.this.h);
            aVar.b(a.this.z);
            return aVar;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/a$d.class */
    public enum d {
        REGULAR(3),
        THIN(2),
        EXTRA_THIN(1);
        
        private final int strokeWidth;

        d(int i) {
            this.strokeWidth = i;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static d valueOf(int i) {
            if (i == 1) {
                return EXTRA_THIN;
            }
            if (i != 2 && i == 3) {
                return REGULAR;
            }
            return THIN;
        }
    }

    private a(int i, d dVar, long j, int i2, int i3, float f, float f2, float f3, float f4) {
        this.f7176a = new Object();
        this.f7177b = new Paint();
        this.f7178c = new Paint();
        this.f7179d = BitmapDescriptorFactory.HUE_RED;
        this.e = false;
        this.f = b.BURGER;
        this.y = EnumC0135a.BURGER_ARROW;
        this.B = new Property<a, Float>(Float.class, "transformation") { // from class: com.balysv.materialmenu.a.1
            @Override // android.util.Property
            public final /* synthetic */ Float get(a aVar) {
                return Float.valueOf(aVar.f7179d);
            }

            @Override // android.util.Property
            public final /* synthetic */ void set(a aVar, Float f5) {
                a aVar2 = aVar;
                aVar2.f7179d = f5.floatValue();
                aVar2.invalidateSelf();
            }
        };
        this.l = f4;
        this.m = f4 * 2.0f;
        float f5 = 3.0f * f4;
        this.n = f5;
        this.o = 4.0f * f4;
        this.p = 8.0f * f4;
        this.k = f4 / 2.0f;
        this.x = dVar;
        this.q = i2;
        this.r = i3;
        this.t = f;
        this.w = f2;
        this.s = f3;
        this.v = (i2 - f) / 2.0f;
        this.u = (i3 - (f5 * 5.0f)) / 2.0f;
        a(i);
        b((int) j);
        this.A = new c();
    }

    public a(Context context, int i, d dVar) {
        this(context, i, dVar, 1, 800);
    }

    public a(Context context, int i, d dVar, int i2) {
        this(context, i, dVar, 1, i2);
    }

    public a(Context context, int i, d dVar, int i2, int i3) {
        this.f7176a = new Object();
        this.f7177b = new Paint();
        this.f7178c = new Paint();
        this.f7179d = BitmapDescriptorFactory.HUE_RED;
        this.e = false;
        this.f = b.BURGER;
        this.y = EnumC0135a.BURGER_ARROW;
        this.B = new Property<a, Float>(Float.class, "transformation") { // from class: com.balysv.materialmenu.a.1
            @Override // android.util.Property
            public final /* synthetic */ Float get(a aVar) {
                return Float.valueOf(aVar.f7179d);
            }

            @Override // android.util.Property
            public final /* synthetic */ void set(a aVar, Float f5) {
                a aVar2 = aVar;
                aVar2.f7179d = f5.floatValue();
                aVar2.invalidateSelf();
            }
        };
        Resources resources = context.getResources();
        float a2 = a(resources, 1.0f);
        float f = i2;
        float f2 = a2 * f;
        this.l = f2;
        this.m = a(resources, 2.0f) * f;
        float a3 = a(resources, 3.0f) * f;
        this.n = a3;
        this.o = a(resources, 4.0f) * f;
        this.p = a(resources, 8.0f) * f;
        this.k = f2 / 2.0f;
        this.x = dVar;
        this.h = true;
        int a4 = (int) (a(resources, 40.0f) * f);
        this.q = a4;
        int a5 = (int) (a(resources, 40.0f) * f);
        this.r = a5;
        float a6 = a(resources, 20.0f) * f;
        this.t = a6;
        this.w = a(resources, 18.0f) * f;
        this.s = a(resources, dVar.strokeWidth) * f;
        this.v = (a4 - a6) / 2.0f;
        this.u = (a5 - (a3 * 5.0f)) / 2.0f;
        a(i);
        b(i3);
        this.A = new c();
    }

    private float a(float f) {
        float f2;
        int i = AnonymousClass3.f7183b[this.x.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return BitmapDescriptorFactory.HUE_RED;
                }
                if (this.y == EnumC0135a.ARROW_X || this.y == EnumC0135a.X_CHECK) {
                    return this.o - ((this.n + this.l) * f);
                }
                f2 = this.o;
            } else if (this.y == EnumC0135a.ARROW_X || this.y == EnumC0135a.X_CHECK) {
                float f3 = this.n;
                float f4 = this.k;
                return (f3 + f4) - ((f3 + f4) * f);
            } else {
                f2 = this.n + this.k;
            }
        } else if (this.y == EnumC0135a.ARROW_X || this.y == EnumC0135a.X_CHECK) {
            float f5 = this.n;
            return f5 - (f * f5);
        } else {
            f2 = this.n;
        }
        return f * f2;
    }

    private static float a(Resources resources, float f) {
        return TypedValue.applyDimension(1, f, resources.getDisplayMetrics());
    }

    private void a(int i) {
        this.f7177b.setAntiAlias(true);
        this.f7177b.setStyle(Paint.Style.STROKE);
        this.f7177b.setStrokeWidth(this.s);
        this.f7177b.setColor(i);
        this.f7178c.setAntiAlias(true);
        this.f7178c.setStyle(Paint.Style.FILL);
        this.f7178c.setColor(i);
        this.f7178c.setAlpha(200);
        setBounds(0, 0, this.q, this.r);
    }

    private boolean a() {
        return this.f7179d <= 1.0f;
    }

    private void b(int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, this.B, BitmapDescriptorFactory.HUE_RED);
        this.i = ofFloat;
        ofFloat.setInterpolator(new DecelerateInterpolator(3.0f));
        this.i.setDuration(i);
        this.i.addListener(new AnimatorListenerAdapter() { // from class: com.balysv.materialmenu.a.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                a.this.e = false;
                a aVar = a.this;
                aVar.a(aVar.g);
            }
        });
    }

    public final void a(b bVar) {
        synchronized (this.f7176a) {
            if (this.e) {
                this.i.cancel();
                this.e = false;
            }
            if (this.f != bVar) {
                int i = AnonymousClass3.f7184c[bVar.ordinal()];
                if (i == 1) {
                    this.y = EnumC0135a.BURGER_ARROW;
                    this.f7179d = BitmapDescriptorFactory.HUE_RED;
                } else if (i == 2) {
                    this.y = EnumC0135a.BURGER_ARROW;
                    this.f7179d = 1.0f;
                } else if (i == 3) {
                    this.y = EnumC0135a.BURGER_X;
                    this.f7179d = 1.0f;
                } else if (i == 4) {
                    this.y = EnumC0135a.BURGER_CHECK;
                    this.f7179d = 1.0f;
                }
                this.f = bVar;
                invalidateSelf();
            }
        }
    }

    public final void a(boolean z) {
        this.h = z;
        invalidateSelf();
    }

    public final void b(boolean z) {
        this.z = z;
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
        throw new UnsupportedOperationException("Method not decompiled: com.balysv.materialmenu.a.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        this.A.f7186b = getChangingConfigurations();
        return this.A;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.r;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.q;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.e;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.A = new c();
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f7177b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f7177b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        b bVar;
        if (!this.e) {
            b bVar2 = this.g;
            if (!(bVar2 == null || bVar2 == (bVar = this.f))) {
                this.e = true;
                boolean z = bVar == b.BURGER;
                boolean z2 = this.f == b.ARROW;
                boolean z3 = this.f == b.X;
                boolean z4 = this.f == b.CHECK;
                boolean z5 = this.g == b.BURGER;
                boolean z6 = this.g == b.ARROW;
                boolean z7 = this.g == b.X;
                boolean z8 = this.g == b.CHECK;
                if ((!z || !z6) && (!z2 || !z5)) {
                    if ((z2 && z7) || (z3 && z6)) {
                        this.y = EnumC0135a.ARROW_X;
                    } else if ((z && z7) || (z3 && z5)) {
                        this.y = EnumC0135a.BURGER_X;
                    } else if ((z2 && z8) || (z4 && z6)) {
                        this.y = EnumC0135a.ARROW_CHECK;
                    } else if ((z && z8) || (z4 && z5)) {
                        this.y = EnumC0135a.BURGER_CHECK;
                    } else if ((!z3 || !z8) && (!z4 || !z7)) {
                        throw new IllegalStateException(String.format("Animating from %s to %s is not supported", this.f, this.g));
                    } else {
                        this.y = EnumC0135a.X_CHECK;
                        z = z3;
                    }
                    z = z2;
                } else {
                    this.y = EnumC0135a.BURGER_ARROW;
                }
                ObjectAnimator objectAnimator = this.i;
                float f = 1.0f;
                float f2 = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                if (!z) {
                    f = 2.0f;
                }
                objectAnimator.setFloatValues(f2, f);
                this.i.start();
            }
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        if (!isRunning() || !this.i.isRunning()) {
            this.e = false;
            invalidateSelf();
            return;
        }
        this.i.end();
    }
}
