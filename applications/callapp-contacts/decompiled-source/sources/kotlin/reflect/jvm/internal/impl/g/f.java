package kotlin.reflect.jvm.internal.impl.g;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.g.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/f.class */
public abstract class f implements kotlin.reflect.jvm.internal.impl.g.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f37683a;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/f$a.class */
    public static final class a extends f {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37684a = new a();

        private a() {
            super("must be a member function", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.g.b
        public final boolean a(w functionDescriptor) {
            p.d(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getDispatchReceiverParameter() != null;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/f$b.class */
    public static final class b extends f {

        /* renamed from: a  reason: collision with root package name */
        public static final b f37685a = new b();

        private b() {
            super("must be a member or an extension function", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.g.b
        public final boolean a(w functionDescriptor) {
            p.d(functionDescriptor, "functionDescriptor");
            return (functionDescriptor.getDispatchReceiverParameter() == null && functionDescriptor.getExtensionReceiverParameter() == null) ? false : true;
        }
    }

    private f(String str) {
        this.f37683a = str;
    }

    public /* synthetic */ f(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.g.b
    public final String a() {
        return this.f37683a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.g.b
    public final String b(w wVar) {
        return b.a.a(this, wVar);
    }
}
