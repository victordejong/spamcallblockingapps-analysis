package kotlin.reflect.jvm.internal;

import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.e.c;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014J\u001a\u0010\u0015\u001a\u00020\u0016*\u00060\u0017j\u0002`\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u0018\u0010\u001b\u001a\u00020\u0016*\u00060\u0017j\u0002`\u00182\u0006\u0010\u001c\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, d2 = {"Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;", "", "()V", "renderer", "Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;", "renderCallable", "", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;", "renderFunction", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "renderLambda", "invoke", "renderParameter", MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, "Lkotlin/reflect/jvm/internal/KParameterImpl;", "renderProperty", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "renderType", "type", "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;", "appendReceiverType", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "receiver", "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;", "appendReceivers", "callable", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/af.class */
public final class af {

    /* renamed from: a  reason: collision with root package name */
    public static final af f36874a = new af();

    /* renamed from: b  reason: collision with root package name */
    private static final c f36875b = c.g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/af$a.class */
    public static final class a extends r implements Function1<ba, CharSequence> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f36876a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(ba baVar) {
            ba it2 = baVar;
            af afVar = af.f36874a;
            p.b(it2, "it");
            KotlinType g = it2.g();
            p.b(g, "it.type");
            return af.a(g);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/af$b.class */
    static final class b extends r implements Function1<ba, CharSequence> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f36877a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(ba baVar) {
            ba it2 = baVar;
            af afVar = af.f36874a;
            p.b(it2, "it");
            KotlinType g = it2.g();
            p.b(g, "it.type");
            return af.a(g);
        }
    }

    private af() {
    }

    public static String a(an descriptor) {
        p.d(descriptor, "descriptor");
        StringBuilder sb = new StringBuilder();
        sb.append(descriptor.at_() ? "var " : "val ");
        f36874a.a(sb, descriptor);
        c cVar = f36875b;
        e name = descriptor.getName();
        p.b(name, "descriptor.name");
        sb.append(cVar.a(name, true));
        sb.append(": ");
        KotlinType g = descriptor.g();
        p.b(g, "descriptor.type");
        sb.append(a(g));
        String sb2 = sb.toString();
        p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public static String a(w descriptor) {
        p.d(descriptor, "descriptor");
        StringBuilder sb = new StringBuilder();
        sb.append("fun ");
        f36874a.a(sb, descriptor);
        c cVar = f36875b;
        e name = descriptor.getName();
        p.b(name, "descriptor.name");
        sb.append(cVar.a(name, true));
        List<ba> valueParameters = descriptor.getValueParameters();
        p.b(valueParameters, "descriptor.valueParameters");
        n.a(valueParameters, sb, ", ", "(", ")", 0, null, a.f36876a, 48);
        sb.append(": ");
        KotlinType returnType = descriptor.getReturnType();
        p.a(returnType);
        p.b(returnType, "descriptor.returnType!!");
        sb.append(a(returnType));
        String sb2 = sb.toString();
        p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public static String a(KotlinType type) {
        p.d(type, "type");
        return f36875b.a(type);
    }

    public static String a(q parameter) {
        String str;
        p.d(parameter, "parameter");
        StringBuilder sb = new StringBuilder();
        int i = ag.f36878a[parameter.f38577d.ordinal()];
        if (i == 1) {
            sb.append("extension receiver parameter");
        } else if (i == 2) {
            sb.append("instance parameter");
        } else if (i == 3) {
            sb.append("parameter #" + parameter.f38576c + ' ' + parameter.a());
        }
        sb.append(" of ");
        kotlin.reflect.jvm.internal.impl.descriptors.b b2 = parameter.f38575b.b();
        if (b2 instanceof an) {
            str = a((an) b2);
        } else if (b2 instanceof w) {
            str = a((w) b2);
        } else {
            throw new IllegalStateException("Illegal callable: ".concat(String.valueOf(b2)).toString());
        }
        sb.append(str);
        String sb2 = sb.toString();
        p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    private final void a(StringBuilder sb, kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        aq a2 = aj.a(aVar);
        aq extensionReceiverParameter = aVar.getExtensionReceiverParameter();
        a(sb, a2);
        boolean z = (a2 == null || extensionReceiverParameter == null) ? false : true;
        if (z) {
            sb.append("(");
        }
        a(sb, extensionReceiverParameter);
        if (z) {
            sb.append(")");
        }
    }

    private static void a(StringBuilder sb, aq aqVar) {
        if (aqVar != null) {
            KotlinType g = aqVar.g();
            p.b(g, "receiver.type");
            sb.append(a(g));
            sb.append(".");
        }
    }

    public static String b(w invoke) {
        p.d(invoke, "invoke");
        StringBuilder sb = new StringBuilder();
        f36874a.a(sb, invoke);
        List<ba> valueParameters = invoke.getValueParameters();
        p.b(valueParameters, "invoke.valueParameters");
        n.a(valueParameters, sb, ", ", "(", ")", 0, null, b.f36877a, 48);
        sb.append(" -> ");
        KotlinType returnType = invoke.getReturnType();
        p.a(returnType);
        p.b(returnType, "invoke.returnType!!");
        sb.append(a(returnType));
        String sb2 = sb.toString();
        p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
