package kotlin.reflect.jvm.internal.impl.descriptors.a;

import java.util.Objects;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/e.class */
public enum e {
    FIELD(null, 1, null),
    FILE(null, 1, null),
    PROPERTY(null, 1, null),
    PROPERTY_GETTER("get"),
    PROPERTY_SETTER("set"),
    RECEIVER(null, 1, null),
    CONSTRUCTOR_PARAMETER("param"),
    SETTER_PARAMETER("setparam"),
    PROPERTY_DELEGATE_FIELD("delegate");
    
    private final String renderName;

    e(String str) {
        String str2 = str;
        if (str == null) {
            String name = name();
            Objects.requireNonNull(name, "null cannot be cast to non-null type java.lang.String");
            str2 = name.toLowerCase();
            p.b(str2, "(this as java.lang.String).toLowerCase()");
        }
        this.renderName = str2;
    }

    /* synthetic */ e(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str);
    }

    public final String getRenderName() {
        return this.renderName;
    }
}
