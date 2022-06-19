package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: kotlin.reflect.jvm.internal.impl.utils.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/g.class */
public enum EnumC20021g {
    IGNORE("ignore"),
    WARN("warn"),
    STRICT("strict");
    
    public static final C20022a Companion = new C20022a(null);
    private final String description;

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.g$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/g$a.class */
    public static final class C20022a {
        private C20022a() {
        }

        public /* synthetic */ C20022a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    EnumC20021g(String str) {
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
