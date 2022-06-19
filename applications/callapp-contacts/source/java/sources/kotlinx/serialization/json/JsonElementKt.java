package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0001\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0018\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0001¨\u0006\u0005"}, m4298d2 = {"unexpectedJson", "", "key", "", "expected", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementKt.class */
public final class JsonElementKt {
    public static final Void unexpectedJson(String key, String expected) {
        C18524p.m3841c(key, "key");
        C18524p.m3841c(expected, "expected");
        throw new JsonException("Element " + key + " is not a " + expected);
    }
}
