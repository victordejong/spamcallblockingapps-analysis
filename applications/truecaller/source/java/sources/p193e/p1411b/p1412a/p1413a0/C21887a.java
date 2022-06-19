package p193e.p1411b.p1412a.p1413a0;

import android.graphics.Color;
import android.graphics.Rect;
import android.util.JsonReader;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import e.b.a.y.j.a;
import e.b.a.y.j.b;
import e.b.a.y.j.d;
import e.b.a.y.j.h;
import e.b.a.y.j.j;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import p1727n3.p1788g.C26179e;
import p1727n3.p1788g.C26188i;
import p1727n3.p1789g0.C26232y;
import p193e.p1411b.p1412a.C21906c;
import p193e.p1411b.p1412a.C21913e;
import p193e.p1411b.p1412a.C21938l;
import p193e.p1411b.p1412a.p1414b0.C21905e;
import p193e.p1411b.p1412a.p1415c0.C21907a;
import p193e.p1411b.p1412a.p1420y.C21973c;
import p193e.p1411b.p1412a.p1420y.C21974d;
import p193e.p1411b.p1412a.p1420y.C21978h;
import p193e.p1411b.p1412a.p1420y.p1421j.C21982k;
import p193e.p1411b.p1412a.p1420y.p1421j.C21983l;
import p193e.p1411b.p1412a.p1420y.p1422k.AbstractC21987b;
import p193e.p1411b.p1412a.p1420y.p1422k.C21992g;
import p193e.p1411b.p1412a.p1420y.p1422k.C22002n;
import p193e.p1411b.p1412a.p1420y.p1423l.C22010e;
/* renamed from: e.b.a.a0.a */
/* loaded from: classes-dex2jar.jar:e/b/a/a0/a.class */
public class C21887a {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Type inference failed for: r0v269, types: [double] */
    /* JADX WARN: Type inference failed for: r0v288, types: [double] */
    /* renamed from: a */
    public static C21913e m8943a(JsonReader jsonReader) throws IOException {
        boolean z;
        HashMap hashMap;
        ArrayList arrayList;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        int i;
        float f;
        ArrayList arrayList2;
        boolean z2;
        ArrayList arrayList3;
        boolean z3;
        boolean z4;
        boolean z5;
        float m8918c = C21905e.m8918c();
        C26179e<C22010e> c26179e = new C26179e<>(10);
        ArrayList arrayList4 = new ArrayList();
        HashMap hashMap5 = new HashMap();
        HashMap hashMap6 = new HashMap();
        HashMap hashMap7 = new HashMap();
        ArrayList arrayList5 = new ArrayList();
        C26188i<C21974d> c26188i = new C26188i<>();
        C21913e c21913e = new C21913e();
        jsonReader.beginObject();
        float f2 = 0.0f;
        int i2 = 0;
        int i3 = 0;
        float f3 = 0.0f;
        float f4 = 0.0f;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z6 = true;
            switch (nextName.hashCode()) {
                case -1408207997:
                    if (nextName.equals("assets")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case -1109732030:
                    if (nextName.equals("layers")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 104:
                    if (nextName.equals("h")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 118:
                    if (nextName.equals("v")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 119:
                    if (nextName.equals("w")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3276:
                    if (nextName.equals("fr")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3367:
                    if (nextName.equals("ip")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3553:
                    if (nextName.equals("op")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 94623709:
                    if (nextName.equals("chars")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 97615364:
                    if (nextName.equals("fonts")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 839250809:
                    if (nextName.equals("markers")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                    HashMap hashMap8 = hashMap5;
                    ArrayList arrayList6 = arrayList5;
                    HashMap hashMap9 = hashMap6;
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        ArrayList arrayList7 = new ArrayList();
                        C26179e c26179e2 = new C26179e(10);
                        jsonReader.beginObject();
                        String str = null;
                        String str2 = null;
                        String str3 = null;
                        int i4 = 0;
                        int i5 = 0;
                        while (jsonReader.hasNext()) {
                            String nextName2 = jsonReader.nextName();
                            nextName2.hashCode();
                            switch (nextName2.hashCode()) {
                                case -1109732030:
                                    if (nextName2.equals("layers")) {
                                        z2 = false;
                                        break;
                                    }
                                    z2 = true;
                                    break;
                                case 104:
                                    if (nextName2.equals("h")) {
                                        z2 = true;
                                        break;
                                    }
                                    z2 = true;
                                    break;
                                case 112:
                                    if (nextName2.equals("p")) {
                                        z2 = true;
                                        break;
                                    }
                                    z2 = true;
                                    break;
                                case 117:
                                    if (nextName2.equals("u")) {
                                        z2 = true;
                                        break;
                                    }
                                    z2 = true;
                                    break;
                                case 119:
                                    if (nextName2.equals("w")) {
                                        z2 = true;
                                        break;
                                    }
                                    z2 = true;
                                    break;
                                case 3355:
                                    if (nextName2.equals("id")) {
                                        z2 = true;
                                        break;
                                    }
                                    z2 = true;
                                    break;
                                default:
                                    z2 = true;
                                    break;
                            }
                            switch (z2) {
                                case false:
                                    jsonReader.beginArray();
                                    while (jsonReader.hasNext()) {
                                        C22010e m8940d = m8940d(jsonReader, c21913e);
                                        c26179e2.m2600k(m8940d.f61170d, m8940d);
                                        arrayList7.add(m8940d);
                                    }
                                    jsonReader.endArray();
                                    break;
                                case true:
                                    i5 = jsonReader.nextInt();
                                    break;
                                case true:
                                    str2 = jsonReader.nextString();
                                    break;
                                case true:
                                    str3 = jsonReader.nextString();
                                    break;
                                case true:
                                    i4 = jsonReader.nextInt();
                                    break;
                                case true:
                                    str = jsonReader.nextString();
                                    break;
                                default:
                                    jsonReader.skipValue();
                                    break;
                            }
                        }
                        jsonReader.endObject();
                        if (str2 != null) {
                            hashMap9.put(str, new C21938l(i4, i5, str, str2, str3));
                        } else {
                            hashMap8.put(str, arrayList7);
                        }
                    }
                    jsonReader.endArray();
                    hashMap3 = hashMap8;
                    hashMap4 = hashMap9;
                    i = i2;
                    f = f4;
                    arrayList2 = arrayList6;
                    arrayList3 = arrayList2;
                    f4 = f;
                    hashMap2 = hashMap4;
                    hashMap = hashMap3;
                    break;
                case true:
                    HashMap hashMap10 = hashMap5;
                    arrayList2 = arrayList5;
                    hashMap4 = hashMap6;
                    jsonReader.beginArray();
                    int i6 = 0;
                    while (jsonReader.hasNext()) {
                        C22010e m8940d2 = m8940d(jsonReader, c21913e);
                        int i7 = i6;
                        if (m8940d2.f61171e == C22010e.EnumC22011a.IMAGE) {
                            i7 = i6 + 1;
                        }
                        arrayList4.add(m8940d2);
                        c26179e.m2600k(m8940d2.f61170d, m8940d2);
                        i6 = i7;
                        if (i7 > 4) {
                            C21906c.m8915b("You have " + i7 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                            i6 = i7;
                        }
                    }
                    jsonReader.endArray();
                    hashMap3 = hashMap10;
                    i = i2;
                    f = f4;
                    arrayList3 = arrayList2;
                    f4 = f;
                    hashMap2 = hashMap4;
                    hashMap = hashMap3;
                    break;
                case true:
                    ArrayList arrayList8 = arrayList5;
                    i3 = jsonReader.nextInt();
                    hashMap = hashMap5;
                    hashMap2 = hashMap6;
                    arrayList = arrayList8;
                    continue;
                    HashMap hashMap11 = hashMap;
                    HashMap hashMap12 = hashMap2;
                    arrayList5 = arrayList;
                    hashMap5 = hashMap11;
                    hashMap6 = hashMap12;
                case true:
                    float f5 = m8918c;
                    HashMap hashMap13 = hashMap5;
                    ArrayList arrayList9 = arrayList5;
                    HashMap hashMap14 = hashMap6;
                    String[] split = jsonReader.nextString().split("\\.");
                    int parseInt = Integer.parseInt(split[0]);
                    int parseInt2 = Integer.parseInt(split[1]);
                    int parseInt3 = Integer.parseInt(split[2]);
                    if (parseInt < 4 || (parseInt <= 4 && (parseInt2 < 4 || (parseInt2 <= 4 && parseInt3 < 0)))) {
                        z6 = false;
                    }
                    hashMap3 = hashMap13;
                    hashMap4 = hashMap14;
                    i = i2;
                    f = f4;
                    arrayList2 = arrayList9;
                    m8918c = f5;
                    if (!z6) {
                        c21913e.f60825b.add("Lottie only supports bodymovin >= 4.4.0");
                        hashMap3 = hashMap13;
                        hashMap4 = hashMap14;
                        i = i2;
                        f = f4;
                        arrayList2 = arrayList9;
                        m8918c = f5;
                    }
                    arrayList3 = arrayList2;
                    f4 = f;
                    hashMap2 = hashMap4;
                    hashMap = hashMap3;
                    break;
                case true:
                    HashMap hashMap15 = hashMap5;
                    i = jsonReader.nextInt();
                    arrayList2 = arrayList5;
                    f = f4;
                    hashMap4 = hashMap6;
                    hashMap3 = hashMap15;
                    arrayList3 = arrayList2;
                    f4 = f;
                    hashMap2 = hashMap4;
                    hashMap = hashMap3;
                    break;
                case true:
                    HashMap hashMap16 = hashMap5;
                    arrayList2 = arrayList5;
                    hashMap4 = hashMap6;
                    f = (float) jsonReader.nextDouble();
                    hashMap3 = hashMap16;
                    i = i2;
                    arrayList3 = arrayList2;
                    f4 = f;
                    hashMap2 = hashMap4;
                    hashMap = hashMap3;
                    break;
                case true:
                    ArrayList arrayList10 = arrayList5;
                    f3 = (float) jsonReader.nextDouble();
                    hashMap = hashMap5;
                    hashMap2 = hashMap6;
                    arrayList = arrayList10;
                    continue;
                    HashMap hashMap112 = hashMap;
                    HashMap hashMap122 = hashMap2;
                    arrayList5 = arrayList;
                    hashMap5 = hashMap112;
                    hashMap6 = hashMap122;
                case true:
                    arrayList3 = arrayList5;
                    f2 = ((float) jsonReader.nextDouble()) - 0.01f;
                    hashMap = hashMap5;
                    hashMap2 = hashMap6;
                    i = i2;
                    break;
                case true:
                    HashMap hashMap17 = hashMap5;
                    arrayList2 = arrayList5;
                    hashMap4 = hashMap6;
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        ArrayList arrayList11 = new ArrayList();
                        jsonReader.beginObject();
                        char c = 0;
                        char c2 = 0;
                        String str4 = null;
                        String str5 = null;
                        char c3 = 0;
                        while (jsonReader.hasNext()) {
                            String nextName3 = jsonReader.nextName();
                            nextName3.hashCode();
                            switch (nextName3.hashCode()) {
                                case -1866931350:
                                    if (nextName3.equals("fFamily")) {
                                        z3 = false;
                                        break;
                                    }
                                    z3 = true;
                                    break;
                                case 119:
                                    if (nextName3.equals("w")) {
                                        z3 = true;
                                        break;
                                    }
                                    z3 = true;
                                    break;
                                case 3173:
                                    if (nextName3.equals("ch")) {
                                        z3 = true;
                                        break;
                                    }
                                    z3 = true;
                                    break;
                                case 3076010:
                                    if (nextName3.equals(RemoteMessageConst.DATA)) {
                                        z3 = true;
                                        break;
                                    }
                                    z3 = true;
                                    break;
                                case 3530753:
                                    if (nextName3.equals("size")) {
                                        z3 = true;
                                        break;
                                    }
                                    z3 = true;
                                    break;
                                case 109780401:
                                    if (nextName3.equals("style")) {
                                        z3 = true;
                                        break;
                                    }
                                    z3 = true;
                                    break;
                                default:
                                    z3 = true;
                                    break;
                            }
                            switch (z3) {
                                case false:
                                    str5 = jsonReader.nextString();
                                    break;
                                case true:
                                    c2 = jsonReader.nextDouble();
                                    break;
                                case true:
                                    c3 = jsonReader.nextString().charAt(0);
                                    break;
                                case true:
                                    jsonReader.beginObject();
                                    while (jsonReader.hasNext()) {
                                        if ("shapes".equals(jsonReader.nextName())) {
                                            jsonReader.beginArray();
                                            while (jsonReader.hasNext()) {
                                                arrayList11.add((C22002n) m8941c(jsonReader, c21913e));
                                            }
                                            jsonReader.endArray();
                                        } else {
                                            jsonReader.skipValue();
                                        }
                                    }
                                    jsonReader.endObject();
                                    break;
                                case true:
                                    c = jsonReader.nextDouble();
                                    break;
                                case true:
                                    str4 = jsonReader.nextString();
                                    break;
                                default:
                                    jsonReader.skipValue();
                                    break;
                            }
                        }
                        jsonReader.endObject();
                        C21974d c21974d = new C21974d(arrayList11, c3, c, c2, str4, str5);
                        c26188i.m2564i(c21974d.hashCode(), c21974d);
                    }
                    jsonReader.endArray();
                    hashMap3 = hashMap17;
                    i = i2;
                    f = f4;
                    arrayList3 = arrayList2;
                    f4 = f;
                    hashMap2 = hashMap4;
                    hashMap = hashMap3;
                    break;
                case true:
                    jsonReader.beginObject();
                    HashMap hashMap18 = hashMap6;
                    while (jsonReader.hasNext()) {
                        String nextName4 = jsonReader.nextName();
                        nextName4.hashCode();
                        if (!nextName4.equals("list")) {
                            jsonReader.skipValue();
                        } else {
                            jsonReader.beginArray();
                            ArrayList arrayList12 = arrayList5;
                            HashMap hashMap19 = hashMap18;
                            HashMap hashMap20 = hashMap5;
                            while (jsonReader.hasNext()) {
                                jsonReader.beginObject();
                                String str6 = null;
                                float f6 = 0.0f;
                                String str7 = null;
                                ArrayList arrayList13 = arrayList12;
                                HashMap hashMap21 = hashMap19;
                                HashMap hashMap22 = hashMap20;
                                String str8 = null;
                                while (jsonReader.hasNext()) {
                                    String nextName5 = jsonReader.nextName();
                                    nextName5.hashCode();
                                    switch (nextName5.hashCode()) {
                                        case -1866931350:
                                            if (nextName5.equals("fFamily")) {
                                                z4 = false;
                                                break;
                                            }
                                            z4 = true;
                                            break;
                                        case -1408684838:
                                            if (nextName5.equals("ascent")) {
                                                z4 = true;
                                                break;
                                            }
                                            z4 = true;
                                            break;
                                        case -1294566165:
                                            if (nextName5.equals("fStyle")) {
                                                z4 = true;
                                                break;
                                            }
                                            z4 = true;
                                            break;
                                        case 96619537:
                                            if (nextName5.equals("fName")) {
                                                z4 = true;
                                                break;
                                            }
                                            z4 = true;
                                            break;
                                        default:
                                            z4 = true;
                                            break;
                                    }
                                    switch (z4) {
                                        case false:
                                            str8 = jsonReader.nextString();
                                            break;
                                        case true:
                                            f6 = (float) jsonReader.nextDouble();
                                            break;
                                        case true:
                                            str6 = jsonReader.nextString();
                                            break;
                                        case true:
                                            str7 = jsonReader.nextString();
                                            break;
                                        default:
                                            jsonReader.skipValue();
                                            break;
                                    }
                                }
                                jsonReader.endObject();
                                hashMap7.put(str7, new C21973c(str8, str7, str6, f6));
                                hashMap20 = hashMap22;
                                arrayList12 = arrayList13;
                                hashMap19 = hashMap21;
                            }
                            jsonReader.endArray();
                            hashMap5 = hashMap20;
                            hashMap18 = hashMap19;
                            arrayList5 = arrayList12;
                        }
                    }
                    hashMap3 = hashMap5;
                    arrayList2 = arrayList5;
                    hashMap4 = hashMap18;
                    jsonReader.endObject();
                    i = i2;
                    f = f4;
                    arrayList3 = arrayList2;
                    f4 = f;
                    hashMap2 = hashMap4;
                    hashMap = hashMap3;
                    break;
                case true:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        String str9 = null;
                        float f7 = 0.0f;
                        float f8 = 0.0f;
                        while (jsonReader.hasNext()) {
                            String nextName6 = jsonReader.nextName();
                            nextName6.hashCode();
                            switch (nextName6.hashCode()) {
                                case 3178:
                                    if (nextName6.equals("cm")) {
                                        z5 = false;
                                        break;
                                    }
                                    z5 = true;
                                    break;
                                case 3214:
                                    if (nextName6.equals("dr")) {
                                        z5 = true;
                                        break;
                                    }
                                    z5 = true;
                                    break;
                                case 3705:
                                    if (nextName6.equals("tm")) {
                                        z5 = true;
                                        break;
                                    }
                                    z5 = true;
                                    break;
                                default:
                                    z5 = true;
                                    break;
                            }
                            switch (z5) {
                                case false:
                                    str9 = jsonReader.nextString();
                                    break;
                                case true:
                                    f8 = (float) jsonReader.nextDouble();
                                    break;
                                case true:
                                    f7 = (float) jsonReader.nextDouble();
                                    break;
                                default:
                                    jsonReader.skipValue();
                                    break;
                            }
                        }
                        jsonReader.endObject();
                        arrayList5.add(new C21978h(str9, f7, f8));
                    }
                    jsonReader.endArray();
                    HashMap hashMap23 = hashMap5;
                    arrayList2 = arrayList5;
                    hashMap4 = hashMap6;
                    hashMap3 = hashMap23;
                    i = i2;
                    f = f4;
                    arrayList3 = arrayList2;
                    f4 = f;
                    hashMap2 = hashMap4;
                    hashMap = hashMap3;
                    break;
                default:
                    jsonReader.skipValue();
                    HashMap hashMap232 = hashMap5;
                    arrayList2 = arrayList5;
                    hashMap4 = hashMap6;
                    hashMap3 = hashMap232;
                    i = i2;
                    f = f4;
                    arrayList3 = arrayList2;
                    f4 = f;
                    hashMap2 = hashMap4;
                    hashMap = hashMap3;
                    break;
            }
            arrayList = arrayList3;
            i2 = i;
            HashMap hashMap1122 = hashMap;
            HashMap hashMap1222 = hashMap2;
            arrayList5 = arrayList;
            hashMap5 = hashMap1122;
            hashMap6 = hashMap1222;
        }
        jsonReader.endObject();
        c21913e.f60833j = new Rect(0, 0, (int) (i2 * m8918c), (int) (i3 * m8918c));
        c21913e.f60834k = f3;
        c21913e.f60835l = f2;
        c21913e.f60836m = f4;
        c21913e.f60832i = arrayList4;
        c21913e.f60831h = c26179e;
        c21913e.f60826c = hashMap5;
        c21913e.f60827d = hashMap6;
        c21913e.f60830g = c26188i;
        c21913e.f60828e = hashMap7;
        c21913e.f60829f = arrayList5;
        return c21913e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:139:0x03ca, code lost:
        if ((r0.f60821a == 1.0f && r0.f60822b == 1.0f) != false) goto L141;
     */
    /* JADX WARN: Removed duplicated region for block: B:144:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x01a7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x01b3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x01bf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x01cb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x01d9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x01e5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x01fa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0273 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x027d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0287 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x01a0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0234 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x020e A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p193e.p1411b.p1412a.p1420y.p1421j.C21983l m8942b(android.util.JsonReader r12, p193e.p1411b.p1412a.C21913e r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1145
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1411b.p1412a.p1413a0.C21887a.m8942b(android.util.JsonReader, e.b.a.e):e.b.a.y.j.l");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: CFG modification limit reached, blocks count: 1000
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:70)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    /* renamed from: c */
    public static p193e.p1411b.p1412a.p1420y.p1422k.AbstractC21987b m8941c(android.util.JsonReader r16, p193e.p1411b.p1412a.C21913e r17) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 5794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1411b.p1412a.p1413a0.C21887a.m8941c(android.util.JsonReader, e.b.a.e):e.b.a.y.k.b");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Type inference failed for: r0v249, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* renamed from: d */
    public static C22010e m8940d(JsonReader jsonReader, C21913e c21913e) throws IOException {
        boolean z;
        boolean z2;
        C22010e.EnumC22012b enumC22012b;
        String str;
        boolean z3;
        C22010e.EnumC22012b enumC22012b2 = C22010e.EnumC22012b.NONE;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        jsonReader.beginObject();
        Float valueOf = Float.valueOf(1.0f);
        Float valueOf2 = Float.valueOf(0.0f);
        float f = 1.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        char c = 65535;
        String str2 = null;
        C22010e.EnumC22011a enumC22011a = null;
        String str3 = null;
        C21983l c21983l = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        j jVar = null;
        C21982k c21982k = null;
        b bVar = null;
        boolean z4 = false;
        char c2 = 0;
        String str4 = "UNSET";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            switch (nextName.hashCode()) {
                case -995424086:
                    if (nextName.equals("parent")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case -903568142:
                    if (nextName.equals("shapes")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 104:
                    if (nextName.equals("h")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 116:
                    if (nextName.equals("t")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 119:
                    if (nextName.equals("w")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3177:
                    if (nextName.equals("cl")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3233:
                    if (nextName.equals("ef")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3367:
                    if (nextName.equals("ip")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3432:
                    if (nextName.equals("ks")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3553:
                    if (nextName.equals("op")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3664:
                    if (nextName.equals("sc")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3669:
                    if (nextName.equals("sh")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3679:
                    if (nextName.equals("sr")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3681:
                    if (nextName.equals("st")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3684:
                    if (nextName.equals("sw")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3705:
                    if (nextName.equals("tm")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3712:
                    if (nextName.equals("tt")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 3717:
                    if (nextName.equals("ty")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 104415:
                    if (nextName.equals("ind")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 108390670:
                    if (nextName.equals("refId")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1441620890:
                    if (nextName.equals("masksProperties")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                    c = jsonReader.nextInt();
                    continue;
                case true:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        AbstractC21987b m8941c = m8941c(jsonReader, c21913e);
                        if (m8941c != null) {
                            arrayList2.add(m8941c);
                        }
                    }
                    jsonReader.endArray();
                    continue;
                case true:
                    i5 = (int) (C21905e.m8918c() * jsonReader.nextInt());
                    continue;
                case true:
                    jsonReader.beginObject();
                    C21982k c21982k2 = c21982k;
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        nextName2.hashCode();
                        if (nextName2.equals("a")) {
                            jsonReader.beginArray();
                            if (jsonReader.hasNext()) {
                                jsonReader.beginObject();
                                c21982k2 = null;
                                while (jsonReader.hasNext()) {
                                    String nextName3 = jsonReader.nextName();
                                    nextName3.hashCode();
                                    if (!nextName3.equals("a")) {
                                        jsonReader.skipValue();
                                    } else {
                                        jsonReader.beginObject();
                                        b bVar2 = null;
                                        b bVar3 = null;
                                        a aVar = null;
                                        a aVar2 = null;
                                        while (jsonReader.hasNext()) {
                                            String nextName4 = jsonReader.nextName();
                                            nextName4.hashCode();
                                            switch (nextName4.hashCode()) {
                                                case 116:
                                                    if (nextName4.equals("t")) {
                                                        z2 = false;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                case 3261:
                                                    if (nextName4.equals("fc")) {
                                                        z2 = true;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                case 3664:
                                                    if (nextName4.equals("sc")) {
                                                        z2 = true;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                case 3684:
                                                    if (nextName4.equals("sw")) {
                                                        z2 = true;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                default:
                                                    z2 = true;
                                                    break;
                                            }
                                            switch (z2) {
                                                case false:
                                                    bVar2 = C26232y.m2304s1(jsonReader, c21913e);
                                                    break;
                                                case true:
                                                    aVar = C26232y.m2312q1(jsonReader, c21913e);
                                                    break;
                                                case true:
                                                    aVar2 = C26232y.m2312q1(jsonReader, c21913e);
                                                    break;
                                                case true:
                                                    bVar3 = C26232y.m2304s1(jsonReader, c21913e);
                                                    break;
                                                default:
                                                    jsonReader.skipValue();
                                                    break;
                                            }
                                        }
                                        jsonReader.endObject();
                                        c21982k2 = new C21982k(aVar, aVar2, bVar3, bVar2);
                                    }
                                }
                                jsonReader.endObject();
                                if (c21982k2 == null) {
                                    c21982k2 = new C21982k(null, null, null, null);
                                }
                            }
                            while (jsonReader.hasNext()) {
                                jsonReader.skipValue();
                            }
                            jsonReader.endArray();
                        } else if (!nextName2.equals("d")) {
                            jsonReader.skipValue();
                        } else {
                            jVar = new j(C26232y.m2324n1(jsonReader, c21913e, C21889c.f60770a));
                        }
                    }
                    jsonReader.endObject();
                    c21982k = c21982k2;
                    continue;
                case true:
                    i4 = (int) (C21905e.m8918c() * jsonReader.nextInt());
                    continue;
                case true:
                    str2 = jsonReader.nextString();
                    continue;
                case true:
                    jsonReader.beginArray();
                    ArrayList arrayList3 = new ArrayList();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String nextName5 = jsonReader.nextName();
                            nextName5.hashCode();
                            if (!nextName5.equals("nm")) {
                                jsonReader.skipValue();
                            } else {
                                arrayList3.add(jsonReader.nextString());
                            }
                        }
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    c21913e.f60825b.add("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList3);
                    continue;
                case true:
                    z4 = jsonReader.nextBoolean();
                    continue;
                case true:
                    f2 = (float) jsonReader.nextDouble();
                    continue;
                case true:
                    c21983l = m8942b(jsonReader, c21913e);
                    continue;
                case true:
                    str4 = jsonReader.nextString();
                    continue;
                case true:
                    f3 = (float) jsonReader.nextDouble();
                    continue;
                case true:
                    i3 = Color.parseColor(jsonReader.nextString());
                    continue;
                case true:
                    i2 = (int) (C21905e.m8918c() * jsonReader.nextInt());
                    continue;
                case true:
                    f = (float) jsonReader.nextDouble();
                    continue;
                case true:
                    f4 = (float) jsonReader.nextDouble();
                    continue;
                case true:
                    i = (int) (C21905e.m8918c() * jsonReader.nextInt());
                    continue;
                case true:
                    bVar = C26232y.m2300t1(jsonReader, c21913e, false);
                    continue;
                case true:
                    enumC22012b = C22010e.EnumC22012b.values()[jsonReader.nextInt()];
                    c21913e.f60838o++;
                    str = str3;
                    break;
                case true:
                    int nextInt = jsonReader.nextInt();
                    enumC22011a = C22010e.EnumC22011a.UNKNOWN;
                    str = str3;
                    enumC22012b = enumC22012b2;
                    if (nextInt < 6) {
                        enumC22011a = C22010e.EnumC22011a.values()[nextInt];
                        str = str3;
                        enumC22012b = enumC22012b2;
                        break;
                    }
                    break;
                case true:
                    c2 = jsonReader.nextInt();
                    continue;
                case true:
                    str = jsonReader.nextString();
                    enumC22012b = enumC22012b2;
                    break;
                case true:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        C21992g.EnumC21993a enumC21993a = C21992g.EnumC21993a.MASK_MODE_ADD;
                        jsonReader.beginObject();
                        C21992g.EnumC21993a enumC21993a2 = null;
                        h hVar = null;
                        d dVar = null;
                        boolean z5 = false;
                        while (jsonReader.hasNext()) {
                            String nextName6 = jsonReader.nextName();
                            nextName6.hashCode();
                            switch (nextName6.hashCode()) {
                                case 111:
                                    if (nextName6.equals("o")) {
                                        z3 = false;
                                        break;
                                    }
                                    z3 = true;
                                    break;
                                case 3588:
                                    if (nextName6.equals("pt")) {
                                        z3 = true;
                                        break;
                                    }
                                    z3 = true;
                                    break;
                                case 104433:
                                    if (nextName6.equals("inv")) {
                                        z3 = true;
                                        break;
                                    }
                                    z3 = true;
                                    break;
                                case 3357091:
                                    if (nextName6.equals(AnalyticsConstants.MODE)) {
                                        z3 = true;
                                        break;
                                    }
                                    z3 = true;
                                    break;
                                default:
                                    z3 = true;
                                    break;
                            }
                            switch (z3) {
                                case false:
                                    dVar = C26232y.m2296u1(jsonReader, c21913e);
                                    break;
                                case true:
                                    hVar = new h(C26232y.m2328m1(jsonReader, c21913e, C21905e.m8918c(), C21898l.f60780a));
                                    break;
                                case true:
                                    z5 = jsonReader.nextBoolean();
                                    break;
                                case true:
                                    String nextString = jsonReader.nextString();
                                    nextString.hashCode();
                                    if (nextString.equals("i")) {
                                        c21913e.f60825b.add("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                                        enumC21993a2 = C21992g.EnumC21993a.MASK_MODE_INTERSECT;
                                        break;
                                    } else if (nextString.equals("s")) {
                                        enumC21993a2 = C21992g.EnumC21993a.MASK_MODE_SUBTRACT;
                                        break;
                                    } else {
                                        enumC21993a2 = enumC21993a;
                                        break;
                                    }
                                default:
                                    jsonReader.skipValue();
                                    break;
                            }
                        }
                        jsonReader.endObject();
                        arrayList.add(new C21992g(enumC21993a2, hVar, dVar, z5));
                    }
                    c21913e.f60838o += arrayList.size();
                    jsonReader.endArray();
                    continue;
                default:
                    jsonReader.skipValue();
                    continue;
            }
            str3 = str;
            enumC22012b2 = enumC22012b;
        }
        jsonReader.endObject();
        float f5 = f2 / f;
        float f6 = f3 / f;
        ArrayList arrayList4 = new ArrayList();
        if (f5 > 0.0f) {
            arrayList4.add(new C21907a(c21913e, valueOf2, valueOf2, null, 0.0f, Float.valueOf(f5)));
        }
        if (f6 <= 0.0f) {
            f6 = c21913e.f60835l;
        }
        arrayList4.add(new C21907a(c21913e, valueOf, valueOf, null, f5, Float.valueOf(f6)));
        arrayList4.add(new C21907a(c21913e, valueOf2, valueOf2, null, f6, Float.valueOf(Float.MAX_VALUE)));
        if (str4.endsWith(".ai") || "ai".equals(str2)) {
            c21913e.f60825b.add("Convert your Illustrator layers to shape layers.");
        }
        return new C22010e(arrayList2, c21913e, str4, c2, enumC22011a, c, str3, arrayList, c21983l, i, i2, i3, f, f4, i4, i5, jVar, c21982k, arrayList4, enumC22012b2, bVar, z4);
    }
}
