package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.c;
import kotlin.reflect.jvm.internal.impl.b.b.g;
import kotlin.reflect.jvm.internal.impl.b.b.h;
import kotlin.reflect.jvm.internal.impl.b.b.i;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.aa;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k.class */
public final class k extends aa implements c {

    /* renamed from: a  reason: collision with root package name */
    private final a.h f38416a;

    /* renamed from: b  reason: collision with root package name */
    private final c f38417b;

    /* renamed from: c  reason: collision with root package name */
    private final g f38418c;

    /* renamed from: d  reason: collision with root package name */
    private final i f38419d;
    private final f e;
    private g.a f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(kotlin.reflect.jvm.internal.impl.descriptors.k containingDeclaration, as asVar, kotlin.reflect.jvm.internal.impl.descriptors.a.g annotations, e name, b.a kind, a.h proto, c nameResolver, kotlin.reflect.jvm.internal.impl.b.b.g typeTable, i versionRequirementTable, f fVar, at atVar) {
        super(containingDeclaration, asVar, annotations, name, kind, atVar == null ? at.f37401a : atVar);
        p.d(containingDeclaration, "containingDeclaration");
        p.d(annotations, "annotations");
        p.d(name, "name");
        p.d(kind, "kind");
        p.d(proto, "proto");
        p.d(nameResolver, "nameResolver");
        p.d(typeTable, "typeTable");
        p.d(versionRequirementTable, "versionRequirementTable");
        this.f38416a = proto;
        this.f38417b = nameResolver;
        this.f38418c = typeTable;
        this.f38419d = versionRequirementTable;
        this.e = fVar;
        this.f = g.a.COMPATIBLE;
    }

    public /* synthetic */ k(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, as asVar, kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar, e eVar, b.a aVar, a.h hVar, c cVar, kotlin.reflect.jvm.internal.impl.b.b.g gVar2, i iVar, f fVar, at atVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(kVar, asVar, gVar, eVar, aVar, hVar, cVar, gVar2, iVar, fVar, (i & 1024) != 0 ? null : atVar);
    }

    public final aa a(aq aqVar, aq aqVar2, List<? extends TypeParameterDescriptor> typeParameters, List<? extends ba> unsubstitutedValueParameters, KotlinType kotlinType, y yVar, s visibility, Map<? extends a.AbstractC0668a<?>, ?> userDataMap, g.a isExperimentalCoroutineInReleaseEnvironment) {
        p.d(typeParameters, "typeParameters");
        p.d(unsubstitutedValueParameters, "unsubstitutedValueParameters");
        p.d(visibility, "visibility");
        p.d(userDataMap, "userDataMap");
        p.d(isExperimentalCoroutineInReleaseEnvironment, "isExperimentalCoroutineInReleaseEnvironment");
        aa initialize = super.initialize(aqVar, aqVar2, typeParameters, unsubstitutedValueParameters, kotlinType, yVar, visibility, userDataMap);
        p.b(initialize, "super.initialize(\n            extensionReceiverParameter,\n            dispatchReceiverParameter,\n            typeParameters,\n            unsubstitutedValueParameters,\n            unsubstitutedReturnType,\n            modality,\n            visibility,\n            userDataMap\n        )");
        this.f = isExperimentalCoroutineInReleaseEnvironment;
        return initialize;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final c ao_() {
        return this.f38417b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final kotlin.reflect.jvm.internal.impl.b.b.g ap_() {
        return this.f38418c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final List<h> aq_() {
        return g.b.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.aa, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final FunctionDescriptorImpl createSubstitutedCopy(kotlin.reflect.jvm.internal.impl.descriptors.k newOwner, w wVar, b.a kind, e eVar, kotlin.reflect.jvm.internal.impl.descriptors.a.g annotations, at source) {
        e name;
        p.d(newOwner, "newOwner");
        p.d(kind, "kind");
        p.d(annotations, "annotations");
        p.d(source, "source");
        as asVar = (as) wVar;
        if (eVar == null) {
            name = getName();
            p.b(name, "name");
        } else {
            name = eVar;
        }
        k kVar = new k(newOwner, asVar, annotations, name, kind, this.f38416a, this.f38417b, this.f38418c, this.f38419d, this.e, source);
        kVar.setHasStableParameterNames(hasStableParameterNames());
        kVar.f = this.f;
        return kVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final i h() {
        return this.f38419d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final f i() {
        return this.e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p k() {
        return this.f38416a;
    }
}
