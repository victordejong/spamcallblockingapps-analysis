package kotlin.reflect.jvm.internal;

import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014J\u001a\u0010\u0015\u001a\u00020\u0016*\u00060\u0017j\u0002`\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u0018\u0010\u001b\u001a\u00020\u0016*\u00060\u0017j\u0002`\u00182\u0006\u0010\u001c\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;", "", "()V", "renderer", "Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;", "renderCallable", "", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;", "renderFunction", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "renderLambda", "invoke", "renderParameter", MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, "Lkotlin/reflect/jvm/internal/KParameterImpl;", "renderProperty", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "renderType", "type", "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;", "appendReceiverType", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "receiver", "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;", "appendReceivers", "callable", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.af */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/af.class */
public final class C18628af {

    /* renamed from: a */
    public static final C18628af f63696a = new C18628af();

    /* renamed from: b */
    private static final AbstractC19230c f63697b = AbstractC19230c.f65030g;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "it", "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.af$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/af$a.class */
    public static final class C18629a extends AbstractC18526r implements Function1<AbstractC19050ba, CharSequence> {

        /* renamed from: a */
        public static final C18629a f63698a = new C18629a();

        C18629a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(AbstractC19050ba abstractC19050ba) {
            AbstractC19050ba it2 = abstractC19050ba;
            C18628af c18628af = C18628af.f63696a;
            C18524p.m3843b(it2, "it");
            KotlinType g = it2.mo2593g();
            C18524p.m3843b(g, "it.type");
            return C18628af.m3778a(g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "it", "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.af$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/af$b.class */
    public static final class C18630b extends AbstractC18526r implements Function1<AbstractC19050ba, CharSequence> {

        /* renamed from: a */
        public static final C18630b f63699a = new C18630b();

        C18630b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(AbstractC19050ba abstractC19050ba) {
            AbstractC19050ba it2 = abstractC19050ba;
            C18628af c18628af = C18628af.f63696a;
            C18524p.m3843b(it2, "it");
            KotlinType g = it2.mo2593g();
            C18524p.m3843b(g, "it.type");
            return C18628af.m3778a(g);
        }
    }

    private C18628af() {
    }

    /* renamed from: a */
    public static String m3780a(AbstractC19017an descriptor) {
        C18524p.m3840d(descriptor, "descriptor");
        StringBuilder sb = new StringBuilder();
        sb.append(descriptor.at_() ? "var " : "val ");
        f63696a.m3782a(sb, descriptor);
        AbstractC19230c abstractC19230c = f63697b;
        C18966e name = descriptor.getName();
        C18524p.m3843b(name, "descriptor.name");
        sb.append(abstractC19230c.mo2460a(name, true));
        sb.append(": ");
        KotlinType g = descriptor.mo2593g();
        C18524p.m3843b(g, "descriptor.type");
        sb.append(m3778a(g));
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* renamed from: a */
    public static String m3779a(AbstractC19219w descriptor) {
        C18524p.m3840d(descriptor, "descriptor");
        StringBuilder sb = new StringBuilder();
        sb.append("fun ");
        f63696a.m3782a(sb, descriptor);
        AbstractC19230c abstractC19230c = f63697b;
        C18966e name = descriptor.getName();
        C18524p.m3843b(name, "descriptor.name");
        sb.append(abstractC19230c.mo2460a(name, true));
        List<AbstractC19050ba> valueParameters = descriptor.getValueParameters();
        C18524p.m3843b(valueParameters, "descriptor.valueParameters");
        C18282n.m4150a(valueParameters, sb, ", ", "(", ")", 0, null, C18629a.f63698a, 48);
        sb.append(": ");
        KotlinType returnType = descriptor.getReturnType();
        C18524p.m3851a(returnType);
        C18524p.m3843b(returnType, "descriptor.returnType!!");
        sb.append(m3778a(returnType));
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* renamed from: a */
    public static String m3778a(KotlinType type) {
        C18524p.m3840d(type, "type");
        return f63697b.mo2425a(type);
    }

    /* renamed from: a */
    public static String m3777a(C20064q parameter) {
        String str;
        C18524p.m3840d(parameter, "parameter");
        StringBuilder sb = new StringBuilder();
        int i = C18631ag.f63700a[parameter.f66441d.ordinal()];
        if (i == 1) {
            sb.append("extension receiver parameter");
        } else if (i == 2) {
            sb.append("instance parameter");
        } else if (i == 3) {
            sb.append("parameter #" + parameter.f66440c + ' ' + parameter.mo1120a());
        }
        sb.append(" of ");
        AbstractC19039b mo1137b = parameter.f66439b.mo1137b();
        if (mo1137b instanceof AbstractC19017an) {
            str = m3780a((AbstractC19017an) mo1137b);
        } else if (!(mo1137b instanceof AbstractC19219w)) {
            throw new IllegalStateException("Illegal callable: ".concat(String.valueOf(mo1137b)).toString());
        } else {
            str = m3779a((AbstractC19219w) mo1137b);
        }
        sb.append(str);
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* renamed from: a */
    private final void m3782a(StringBuilder sb, AbstractC18973a abstractC18973a) {
        AbstractC19020aq m3759a = C18635aj.m3759a(abstractC18973a);
        AbstractC19020aq extensionReceiverParameter = abstractC18973a.getExtensionReceiverParameter();
        m3781a(sb, m3759a);
        boolean z = (m3759a == null || extensionReceiverParameter == null) ? false : true;
        if (z) {
            sb.append("(");
        }
        m3781a(sb, extensionReceiverParameter);
        if (z) {
            sb.append(")");
        }
    }

    /* renamed from: a */
    private static void m3781a(StringBuilder sb, AbstractC19020aq abstractC19020aq) {
        if (abstractC19020aq != null) {
            KotlinType g = abstractC19020aq.mo2593g();
            C18524p.m3843b(g, "receiver.type");
            sb.append(m3778a(g));
            sb.append(".");
        }
    }

    /* renamed from: b */
    public static String m3776b(AbstractC19219w invoke) {
        C18524p.m3840d(invoke, "invoke");
        StringBuilder sb = new StringBuilder();
        f63696a.m3782a(sb, invoke);
        List<AbstractC19050ba> valueParameters = invoke.getValueParameters();
        C18524p.m3843b(valueParameters, "invoke.valueParameters");
        C18282n.m4150a(valueParameters, sb, ", ", "(", ")", 0, null, C18630b.f63699a, 48);
        sb.append(" -> ");
        KotlinType returnType = invoke.getReturnType();
        C18524p.m3851a(returnType);
        C18524p.m3843b(returnType, "invoke.returnType!!");
        sb.append(m3778a(returnType));
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
