package zendesk.core;

import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.charset.Charset;
import p081h.p451q.p453b.C10845a;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskBase64Serializer.class */
public class ZendeskBase64Serializer implements Serializer {
    public Serializer jsonSerializer;

    public ZendeskBase64Serializer(Serializer serializer) {
        this.jsonSerializer = serializer;
    }

    @Override // zendesk.core.Serializer
    @Nullable
    public <E> E deserialize(@Nullable Object obj, @NonNull Class<E> cls) {
        if (obj instanceof String) {
            return (E) this.jsonSerializer.deserialize(new String(Base64.decode((String) obj, 2)), cls);
        }
        C10845a.m10417d("ZendeskBase64Serializer", "Data was not of type string. Cannot deserialize. Returning null.", new Object[0]);
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
