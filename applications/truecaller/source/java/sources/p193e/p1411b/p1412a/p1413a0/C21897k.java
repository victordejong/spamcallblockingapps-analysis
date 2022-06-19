package p193e.p1411b.p1412a.p1413a0;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import p193e.p1411b.p1412a.p1415c0.C21910d;
/* renamed from: e.b.a.a0.k */
/* loaded from: classes-dex2jar.jar:e/b/a/a0/k.class */
public class C21897k implements AbstractC21899m<C21910d> {

    /* renamed from: a */
    public static final C21897k f60779a = new C21897k();

    @Override // p193e.p1411b.p1412a.p1413a0.AbstractC21899m
    /* renamed from: a */
    public C21910d mo8938a(JsonReader jsonReader, float f) throws IOException {
        boolean z = jsonReader.peek() == JsonToken.BEGIN_ARRAY;
        if (z) {
            jsonReader.beginArray();
        }
        float nextDouble = (float) jsonReader.nextDouble();
        float nextDouble2 = (float) jsonReader.nextDouble();
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        if (z) {
            jsonReader.endArray();
        }
        return new C21910d((nextDouble / 100.0f) * f, (nextDouble2 / 100.0f) * f);
    }
}
