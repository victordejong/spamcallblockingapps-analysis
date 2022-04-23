package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/g.class */
public enum g {
    IGNORE("ignore"),
    WARN("warn"),
    STRICT("strict");
    
    public static final a Companion = new a(null);
    private final String description;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/g$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    g(String str) {
        this.description = str;
    }

    public final String getDescription() {
        return this.description;
    }

    public final boolean isIgnore() {
        return this == IGNORE;
    }

    public final boolean isWarning() {
        return this == WARN;
    }
}
