package kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18806a;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/f.class */
public final class C18854f extends AbstractC18806a {

    /* renamed from: a */
    public static final C18855a f64427a = new C18855a(null);

    /* renamed from: b */
    public static final C18854f f64428b = new C18854f(1, 4, 2);

    /* renamed from: c */
    public static final C18854f f64429c = new C18854f(new int[0]);

    /* renamed from: h */
    private final boolean f64430h;

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/f$a.class */
    public static final class C18855a {
        private C18855a() {
        }

        public /* synthetic */ C18855a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C18854f(int... numbers) {
        this(numbers, false);
        C18524p.m3840d(numbers, "numbers");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C18854f(int[] r7, boolean r8) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "versionArray"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r7
            int r0 = r0.length
            int[] r0 = new int[r0]
            r9 = r0
            r0 = r7
            r1 = 0
            r2 = r9
            r3 = 0
            r4 = r7
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r6
            r1 = r9
            r0.<init>(r1)
            r0 = r6
            r1 = r8
            r0.f64430h = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18854f.<init>(int[], boolean):void");
    }

    /* renamed from: a */
    public final boolean m2928a() {
        boolean z;
        if (this.f64263e == 1 && this.f64264f == 0) {
            return false;
        }
        if (this.f64430h) {
            z = m3070a(f64428b);
        } else {
            int i = this.f64263e;
            C18854f c18854f = f64428b;
            z = i == c18854f.f64263e && this.f64264f <= c18854f.f64264f + 1;
        }
        return z;
    }
}
