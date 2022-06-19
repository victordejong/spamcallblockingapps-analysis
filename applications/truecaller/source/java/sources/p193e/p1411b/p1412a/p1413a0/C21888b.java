package p193e.p1411b.p1412a.p1413a0;

import android.graphics.Color;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
/* renamed from: e.b.a.a0.b */
/* loaded from: classes-dex2jar.jar:e/b/a/a0/b.class */
public class C21888b implements AbstractC21899m<Integer> {

    /* renamed from: a */
    public static final C21888b f60769a = new C21888b();

    /* JADX WARN: Type inference failed for: r0v10, types: [double] */
    /* JADX WARN: Type inference failed for: r0v4, types: [double] */
    /* JADX WARN: Type inference failed for: r0v41, types: [double] */
    /* JADX WARN: Type inference failed for: r0v43, types: [double] */
    /* JADX WARN: Type inference failed for: r0v45, types: [double] */
    /* JADX WARN: Type inference failed for: r0v47, types: [double] */
    /* JADX WARN: Type inference failed for: r0v6, types: [double] */
    /* JADX WARN: Type inference failed for: r0v8, types: [double] */
    @Override // p193e.p1411b.p1412a.p1413a0.AbstractC21899m
    /* renamed from: a */
    public Integer mo8938a(JsonReader jsonReader, float f) throws IOException {
        boolean z = jsonReader.peek() == JsonToken.BEGIN_ARRAY;
        if (z) {
            jsonReader.beginArray();
        }
        ?? nextDouble = jsonReader.nextDouble();
        ?? nextDouble2 = jsonReader.nextDouble();
        ?? nextDouble3 = jsonReader.nextDouble();
        ?? nextDouble4 = jsonReader.nextDouble();
        if (z) {
            jsonReader.endArray();
        }
        char c = nextDouble;
        char c2 = nextDouble2;
        char c3 = nextDouble3;
        char c4 = nextDouble4;
        if (nextDouble <= 1.0d) {
            c = nextDouble;
            c2 = nextDouble2;
            c3 = nextDouble3;
            c4 = nextDouble4;
            if (nextDouble2 <= 1.0d) {
                c = nextDouble;
                c2 = nextDouble2;
                c3 = nextDouble3;
                c4 = nextDouble4;
                if (nextDouble3 <= 1.0d) {
                    c = nextDouble;
                    c2 = nextDouble2;
                    c3 = nextDouble3;
                    c4 = nextDouble4;
                    if (nextDouble4 <= 1.0d) {
                        c = nextDouble * 255.0d;
                        c2 = nextDouble2 * 255.0d;
                        c3 = nextDouble3 * 255.0d;
                        c4 = nextDouble4 * 255.0d;
                    }
                }
            }
        }
        return Integer.valueOf(Color.argb(c4, c, c2, c3));
    }
}
