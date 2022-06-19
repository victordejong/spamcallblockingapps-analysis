package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.C20128v;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19019ap;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19215u;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19189x;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18808b;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18819h;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18824i;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j.class */
public final class C19933j extends PropertyDescriptorImpl implements AbstractC19903c {

    /* renamed from: g */
    public final C18702a.C18754m f66208g;

    /* renamed from: h */
    public final AbstractC18813c f66209h;

    /* renamed from: i */
    public final C18818g f66210i;

    /* renamed from: j */
    public final AbstractC19906f f66211j;

    /* renamed from: k */
    private final C18824i f66212k;

    /* renamed from: l */
    private AbstractC19907g.EnumC19908a f66213l = AbstractC19907g.EnumC19908a.COMPATIBLE;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19933j(AbstractC19193k containingDeclaration, AbstractC19017an abstractC19017an, AbstractC18983g annotations, EnumC19222y modality, AbstractC19213s visibility, boolean z, C18966e name, AbstractC19039b.EnumC19040a kind, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, C18702a.C18754m proto, AbstractC18813c nameResolver, C18818g typeTable, C18824i versionRequirementTable, AbstractC19906f abstractC19906f) {
        super(containingDeclaration, abstractC19017an, annotations, modality, visibility, z, name, kind, AbstractC19026at.f64759a, z2, z3, z6, false, z4, z5);
        C18524p.m3840d(containingDeclaration, "containingDeclaration");
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(modality, "modality");
        C18524p.m3840d(visibility, "visibility");
        C18524p.m3840d(name, "name");
        C18524p.m3840d(kind, "kind");
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(nameResolver, "nameResolver");
        C18524p.m3840d(typeTable, "typeTable");
        C18524p.m3840d(versionRequirementTable, "versionRequirementTable");
        this.f66208g = proto;
        this.f66209h = nameResolver;
        this.f66210i = typeTable;
        this.f66212k = versionRequirementTable;
        this.f66211j = abstractC19906f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl
    /* renamed from: a */
    public final PropertyDescriptorImpl mo1286a(AbstractC19193k newOwner, EnumC19222y newModality, AbstractC19213s newVisibility, AbstractC19017an abstractC19017an, AbstractC19039b.EnumC19040a kind, C18966e newName, AbstractC19026at source) {
        C18524p.m3840d(newOwner, "newOwner");
        C18524p.m3840d(newModality, "newModality");
        C18524p.m3840d(newVisibility, "newVisibility");
        C18524p.m3840d(kind, "kind");
        C18524p.m3840d(newName, "newName");
        C18524p.m3840d(source, "source");
        return new C19933j(newOwner, abstractC19017an, getAnnotations(), newModality, newVisibility, at_(), newName, kind, mo2604l(), ar_(), isExternal(), as_(), isExpect(), this.f66208g, this.f66209h, this.f66210i, this.f66212k, this.f66211j);
    }

    /* renamed from: a */
    public final void m1287a(C19189x c19189x, AbstractC19019ap abstractC19019ap, AbstractC19215u abstractC19215u, AbstractC19215u abstractC19215u2, AbstractC19907g.EnumC19908a isExperimentalCoroutineInReleaseEnvironment) {
        C18524p.m3840d(isExperimentalCoroutineInReleaseEnvironment, "isExperimentalCoroutineInReleaseEnvironment");
        super.m2630a(c19189x, abstractC19019ap, abstractC19215u, abstractC19215u2);
        C20128v c20128v = C20128v.f66529a;
        this.f66213l = isExperimentalCoroutineInReleaseEnvironment;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    public final AbstractC18813c ao_() {
        return this.f66209h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    public final C18818g ap_() {
        return this.f66210i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    public final List<C18819h> aq_() {
        return AbstractC19907g.C19909b.m1333a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    /* renamed from: h */
    public final C18824i mo1278h() {
        return this.f66212k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    /* renamed from: i */
    public final AbstractC19906f mo1277i() {
        return this.f66211j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final boolean isExternal() {
        Boolean mo3059b = C18808b.f64268C.mo3059b(this.f66208g.f64035b);
        C18524p.m3843b(mo3059b, "IS_EXTERNAL_PROPERTY.get(proto.flags)");
        return mo3059b.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    /* renamed from: k */
    public final /* bridge */ /* synthetic */ AbstractC19705p mo1276k() {
        return this.f66208g;
    }
}
