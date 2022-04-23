package kotlin.reflect.jvm.internal.impl.b.c.a;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/f.class */
public final class f extends kotlin.reflect.jvm.internal.impl.b.b.a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37220a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public static final f f37221b = new f(1, 4, 2);

    /* renamed from: c  reason: collision with root package name */
    public static final f f37222c = new f(new int[0]);
    private final boolean h;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/f$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public f(int... numbers) {
        this(numbers, false);
        p.d(numbers, "numbers");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f(int[] r7, boolean r8) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "versionArray"
            kotlin.jvm.internal.p.d(r0, r1)
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
            r0.h = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.c.a.f.<init>(int[], boolean):void");
    }

    public final boolean a() {
        boolean z;
        if (this.e == 1 && this.f == 0) {
            return false;
        }
        if (this.h) {
            z = a(f37221b);
        } else {
            int i = this.e;
            f fVar = f37221b;
            z = i == fVar.e && this.f <= fVar.f + 1;
        }
        return z;
    }
}
