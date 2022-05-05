package zendesk.core;

import android.support.annotation.NonNull;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonSyntaxException;
import com.zendesk.logger.Logger;
import com.zendesk.util.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/core/GsonSerializer.class */
public class GsonSerializer implements Serializer {
    private static final String LOG_TAG = "GsonSerializer";
    private final Gson gson;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GsonSerializer(Gson gson) {
        this.gson = gson;
    }

    @Override // zendesk.core.Serializer
    public <E> E deserialize(Object obj, @NonNull Class<E> cls) {
        if (obj instanceof String) {
            String str = (String) obj;
            if (!StringUtils.hasLength(str)) {
                return null;
            }
            try {
                return (E) this.gson.fromJson(str, (Class<Object>) cls);
            } catch (JsonSyntaxException e) {
                Logger.m298d(LOG_TAG, "Unable to deserialize String into object of type %s", cls.getSimpleName());
                return null;
            }
        } else if (obj instanceof JsonElement) {
            try {
                return (E) this.gson.fromJson((JsonElement) obj, (Class<Object>) cls);
            } catch (JsonSyntaxException e2) {
                Logger.m298d(LOG_TAG, "Unable to deserialize JsonElement into object of type %s", cls.getSimpleName(), e2);
                return null;
            }
        } else {
            Logger.m298d(LOG_TAG, "Unable to deserialize the provided object into %s", cls.getSimpleName());
            return null;
        }
    }

    @Override // zendesk.core.Serializer
    public String serialize(Object obj) {
        return this.gson.toJson(obj);
    }
}
