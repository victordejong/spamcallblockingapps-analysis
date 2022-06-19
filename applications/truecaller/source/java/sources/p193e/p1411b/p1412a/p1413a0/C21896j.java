package p193e.p1411b.p1412a.p1413a0;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.b.a.a0.j */
/* loaded from: classes-dex2jar.jar:e/b/a/a0/j.class */
public class C21896j implements AbstractC21899m<PointF> {

    /* renamed from: a */
    public static final C21896j f60778a = new C21896j();

    @Override // p193e.p1411b.p1412a.p1413a0.AbstractC21899m
    /* renamed from: a */
    public PointF mo8938a(JsonReader jsonReader, float f) throws IOException {
        PointF pointF;
        JsonToken peek = jsonReader.peek();
        if (peek == JsonToken.BEGIN_ARRAY) {
            pointF = C26232y.m2387Z0(jsonReader, f);
        } else if (peek == JsonToken.BEGIN_OBJECT) {
            pointF = C26232y.m2387Z0(jsonReader, f);
        } else if (peek != JsonToken.NUMBER) {
            throw new IllegalArgumentException("Cannot convert json to point. Next token is " + peek);
        } else {
            PointF pointF2 = new PointF(((float) jsonReader.nextDouble()) * f, ((float) jsonReader.nextDouble()) * f);
            while (jsonReader.hasNext()) {
                jsonReader.skipValue();
            }
            pointF = pointF2;
        }
        return pointF;
    }
}
