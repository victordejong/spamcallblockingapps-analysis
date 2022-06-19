package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18819h;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18824i;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.k */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k.class */
public final class C19934k extends C19142aa implements AbstractC19903c {

    /* renamed from: a */
    private final C18702a.C18741h f66214a;

    /* renamed from: b */
    private final AbstractC18813c f66215b;

    /* renamed from: c */
    private final C18818g f66216c;

    /* renamed from: d */
    private final C18824i f66217d;

    /* renamed from: e */
    private final AbstractC19906f f66218e;

    /* renamed from: f */
    private AbstractC19907g.EnumC19908a f66219f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19934k(AbstractC19193k containingDeclaration, AbstractC19025as abstractC19025as, AbstractC18983g annotations, C18966e name, AbstractC19039b.EnumC19040a kind, C18702a.C18741h proto, AbstractC18813c nameResolver, C18818g typeTable, C18824i versionRequirementTable, AbstractC19906f abstractC19906f, AbstractC19026at abstractC19026at) {
        super(containingDeclaration, abstractC19025as, annotations, name, kind, abstractC19026at == null ? AbstractC19026at.f64759a : abstractC19026at);
        C18524p.m3840d(containingDeclaration, "containingDeclaration");
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(name, "name");
        C18524p.m3840d(kind, "kind");
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(nameResolver, "nameResolver");
        C18524p.m3840d(typeTable, "typeTable");
        C18524p.m3840d(versionRequirementTable, "versionRequirementTable");
        this.f66214a = proto;
        this.f66215b = nameResolver;
        this.f66216c = typeTable;
        this.f66217d = versionRequirementTable;
        this.f66218e = abstractC19906f;
        this.f66219f = AbstractC19907g.EnumC19908a.COMPATIBLE;
    }

    public /* synthetic */ C19934k(AbstractC19193k abstractC19193k, AbstractC19025as abstractC19025as, AbstractC18983g abstractC18983g, C18966e c18966e, AbstractC19039b.EnumC19040a enumC19040a, C18702a.C18741h c18741h, AbstractC18813c abstractC18813c, C18818g c18818g, C18824i c18824i, AbstractC19906f abstractC19906f, AbstractC19026at abstractC19026at, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC19193k, abstractC19025as, abstractC18983g, c18966e, enumC19040a, c18741h, abstractC18813c, c18818g, c18824i, abstractC19906f, (i & 1024) != 0 ? null : abstractC19026at);
    }

    /* renamed from: a */
    public final C19142aa m1285a(AbstractC19020aq abstractC19020aq, AbstractC19020aq abstractC19020aq2, List<? extends TypeParameterDescriptor> typeParameters, List<? extends AbstractC19050ba> unsubstitutedValueParameters, KotlinType kotlinType, EnumC19222y enumC19222y, AbstractC19213s visibility, Map<? extends AbstractC18973a.AbstractC18974a<?>, ?> userDataMap, AbstractC19907g.EnumC19908a isExperimentalCoroutineInReleaseEnvironment) {
        C18524p.m3840d(typeParameters, "typeParameters");
        C18524p.m3840d(unsubstitutedValueParameters, "unsubstitutedValueParameters");
        C18524p.m3840d(visibility, "visibility");
        C18524p.m3840d(userDataMap, "userDataMap");
        C18524p.m3840d(isExperimentalCoroutineInReleaseEnvironment, "isExperimentalCoroutineInReleaseEnvironment");
        C19142aa initialize = super.initialize(abstractC19020aq, abstractC19020aq2, typeParameters, unsubstitutedValueParameters, kotlinType, enumC19222y, visibility, userDataMap);
        C18524p.m3843b(initialize, "super.initialize(\n            extensionReceiverParameter,\n            dispatchReceiverParameter,\n            typeParameters,\n            unsubstitutedValueParameters,\n            unsubstitutedReturnType,\n            modality,\n            visibility,\n            userDataMap\n        )");
        this.f66219f = isExperimentalCoroutineInReleaseEnvironment;
        return initialize;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    public final AbstractC18813c ao_() {
        return this.f66215b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    public final C18818g ap_() {
        return this.f66216c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    public final List<C18819h> aq_() {
        return AbstractC19907g.C19909b.m1333a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final FunctionDescriptorImpl createSubstitutedCopy(AbstractC19193k newOwner, AbstractC19219w abstractC19219w, AbstractC19039b.EnumC19040a kind, C18966e c18966e, AbstractC18983g annotations, AbstractC19026at source) {
        C18966e name;
        C18524p.m3840d(newOwner, "newOwner");
        C18524p.m3840d(kind, "kind");
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(source, "source");
        AbstractC19025as abstractC19025as = (AbstractC19025as) abstractC19219w;
        if (c18966e == null) {
            name = getName();
            C18524p.m3843b(name, "name");
        } else {
            name = c18966e;
        }
        C19934k c19934k = new C19934k(newOwner, abstractC19025as, annotations, name, kind, this.f66214a, this.f66215b, this.f66216c, this.f66217d, this.f66218e, source);
        c19934k.setHasStableParameterNames(hasStableParameterNames());
        c19934k.f66219f = this.f66219f;
        return c19934k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    /* renamed from: h */
    public final C18824i mo1278h() {
        return this.f66217d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    /* renamed from: i */
    public final AbstractC19906f mo1277i() {
        return this.f66218e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    /* renamed from: k */
    public final /* bridge */ /* synthetic */ AbstractC19705p mo1276k() {
        return this.f66214a;
    }
}
