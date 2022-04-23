package kotlinx.coroutines.internal;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005H��\"\u0014\u0010��\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"AVAILABLE_PROCESSORS", "", "getAVAILABLE_PROCESSORS", "()I", "systemProp", "", "propertyName", "kotlinx-coroutines-core"}, k = 5, mv = {1, 4, 2}, xs = "kotlinx/coroutines/internal/SystemPropsKt")
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/x.class */
public final /* synthetic */ class x {

    /* renamed from: a  reason: collision with root package name */
    private static final int f38844a = Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return f38844a;
    }

    public static final String a(String str) {
        String str2;
        try {
            str2 = System.getProperty(str);
        } catch (SecurityException e) {
            str2 = null;
        }
        return str2;
    }
}
