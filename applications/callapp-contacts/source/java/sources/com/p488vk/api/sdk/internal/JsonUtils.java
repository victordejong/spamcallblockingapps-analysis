package com.p488vk.api.sdk.internal;

import android.util.JsonReader;
import android.util.JsonToken;
import android.util.MalformedJsonException;
import java.io.StringReader;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¨\u0006\t"}, m4298d2 = {"Lcom/vk/api/sdk/internal/JsonUtils;", "", "()V", "containsElement", "", "jsonString", "", "name", "containsElementImpl", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.internal.JsonUtils */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/internal/JsonUtils.class */
public final class JsonUtils {
    public static final JsonUtils INSTANCE = new JsonUtils();

    private JsonUtils() {
    }

    private final boolean containsElementImpl(String str, String str2) {
        JsonToken peek;
        if (str.length() == 0) {
            return false;
        }
        JsonReader jsonReader = new JsonReader(new StringReader(str));
        if (!jsonReader.hasNext() || jsonReader.peek() != JsonToken.BEGIN_OBJECT) {
            return false;
        }
        jsonReader.beginObject();
        while (jsonReader.hasNext() && (peek = jsonReader.peek()) != JsonToken.END_DOCUMENT) {
            if (peek != JsonToken.NAME) {
                jsonReader.skipValue();
            } else if (C18524p.m3850a((Object) str2, (Object) jsonReader.nextName())) {
                return true;
            }
        }
        return false;
    }

    public final boolean containsElement(String jsonString, String name) {
        C18524p.m3840d(jsonString, "jsonString");
        C18524p.m3840d(name, "name");
        try {
            return containsElementImpl(jsonString, name);
        } catch (MalformedJsonException e) {
            throw new MalformedJsonException(e.getMessage() + ". Json: '" + jsonString + '\'');
        }
    }
}
