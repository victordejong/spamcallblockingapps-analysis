package kotlin.reflect.jvm.internal.impl.p555g;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b;
/* renamed from: kotlin.reflect.jvm.internal.impl.g.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/f.class */
public abstract class AbstractC19317f implements AbstractC19305b {

    /* renamed from: a */
    private final String f65166a;

    /* renamed from: kotlin.reflect.jvm.internal.impl.g.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/f$a.class */
    public static final class C19318a extends AbstractC19317f {

        /* renamed from: a */
        public static final C19318a f65167a = new C19318a();

        private C19318a() {
            super("must be a member function", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
        /* renamed from: a */
        public final boolean mo2292a(AbstractC19219w functionDescriptor) {
            C18524p.m3840d(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getDispatchReceiverParameter() != null;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.g.f$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/f$b.class */
    public static final class C19319b extends AbstractC19317f {

        /* renamed from: a */
        public static final C19319b f65168a = new C19319b();

        private C19319b() {
            super("must be a member or an extension function", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
        /* renamed from: a */
        public final boolean mo2292a(AbstractC19219w functionDescriptor) {
            C18524p.m3840d(functionDescriptor, "functionDescriptor");
            return (functionDescriptor.getDispatchReceiverParameter() == null && functionDescriptor.getExtensionReceiverParameter() == null) ? false : true;
        }
    }

    private AbstractC19317f(String str) {
        this.f65166a = str;
    }

    public /* synthetic */ AbstractC19317f(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
    /* renamed from: a */
    public final String mo2294a() {
        return this.f65166a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
    /* renamed from: b */
    public final String mo2293b(AbstractC19219w abstractC19219w) {
        return AbstractC19305b.C19306a.m2298a(this, abstractC19219w);
    }
}
