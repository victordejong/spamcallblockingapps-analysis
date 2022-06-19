package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19158d;
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
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d.class */
public final class C19904d extends C19158d implements AbstractC19903c {

    /* renamed from: c */
    private final C18702a.C18720c f66146c;

    /* renamed from: d */
    private final AbstractC18813c f66147d;

    /* renamed from: e */
    private final C18818g f66148e;

    /* renamed from: f */
    private final C18824i f66149f;

    /* renamed from: g */
    private final AbstractC19906f f66150g;

    /* renamed from: h */
    private AbstractC19907g.EnumC19908a f66151h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19904d(AbstractC19070d containingDeclaration, AbstractC19192j abstractC19192j, AbstractC18983g annotations, boolean z, AbstractC19039b.EnumC19040a kind, C18702a.C18720c proto, AbstractC18813c nameResolver, C18818g typeTable, C18824i versionRequirementTable, AbstractC19906f abstractC19906f, AbstractC19026at abstractC19026at) {
        super(containingDeclaration, abstractC19192j, annotations, z, kind, abstractC19026at == null ? AbstractC19026at.f64759a : abstractC19026at);
        C18524p.m3840d(containingDeclaration, "containingDeclaration");
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(kind, "kind");
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(nameResolver, "nameResolver");
        C18524p.m3840d(typeTable, "typeTable");
        C18524p.m3840d(versionRequirementTable, "versionRequirementTable");
        this.f66146c = proto;
        this.f66147d = nameResolver;
        this.f66148e = typeTable;
        this.f66149f = versionRequirementTable;
        this.f66150g = abstractC19906f;
        this.f66151h = AbstractC19907g.EnumC19908a.COMPATIBLE;
    }

    public /* synthetic */ C19904d(AbstractC19070d abstractC19070d, AbstractC19192j abstractC19192j, AbstractC18983g abstractC18983g, boolean z, AbstractC19039b.EnumC19040a enumC19040a, C18702a.C18720c c18720c, AbstractC18813c abstractC18813c, C18818g c18818g, C18824i c18824i, AbstractC19906f abstractC19906f, AbstractC19026at abstractC19026at, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC19070d, abstractC19192j, abstractC18983g, z, enumC19040a, c18720c, abstractC18813c, c18818g, c18824i, abstractC19906f, (i & 1024) != 0 ? null : abstractC19026at);
    }

    /* renamed from: a */
    private C19904d m1336a(AbstractC19193k newOwner, AbstractC19219w abstractC19219w, AbstractC19039b.EnumC19040a kind, AbstractC18983g annotations, AbstractC19026at source) {
        C18524p.m3840d(newOwner, "newOwner");
        C18524p.m3840d(kind, "kind");
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(source, "source");
        C19904d c19904d = new C19904d((AbstractC19070d) newOwner, (AbstractC19192j) abstractC19219w, annotations, this.f64921a, kind, this.f66146c, this.f66147d, this.f66148e, this.f66149f, this.f66150g, source);
        c19904d.setHasStableParameterNames(hasStableParameterNames());
        c19904d.m1335a(this.f66151h);
        return c19904d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.C19158d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C19158d mo1337a(AbstractC19193k abstractC19193k, AbstractC19219w abstractC19219w, AbstractC19039b.EnumC19040a enumC19040a, C18966e c18966e, AbstractC18983g abstractC18983g, AbstractC19026at abstractC19026at) {
        return m1336a(abstractC19193k, abstractC19219w, enumC19040a, abstractC18983g, abstractC19026at);
    }

    /* renamed from: a */
    public final void m1335a(AbstractC19907g.EnumC19908a enumC19908a) {
        C18524p.m3840d(enumC19908a, "<set-?>");
        this.f66151h = enumC19908a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    public final AbstractC18813c ao_() {
        return this.f66147d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    public final C18818g ap_() {
        return this.f66148e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    public final List<C18819h> aq_() {
        return AbstractC19907g.C19909b.m1333a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.C19158d, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final /* synthetic */ FunctionDescriptorImpl createSubstitutedCopy(AbstractC19193k abstractC19193k, AbstractC19219w abstractC19219w, AbstractC19039b.EnumC19040a enumC19040a, C18966e c18966e, AbstractC18983g abstractC18983g, AbstractC19026at abstractC19026at) {
        return m1336a(abstractC19193k, abstractC19219w, enumC19040a, abstractC18983g, abstractC19026at);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    /* renamed from: h */
    public final C18824i mo1278h() {
        return this.f66149f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    /* renamed from: i */
    public final AbstractC19906f mo1277i() {
        return this.f66150g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public final boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public final boolean isSuspend() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public final boolean isTailrec() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    /* renamed from: k */
    public final /* bridge */ /* synthetic */ AbstractC19705p mo1276k() {
        return this.f66146c;
    }
}
