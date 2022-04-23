package kotlinx.coroutines.internal;

import kotlin.Metadata;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005H��\"\u0014\u0010��\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, m815d2 = {"AVAILABLE_PROCESSORS", "", "getAVAILABLE_PROCESSORS", "()I", "systemProp", "", "propertyName", "kotlinx-coroutines-core"}, m814k = 5, m813mv = {1, 1, 16}, m810xs = "kotlinx/coroutines/internal/SystemPropsKt")
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt.class */
public final /* synthetic */ class SystemPropsKt__SystemPropsKt {
    public static final int AVAILABLE_PROCESSORS = Runtime.getRuntime().availableProcessors();

    public static final int getAVAILABLE_PROCESSORS() {
        return AVAILABLE_PROCESSORS;
    }

    public static final String systemProp(String str) {
        String str2;
        try {
            str2 = System.getProperty(str);
        } catch (SecurityException e) {
            str2 = null;
        }
        return str2;
    }
}
