package kotlinx.coroutines.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\u001a\u0019\u0010\u0002\u001a\u0004\u0018\u00010��2\u0006\u0010\u0001\u001a\u00020��H��¢\u0006\u0004\b\u0002\u0010\u0003\"\u001c\u0010\u0005\u001a\u00020\u00048��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"", "propertyName", "systemProp", "(Ljava/lang/String;)Ljava/lang/String;", "", "AVAILABLE_PROCESSORS", "I", "getAVAILABLE_PROCESSORS", "()I", "kotlinx-coroutines-core"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlinx/coroutines/internal/SystemPropsKt")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt.class */
final /* synthetic */ class SystemPropsKt__SystemPropsKt {

    /* renamed from: a */
    private static final int f23951a = Runtime.getRuntime().availableProcessors();

    /* renamed from: a */
    public static final int m436a() {
        return f23951a;
    }

    @Nullable
    /* renamed from: b */
    public static final String m435b(@NotNull String str) {
        String str2;
        try {
            str2 = System.getProperty(str);
        } catch (SecurityException e) {
            str2 = null;
        }
        return str2;
    }
}
