package kotlin.reflect.jvm.internal.impl.g;

import java.util.List;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.g.f;
import kotlin.reflect.jvm.internal.impl.g.k;
import kotlin.reflect.jvm.internal.impl.g.l;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/i.class */
public final class i extends kotlin.reflect.jvm.internal.impl.g.a {

    /* renamed from: a  reason: collision with root package name */
    public static final i f37689a = new i();

    /* renamed from: b  reason: collision with root package name */
    private static final List<d> f37690b = n.b((Object[]) new d[]{new d(j.j, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, new l.a(1)}, (Function1) null, 4, (DefaultConstructorMarker) null), new d(j.k, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, new l.a(2)}, a.f37691a), new d(j.f37695b, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, h.f37687a, new l.a(2), e.f37681a}, (Function1) null, 4, (DefaultConstructorMarker) null), new d(j.f37696c, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, h.f37687a, new l.a(3), e.f37681a}, (Function1) null, 4, (DefaultConstructorMarker) null), new d(j.f37697d, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, h.f37687a, new l.b(2), e.f37681a}, (Function1) null, 4, (DefaultConstructorMarker) null), new d(j.h, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a}, (Function1) null, 4, (DefaultConstructorMarker) null), new d(j.g, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, l.d.f37711a, h.f37687a, k.a.f37701a}, (Function1) null, 4, (DefaultConstructorMarker) null), new d(j.i, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, l.c.f37710a}, (Function1) null, 4, (DefaultConstructorMarker) null), new d(j.l, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, l.c.f37710a}, (Function1) null, 4, (DefaultConstructorMarker) null), new d(j.m, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, l.c.f37710a, k.a.f37701a}, (Function1) null, 4, (DefaultConstructorMarker) null), new d(j.C, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, l.d.f37711a, h.f37687a}, (Function1) null, 4, (DefaultConstructorMarker) null), new d(j.e, new kotlin.reflect.jvm.internal.impl.g.b[]{f.a.f37684a}, b.f37692a), new d(j.f, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, k.b.f37703a, l.d.f37711a, h.f37687a}, (Function1) null, 4, (DefaultConstructorMarker) null), new d(j.L, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, l.d.f37711a, h.f37687a}, (Function1) null, 4, (DefaultConstructorMarker) null), new d(j.K, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, l.c.f37710a}, (Function1) null, 4, (DefaultConstructorMarker) null), new d(n.b((Object[]) new e[]{j.r, j.s}), new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a}, c.f37693a), new d(j.M, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, k.c.f37705a, l.d.f37711a, h.f37687a}, (Function1) null, 4, (DefaultConstructorMarker) null), new d(j.o, new kotlin.reflect.jvm.internal.impl.g.b[]{f.b.f37685a, l.c.f37710a}, (Function1) null, 4, (DefaultConstructorMarker) null)});

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/i$a.class */
    static final class a extends r implements Function1<w, String> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37691a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(w wVar) {
            Boolean bool;
            w wVar2 = wVar;
            p.d(wVar2, "<this>");
            List<ba> valueParameters = wVar2.getValueParameters();
            p.b(valueParameters, "valueParameters");
            ba baVar = (ba) n.h((List<? extends Object>) valueParameters);
            if (baVar == null) {
                bool = null;
            } else {
                bool = Boolean.valueOf(!kotlin.reflect.jvm.internal.impl.resolve.b.a.a(baVar) && baVar.d() == null);
            }
            boolean a2 = p.a(bool, Boolean.TRUE);
            i iVar = i.f37689a;
            if (!a2) {
                return "last parameter should not have a default value or be a vararg";
            }
            return null;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/i$b.class */
    static final class b extends r implements Function1<w, String> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f37692a = new b();

        b() {
            super(1);
        }

        private static final boolean a(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            return (kVar instanceof d) && g.d((d) kVar);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x007d, code lost:
            if (r8 != false) goto L_0x0080;
         */
        @Override // kotlin.jvm.functions.Function1
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final /* synthetic */ java.lang.String invoke(kotlin.reflect.jvm.internal.impl.descriptors.w r4) {
            /*
                r3 = this;
                r0 = r4
                kotlin.reflect.jvm.internal.impl.descriptors.w r0 = (kotlin.reflect.jvm.internal.impl.descriptors.w) r0
                r4 = r0
                r0 = r4
                java.lang.String r1 = "<this>"
                kotlin.jvm.internal.p.d(r0, r1)
                kotlin.reflect.jvm.internal.impl.g.i r0 = kotlin.reflect.jvm.internal.impl.g.i.f37689a
                r5 = r0
                r0 = r4
                kotlin.reflect.jvm.internal.impl.descriptors.k r0 = r0.getContainingDeclaration()
                r5 = r0
                r0 = r5
                java.lang.String r1 = "containingDeclaration"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r5
                boolean r0 = a(r0)
                r6 = r0
                r0 = 0
                r7 = r0
                r0 = r6
                if (r0 != 0) goto L_0x0080
                r0 = r4
                java.util.Collection r0 = r0.getOverriddenDescriptors()
                r4 = r0
                r0 = r4
                java.lang.String r1 = "overriddenDescriptors"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r4
                java.lang.Iterable r0 = (java.lang.Iterable) r0
                r4 = r0
                r0 = r4
                java.util.Collection r0 = (java.util.Collection) r0
                boolean r0 = r0.isEmpty()
                if (r0 != 0) goto L_0x0078
                r0 = r4
                java.util.Iterator r0 = r0.iterator()
                r4 = r0
            L_0x004d:
                r0 = r4
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x0078
                r0 = r4
                java.lang.Object r0 = r0.next()
                kotlin.reflect.jvm.internal.impl.descriptors.w r0 = (kotlin.reflect.jvm.internal.impl.descriptors.w) r0
                kotlin.reflect.jvm.internal.impl.descriptors.k r0 = r0.getContainingDeclaration()
                r5 = r0
                r0 = r5
                java.lang.String r1 = "it.containingDeclaration"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r5
                boolean r0 = a(r0)
                if (r0 == 0) goto L_0x004d
                r0 = 1
                r8 = r0
                goto L_0x007b
            L_0x0078:
                r0 = 0
                r8 = r0
            L_0x007b:
                r0 = r8
                if (r0 == 0) goto L_0x0083
            L_0x0080:
                r0 = 1
                r7 = r0
            L_0x0083:
                r0 = r7
                if (r0 != 0) goto L_0x008b
                java.lang.String r0 = "must override ''equals()'' in Any"
                return r0
            L_0x008b:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.g.i.b.invoke(java.lang.Object):java.lang.Object");
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/i$c.class */
    static final class c extends r implements Function1<w, String> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f37693a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(w wVar) {
            boolean z;
            w wVar2 = wVar;
            p.d(wVar2, "<this>");
            aq dispatchReceiverParameter = wVar2.getDispatchReceiverParameter();
            aq aqVar = dispatchReceiverParameter;
            if (dispatchReceiverParameter == null) {
                aqVar = wVar2.getExtensionReceiverParameter();
            }
            i iVar = i.f37689a;
            boolean z2 = false;
            if (aqVar != null) {
                KotlinType returnType = wVar2.getReturnType();
                if (returnType == null) {
                    z = false;
                } else {
                    KotlinType g = aqVar.g();
                    p.b(g, "receiver.type");
                    z = TypeUtilsKt.isSubtypeOf(returnType, g);
                }
                z2 = false;
                if (z) {
                    z2 = true;
                }
            }
            if (!z2) {
                return "receiver must be a supertype of the return type";
            }
            return null;
        }
    }

    private i() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.g.a
    public final List<d> a() {
        return f37690b;
    }
}
