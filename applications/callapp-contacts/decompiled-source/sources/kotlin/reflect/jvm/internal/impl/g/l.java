package kotlin.reflect.jvm.internal.impl.g;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.g.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/l.class */
public abstract class l implements kotlin.reflect.jvm.internal.impl.g.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f37707a;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/l$a.class */
    public static final class a extends l {

        /* renamed from: a  reason: collision with root package name */
        private final int f37708a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(int r5) {
            /*
                r4 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                java.lang.String r2 = "must have at least "
                r1.<init>(r2)
                r6 = r0
                r0 = r6
                r1 = r5
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r6
                java.lang.String r1 = " value parameter"
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = 1
                if (r0 <= r1) goto L_0x0022
                java.lang.String r0 = "s"
                r7 = r0
                goto L_0x0025
            L_0x0022:
                java.lang.String r0 = ""
                r7 = r0
            L_0x0025:
                r0 = r6
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r6
                java.lang.String r1 = r1.toString()
                r2 = 0
                r0.<init>(r1, r2)
                r0 = r4
                r1 = r5
                r0.f37708a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.g.l.a.<init>(int):void");
        }

        @Override // kotlin.reflect.jvm.internal.impl.g.b
        public final boolean a(w functionDescriptor) {
            p.d(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().size() >= this.f37708a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/l$b.class */
    public static final class b extends l {

        /* renamed from: a  reason: collision with root package name */
        private final int f37709a;

        public b(int i) {
            super("must have exactly " + i + " value parameters", null);
            this.f37709a = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.g.b
        public final boolean a(w functionDescriptor) {
            p.d(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().size() == this.f37709a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/l$c.class */
    public static final class c extends l {

        /* renamed from: a  reason: collision with root package name */
        public static final c f37710a = new c();

        private c() {
            super("must have no value parameters", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.g.b
        public final boolean a(w functionDescriptor) {
            p.d(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().isEmpty();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/l$d.class */
    public static final class d extends l {

        /* renamed from: a  reason: collision with root package name */
        public static final d f37711a = new d();

        private d() {
            super("must have a single value parameter", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.g.b
        public final boolean a(w functionDescriptor) {
            p.d(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().size() == 1;
        }
    }

    private l(String str) {
        this.f37707a = str;
    }

    public /* synthetic */ l(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.g.b
    public final String a() {
        return this.f37707a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.g.b
    public final String b(w wVar) {
        return b.a.a(this, wVar);
    }
}
