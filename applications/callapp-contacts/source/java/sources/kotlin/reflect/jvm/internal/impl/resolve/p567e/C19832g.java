package kotlin.reflect.jvm.internal.impl.resolve.p567e;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/g.class */
public final class C19832g extends AbstractC19811a {

    /* renamed from: a */
    private final AbstractC19296i<AbstractC19834h> f66029a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.g$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/g$a.class */
    public static final class C19833a extends AbstractC18526r implements Function0<AbstractC19834h> {

        /* renamed from: a */
        final /* synthetic */ Function0<AbstractC19834h> f66030a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C19833a(Function0<? extends AbstractC19834h> function0) {
            super(0);
            this.f66030a = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC19834h invoke() {
            AbstractC19834h invoke = this.f66030a.invoke();
            AbstractC19834h abstractC19834h = invoke;
            if (invoke instanceof AbstractC19811a) {
                abstractC19834h = ((AbstractC19811a) invoke).m1441b();
            }
            return abstractC19834h;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C19832g(Function0<? extends AbstractC19834h> getScope) {
        this(null, getScope, 1, null);
        C18524p.m3840d(getScope, "getScope");
    }

    public C19832g(AbstractC19302n storageManager, Function0<? extends AbstractC19834h> getScope) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(getScope, "getScope");
        this.f66029a = storageManager.mo2313a(new C19833a(getScope));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C19832g(kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n r5, kotlin.jvm.functions.Function0 r6, int r7, kotlin.jvm.internal.DefaultConstructorMarker r8) {
        /*
            r4 = this;
            r0 = r7
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L10
            kotlin.reflect.jvm.internal.impl.f.n r0 = kotlin.reflect.jvm.internal.impl.p554f.C19276f.f65120a
            r5 = r0
            r0 = r5
            java.lang.String r1 = "NO_LOCKS"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
        L10:
            r0 = r4
            r1 = r5
            r2 = r6
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.p567e.C19832g.<init>(kotlin.reflect.jvm.internal.impl.f.n, kotlin.jvm.functions.Function0, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19811a
    /* renamed from: a */
    protected final AbstractC19834h mo1404a() {
        return this.f66029a.invoke();
    }
}
