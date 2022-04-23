package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.c;
import kotlin.reflect.jvm.internal.impl.b.b.g;
import kotlin.reflect.jvm.internal.impl.b.b.h;
import kotlin.reflect.jvm.internal.impl.b.b.i;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.j;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d.class */
public final class d extends kotlin.reflect.jvm.internal.impl.descriptors.impl.d implements c {

    /* renamed from: c  reason: collision with root package name */
    private final a.c f38376c;

    /* renamed from: d  reason: collision with root package name */
    private final c f38377d;
    private final g e;
    private final i f;
    private final f g;
    private g.a h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(kotlin.reflect.jvm.internal.impl.descriptors.d containingDeclaration, j jVar, kotlin.reflect.jvm.internal.impl.descriptors.a.g annotations, boolean z, b.a kind, a.c proto, c nameResolver, kotlin.reflect.jvm.internal.impl.b.b.g typeTable, i versionRequirementTable, f fVar, at atVar) {
        super(containingDeclaration, jVar, annotations, z, kind, atVar == null ? at.f37401a : atVar);
        p.d(containingDeclaration, "containingDeclaration");
        p.d(annotations, "annotations");
        p.d(kind, "kind");
        p.d(proto, "proto");
        p.d(nameResolver, "nameResolver");
        p.d(typeTable, "typeTable");
        p.d(versionRequirementTable, "versionRequirementTable");
        this.f38376c = proto;
        this.f38377d = nameResolver;
        this.e = typeTable;
        this.f = versionRequirementTable;
        this.g = fVar;
        this.h = g.a.COMPATIBLE;
    }

    public /* synthetic */ d(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, j jVar, kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar, boolean z, b.a aVar, a.c cVar, c cVar2, kotlin.reflect.jvm.internal.impl.b.b.g gVar2, i iVar, f fVar, at atVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(dVar, jVar, gVar, z, aVar, cVar, cVar2, gVar2, iVar, fVar, (i & 1024) != 0 ? null : atVar);
    }

    private d a(k newOwner, w wVar, b.a kind, kotlin.reflect.jvm.internal.impl.descriptors.a.g annotations, at source) {
        p.d(newOwner, "newOwner");
        p.d(kind, "kind");
        p.d(annotations, "annotations");
        p.d(source, "source");
        d dVar = new d((kotlin.reflect.jvm.internal.impl.descriptors.d) newOwner, (j) wVar, annotations, this.f37536a, kind, this.f38376c, this.f38377d, this.e, this.f, this.g, source);
        dVar.setHasStableParameterNames(hasStableParameterNames());
        dVar.a(this.h);
        return dVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d
    public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.impl.d a(k kVar, w wVar, b.a aVar, e eVar, kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar, at atVar) {
        return a(kVar, wVar, aVar, gVar, atVar);
    }

    public final void a(g.a aVar) {
        p.d(aVar, "<set-?>");
        this.h = aVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final c ao_() {
        return this.f38377d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final kotlin.reflect.jvm.internal.impl.b.b.g ap_() {
        return this.e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final List<h> aq_() {
        return g.b.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final /* synthetic */ FunctionDescriptorImpl createSubstitutedCopy(k kVar, w wVar, b.a aVar, e eVar, kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar, at atVar) {
        return a(kVar, wVar, aVar, gVar, atVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final i h() {
        return this.f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final f i() {
        return this.g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.x
    public final boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.w
    public final boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.w
    public final boolean isSuspend() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.w
    public final boolean isTailrec() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p k() {
        return this.f38376c;
    }
}
