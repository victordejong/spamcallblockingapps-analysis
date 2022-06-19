package kotlin.reflect.jvm.internal.impl.p555g;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b;
/* renamed from: kotlin.reflect.jvm.internal.impl.g.l */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/l.class */
public abstract class AbstractC19335l implements AbstractC19305b {

    /* renamed from: a */
    private final String f65226a;

    /* renamed from: kotlin.reflect.jvm.internal.impl.g.l$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/l$a.class */
    public static final class C19336a extends AbstractC19335l {

        /* renamed from: a */
        private final int f65227a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C19336a(int r5) {
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
                if (r0 <= r1) goto L22
                java.lang.String r0 = "s"
                r7 = r0
                goto L25
            L22:
                java.lang.String r0 = ""
                r7 = r0
            L25:
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
                r0.f65227a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p555g.AbstractC19335l.C19336a.<init>(int):void");
        }

        @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
        /* renamed from: a */
        public final boolean mo2292a(AbstractC19219w functionDescriptor) {
            C18524p.m3840d(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().size() >= this.f65227a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.g.l$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/l$b.class */
    public static final class C19337b extends AbstractC19335l {

        /* renamed from: a */
        private final int f65228a;

        public C19337b(int i) {
            super("must have exactly " + i + " value parameters", null);
            this.f65228a = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
        /* renamed from: a */
        public final boolean mo2292a(AbstractC19219w functionDescriptor) {
            C18524p.m3840d(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().size() == this.f65228a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.g.l$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/l$c.class */
    public static final class C19338c extends AbstractC19335l {

        /* renamed from: a */
        public static final C19338c f65229a = new C19338c();

        private C19338c() {
            super("must have no value parameters", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
        /* renamed from: a */
        public final boolean mo2292a(AbstractC19219w functionDescriptor) {
            C18524p.m3840d(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().isEmpty();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.g.l$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/l$d.class */
    public static final class C19339d extends AbstractC19335l {

        /* renamed from: a */
        public static final C19339d f65230a = new C19339d();

        private C19339d() {
            super("must have a single value parameter", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
        /* renamed from: a */
        public final boolean mo2292a(AbstractC19219w functionDescriptor) {
            C18524p.m3840d(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().size() == 1;
        }
    }

    private AbstractC19335l(String str) {
        this.f65226a = str;
    }

    public /* synthetic */ AbstractC19335l(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
    /* renamed from: a */
    public final String mo2294a() {
        return this.f65226a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
    /* renamed from: b */
    public final String mo2293b(AbstractC19219w abstractC19219w) {
        return AbstractC19305b.C19306a.m2298a(this, abstractC19219w);
    }
}
