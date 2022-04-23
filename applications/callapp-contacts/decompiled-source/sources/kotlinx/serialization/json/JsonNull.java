package kotlinx.serialization.json;

import com.mopub.common.Constants;
import kotlin.Metadata;
import kotlinx.serialization.json.internal.JsonReaderKt;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020��X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlinx/serialization/json/JsonNull;", "Lkotlinx/serialization/json/JsonPrimitive;", "()V", Constants.VAST_TRACKER_CONTENT, "", "getContent", "()Ljava/lang/String;", "contentOrNull", "getContentOrNull", "jsonNull", "getJsonNull", "()Lkotlinx/serialization/json/JsonNull;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonNull.class */
public final class JsonNull extends JsonPrimitive {
    public static final JsonNull INSTANCE;
    private static final String content = JsonReaderKt.NULL;
    private static final String contentOrNull = null;
    private static final JsonNull jsonNull;

    static {
        JsonNull jsonNull2 = new JsonNull();
        INSTANCE = jsonNull2;
        jsonNull = jsonNull2;
    }

    private JsonNull() {
        super(null);
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public final String getContent() {
        return content;
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public final String getContentOrNull() {
        return contentOrNull;
    }

    @Override // kotlinx.serialization.json.JsonElement
    public final JsonNull getJsonNull() {
        return jsonNull;
    }
}
