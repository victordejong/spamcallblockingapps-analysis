package kotlin.reflect.jvm.internal.impl.resolve.e;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.n;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/g.class */
public final class g extends kotlin.reflect.jvm.internal.impl.resolve.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final i<h> f38292a;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/g$a.class */
    static final class a extends r implements Function0<h> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<h> f38293a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(Function0<? extends h> function0) {
            super(0);
            this.f38293a = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ h invoke() {
            h invoke = this.f38293a.invoke();
            h hVar = invoke;
            if (invoke instanceof kotlin.reflect.jvm.internal.impl.resolve.e.a) {
                hVar = ((kotlin.reflect.jvm.internal.impl.resolve.e.a) invoke).b();
            }
            return hVar;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public g(Function0<? extends h> getScope) {
        this(null, getScope, 1, null);
        p.d(getScope, "getScope");
    }

    public g(n storageManager, Function0<? extends h> getScope) {
        p.d(storageManager, "storageManager");
        p.d(getScope, "getScope");
        this.f38292a = storageManager.a(new a(getScope));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ g(kotlin.reflect.jvm.internal.impl.f.n r5, kotlin.jvm.functions.Function0 r6, int r7, kotlin.jvm.internal.DefaultConstructorMarker r8) {
        /*
            r4 = this;
            r0 = r7
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0010
            kotlin.reflect.jvm.internal.impl.f.n r0 = kotlin.reflect.jvm.internal.impl.f.f.f37640a
            r5 = r0
            r0 = r5
            java.lang.String r1 = "NO_LOCKS"
            kotlin.jvm.internal.p.b(r0, r1)
        L_0x0010:
            r0 = r4
            r1 = r5
            r2 = r6
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.e.g.<init>(kotlin.reflect.jvm.internal.impl.f.n, kotlin.jvm.functions.Function0, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.a
    protected final h a() {
        return this.f38292a.invoke();
    }
}
