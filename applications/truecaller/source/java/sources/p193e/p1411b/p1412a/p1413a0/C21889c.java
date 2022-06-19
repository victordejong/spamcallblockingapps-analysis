package p193e.p1411b.p1412a.p1413a0;

import android.util.JsonReader;
import java.io.IOException;
import p1727n3.p1789g0.C26232y;
import p193e.p1411b.p1412a.p1420y.C21971b;
/* renamed from: e.b.a.a0.c */
/* loaded from: classes-dex2jar.jar:e/b/a/a0/c.class */
public class C21889c implements AbstractC21899m<C21971b> {

    /* renamed from: a */
    public static final C21889c f60770a = new C21889c();

    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r0v43, types: [double] */
    /* JADX WARN: Type inference failed for: r0v45, types: [double] */
    /* JADX WARN: Type inference failed for: r0v51, types: [double] */
    @Override // p193e.p1411b.p1412a.p1413a0.AbstractC21899m
    /* renamed from: a */
    public C21971b mo8938a(JsonReader jsonReader, float f) throws IOException {
        C21971b.EnumC21972a enumC21972a = C21971b.EnumC21972a.CENTER;
        jsonReader.beginObject();
        C21971b.EnumC21972a enumC21972a2 = enumC21972a;
        String str = null;
        String str2 = null;
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        char c4 = 0;
        int i = 0;
        int i2 = 0;
        boolean z = true;
        int i3 = 0;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z2 = true;
            switch (nextName.hashCode()) {
                case 102:
                    if (nextName.equals("f")) {
                        z2 = false;
                        break;
                    }
                    break;
                case 106:
                    if (nextName.equals("j")) {
                        z2 = true;
                        break;
                    }
                    break;
                case 115:
                    if (nextName.equals("s")) {
                        z2 = true;
                        break;
                    }
                    break;
                case 116:
                    if (nextName.equals("t")) {
                        z2 = true;
                        break;
                    }
                    break;
                case 3261:
                    if (nextName.equals("fc")) {
                        z2 = true;
                        break;
                    }
                    break;
                case 3452:
                    if (nextName.equals("lh")) {
                        z2 = true;
                        break;
                    }
                    break;
                case 3463:
                    if (nextName.equals("ls")) {
                        z2 = true;
                        break;
                    }
                    break;
                case 3543:
                    if (nextName.equals("of")) {
                        z2 = true;
                        break;
                    }
                    break;
                case 3664:
                    if (nextName.equals("sc")) {
                        z2 = true;
                        break;
                    }
                    break;
                case 3684:
                    if (nextName.equals("sw")) {
                        z2 = true;
                        break;
                    }
                    break;
                case 3710:
                    if (nextName.equals("tr")) {
                        z2 = true;
                        break;
                    }
                    break;
            }
            switch (z2) {
                case false:
                    str2 = jsonReader.nextString();
                    break;
                case true:
                    int nextInt = jsonReader.nextInt();
                    if (nextInt <= 2 && nextInt >= 0) {
                        enumC21972a2 = C21971b.EnumC21972a.values()[nextInt];
                        break;
                    } else {
                        enumC21972a2 = enumC21972a;
                        break;
                    }
                case true:
                    c = jsonReader.nextDouble();
                    break;
                case true:
                    str = jsonReader.nextString();
                    break;
                case true:
                    i3 = C26232y.m2391Y0(jsonReader);
                    break;
                case true:
                    c2 = jsonReader.nextDouble();
                    break;
                case true:
                    c3 = jsonReader.nextDouble();
                    break;
                case true:
                    z = jsonReader.nextBoolean();
                    break;
                case true:
                    i2 = C26232y.m2391Y0(jsonReader);
                    break;
                case true:
                    c4 = jsonReader.nextDouble();
                    break;
                case true:
                    i = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new C21971b(str, str2, c, enumC21972a2, i, c2, c3, i3, i2, c4, z);
    }
}
