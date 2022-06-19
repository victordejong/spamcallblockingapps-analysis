package p193e.p1577m.p1578a.p1580b.p1581i.p1582e;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.io.Reader;
/* renamed from: e.m.a.b.i.e.s */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/s.class */
public abstract class AbstractC24026s {
    /* renamed from: a */
    public static AbstractC24026s m5598a(Reader reader) throws IOException {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    return jsonReader.peek() == JsonToken.STRING ? new C24017m(Long.parseLong(jsonReader.nextString())) : new C24017m(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }

    /* renamed from: b */
    public abstract long mo5597b();
}
