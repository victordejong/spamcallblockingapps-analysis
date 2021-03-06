package kotlin.reflect.jvm.internal.impl.p553e;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: kotlin.reflect.jvm.internal.impl.e.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/a.class */
public enum EnumC19225a {
    NO_ARGUMENTS(false, false, 3, null),
    UNLESS_EMPTY(true, false, 2, null),
    ALWAYS_PARENTHESIZED(true, true);
    
    private final boolean includeAnnotationArguments;
    private final boolean includeEmptyAnnotationArguments;

    EnumC19225a(boolean z, boolean z2) {
        this.includeAnnotationArguments = z;
        this.includeEmptyAnnotationArguments = z2;
    }

    /* synthetic */ EnumC19225a(boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2);
    }

    public final boolean getIncludeAnnotationArguments() {
        return this.includeAnnotationArguments;
    }

    public final boolean getIncludeEmptyAnnotationArguments() {
        return this.includeEmptyAnnotationArguments;
    }
}
