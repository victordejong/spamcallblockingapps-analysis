package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b.class */
public interface AbstractC19039b extends AbstractC18973a, AbstractC19221x {

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b$a.class */
    public enum EnumC19040a {
        DECLARATION,
        FAKE_OVERRIDE,
        DELEGATION,
        SYNTHESIZED;

        public final boolean isReal() {
            return this != FAKE_OVERRIDE;
        }
    }

    AbstractC19039b copy(AbstractC19193k abstractC19193k, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, EnumC19040a enumC19040a, boolean z);

    EnumC19040a getKind();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    AbstractC19039b getOriginal();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    Collection<? extends AbstractC19039b> getOverriddenDescriptors();

    void setOverriddenDescriptors(Collection<? extends AbstractC19039b> collection);
}
