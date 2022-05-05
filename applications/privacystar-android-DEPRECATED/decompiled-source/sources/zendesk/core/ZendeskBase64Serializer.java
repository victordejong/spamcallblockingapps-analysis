package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Base64;
import com.zendesk.logger.Logger;
import java.nio.charset.Charset;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskBase64Serializer.class */
class ZendeskBase64Serializer implements Serializer {
    private static final String LOG_TAG = "ZendeskBase64Serializer";
    private Serializer jsonSerializer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskBase64Serializer(Serializer serializer) {
        this.jsonSerializer = serializer;
    }

    @Override // zendesk.core.Serializer
    @Nullable
    public <E> E deserialize(@Nullable Object obj, @NonNull Class<E> cls) {
        if (obj instanceof String) {
            return (E) this.jsonSerializer.deserialize(new String(Base64.decode((String) obj, 2)), cls);
        }
        Logger.m289w(LOG_TAG, "Data was not of type string. Cannot deserialize. Returning null.", new Object[0]);
        return null;
    }

    @Override // zendesk.core.Serializer
    @Nullable
    public String serialize(@Nullable Object obj) {
        String serialize = this.jsonSerializer.serialize(obj);
        if (serialize != null) {
            return Base64.encodeToString(serialize.getBytes(Charset.defaultCharset()), 2);
        }
        return null;
    }
}
