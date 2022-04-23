package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b.class */
public interface b extends kotlin.reflect.jvm.internal.impl.descriptors.a, x {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b$a.class */
    public enum a {
        DECLARATION,
        FAKE_OVERRIDE,
        DELEGATION,
        SYNTHESIZED;

        public final boolean isReal() {
            return this != FAKE_OVERRIDE;
        }
    }

    b copy(k kVar, y yVar, s sVar, a aVar, boolean z);

    a getKind();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.k
    b getOriginal();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    Collection<? extends b> getOverriddenDescriptors();

    void setOverriddenDescriptors(Collection<? extends b> collection);
}
