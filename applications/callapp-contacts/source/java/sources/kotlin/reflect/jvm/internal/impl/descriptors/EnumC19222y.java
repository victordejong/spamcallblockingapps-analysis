package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.y */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/y.class */
public enum EnumC19222y {
    FINAL,
    SEALED,
    OPEN,
    ABSTRACT;
    
    public static final C19223a Companion = new C19223a(null);

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.y$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/y$a.class */
    public static final class C19223a {
        private C19223a() {
        }

        public /* synthetic */ C19223a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static EnumC19222y m2496a(boolean z, boolean z2) {
            return z ? EnumC19222y.ABSTRACT : z2 ? EnumC19222y.OPEN : EnumC19222y.FINAL;
        }
    }
}
