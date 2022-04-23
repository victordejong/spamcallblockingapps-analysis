package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/y.class */
public enum y {
    FINAL,
    SEALED,
    OPEN,
    ABSTRACT;
    
    public static final a Companion = new a(null);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/y$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static y a(boolean z, boolean z2) {
            return z ? y.ABSTRACT : z2 ? y.OPEN : y.FINAL;
        }
    }
}
