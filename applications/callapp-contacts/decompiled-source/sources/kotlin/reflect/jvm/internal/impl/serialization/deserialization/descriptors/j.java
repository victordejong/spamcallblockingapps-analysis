package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.c;
import kotlin.reflect.jvm.internal.impl.b.b.g;
import kotlin.reflect.jvm.internal.impl.b.b.h;
import kotlin.reflect.jvm.internal.impl.b.b.i;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ap;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.x;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j.class */
public final class j extends PropertyDescriptorImpl implements c {
    public final a.m g;
    public final c h;
    public final g i;
    public final f j;
    private final i k;
    private g.a l = g.a.COMPATIBLE;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(k containingDeclaration, an anVar, kotlin.reflect.jvm.internal.impl.descriptors.a.g annotations, y modality, s visibility, boolean z, e name, b.a kind, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, a.m proto, c nameResolver, kotlin.reflect.jvm.internal.impl.b.b.g typeTable, i versionRequirementTable, f fVar) {
        super(containingDeclaration, anVar, annotations, modality, visibility, z, name, kind, at.f37401a, z2, z3, z6, false, z4, z5);
        p.d(containingDeclaration, "containingDeclaration");
        p.d(annotations, "annotations");
        p.d(modality, "modality");
        p.d(visibility, "visibility");
        p.d(name, "name");
        p.d(kind, "kind");
        p.d(proto, "proto");
        p.d(nameResolver, "nameResolver");
        p.d(typeTable, "typeTable");
        p.d(versionRequirementTable, "versionRequirementTable");
        this.g = proto;
        this.h = nameResolver;
        this.i = typeTable;
        this.k = versionRequirementTable;
        this.j = fVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl
    public final PropertyDescriptorImpl a(k newOwner, y newModality, s newVisibility, an anVar, b.a kind, e newName, at source) {
        p.d(newOwner, "newOwner");
        p.d(newModality, "newModality");
        p.d(newVisibility, "newVisibility");
        p.d(kind, "kind");
        p.d(newName, "newName");
        p.d(source, "source");
        return new j(newOwner, anVar, getAnnotations(), newModality, newVisibility, at_(), newName, kind, l(), ar_(), isExternal(), as_(), isExpect(), this.g, this.h, this.i, this.k, this.j);
    }

    public final void a(x xVar, ap apVar, u uVar, u uVar2, g.a isExperimentalCoroutineInReleaseEnvironment) {
        p.d(isExperimentalCoroutineInReleaseEnvironment, "isExperimentalCoroutineInReleaseEnvironment");
        super.a(xVar, apVar, uVar, uVar2);
        v vVar = v.f38654a;
        this.l = isExperimentalCoroutineInReleaseEnvironment;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final c ao_() {
        return this.h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final kotlin.reflect.jvm.internal.impl.b.b.g ap_() {
        return this.i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final List<h> aq_() {
        return g.b.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final i h() {
        return this.k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final f i() {
        return this.j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.x
    public final boolean isExternal() {
        Boolean a2 = kotlin.reflect.jvm.internal.impl.b.b.b.C.b(this.g.f37059b);
        p.b(a2, "IS_EXTERNAL_PROPERTY.get(proto.flags)");
        return a2.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p k() {
        return this.g;
    }
}
