package p239t2;

import android.util.JsonReader;
import android.util.JsonToken;
import com.google.auto.value.AutoValue;
import java.io.IOException;
import java.io.Reader;
@AutoValue
/* renamed from: t2.n */
/* loaded from: classes-dex2jar.jar:t2/n.class */
public abstract class AbstractC4383n {
    /* renamed from: a */
    public static AbstractC4383n m979a(Reader reader) throws IOException {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    return jsonReader.peek() == JsonToken.STRING ? new C4374h(Long.parseLong(jsonReader.nextString())) : new C4374h(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }

    /* renamed from: b */
    public abstract long mo978b();
}
