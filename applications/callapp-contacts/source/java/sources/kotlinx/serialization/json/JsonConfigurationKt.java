package kotlinx.serialization.json;

import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u001c\u0010��\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003H\u0007¨\u0006\u0005"}, m4298d2 = {"JsonConfiguration", "", "strictMode", "", "unquoted", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonConfigurationKt.class */
public final class JsonConfigurationKt {
    public static final void JsonConfiguration(boolean z, boolean z2) {
        throw new IllegalStateException("Should not be called".toString());
    }

    public static /* synthetic */ void JsonConfiguration$default(boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        JsonConfiguration(z, z2);
    }
}
