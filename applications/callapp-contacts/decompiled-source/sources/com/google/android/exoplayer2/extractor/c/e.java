package com.google.android.exoplayer2.extractor.c;

import com.google.android.exoplayer2.extractor.c.b;
import com.google.android.exoplayer2.util.ag;
import com.google.common.collect.v;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/c/e.class */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f20955a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f20956b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f20957c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    private e() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.extractor.c.b a(java.lang.String r6) throws java.io.IOException {
        /*
            org.xmlpull.v1.XmlPullParserFactory r0 = org.xmlpull.v1.XmlPullParserFactory.newInstance()     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            org.xmlpull.v1.XmlPullParser r0 = r0.newPullParser()     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            r7 = r0
            java.io.StringReader r0 = new java.io.StringReader     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            r8 = r0
            r0 = r8
            r1 = r6
            r0.<init>(r1)     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            r0 = r7
            r1 = r8
            r0.setInput(r1)     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            r0 = r7
            int r0 = r0.next()     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            r0 = r7
            java.lang.String r1 = "x:xmpmeta"
            boolean r0 = com.google.android.exoplayer2.util.ag.b(r0, r1)     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            if (r0 == 0) goto L_0x00ac
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r9 = r0
            com.google.common.collect.v r0 = com.google.common.collect.v.g()     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            r8 = r0
        L_0x002f:
            r0 = r7
            int r0 = r0.next()     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            r0 = r7
            java.lang.String r1 = "rdf:Description"
            boolean r0 = com.google.android.exoplayer2.util.ag.b(r0, r1)     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            if (r0 == 0) goto L_0x0056
            r0 = r7
            boolean r0 = a(r0)     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            if (r0 != 0) goto L_0x0048
            r0 = 0
            return r0
        L_0x0048:
            r0 = r7
            long r0 = b(r0)     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            r11 = r0
            r0 = r7
            com.google.common.collect.v r0 = c(r0)     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            r6 = r0
            goto L_0x0088
        L_0x0056:
            r0 = r7
            java.lang.String r1 = "Container:Directory"
            boolean r0 = com.google.android.exoplayer2.util.ag.b(r0, r1)     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            if (r0 == 0) goto L_0x006e
            r0 = r7
            java.lang.String r1 = "Container"
            java.lang.String r2 = "Item"
            com.google.common.collect.v r0 = a(r0, r1, r2)     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            r6 = r0
            r0 = r9
            r11 = r0
            goto L_0x0088
        L_0x006e:
            r0 = r9
            r11 = r0
            r0 = r8
            r6 = r0
            r0 = r7
            java.lang.String r1 = "GContainer:Directory"
            boolean r0 = com.google.android.exoplayer2.util.ag.b(r0, r1)     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            if (r0 == 0) goto L_0x0088
            r0 = r7
            java.lang.String r1 = "GContainer"
            java.lang.String r2 = "GContainerItem"
            com.google.common.collect.v r0 = a(r0, r1, r2)     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            r6 = r0
            r0 = r9
            r11 = r0
        L_0x0088:
            r0 = r11
            r9 = r0
            r0 = r6
            r8 = r0
            r0 = r7
            java.lang.String r1 = "x:xmpmeta"
            boolean r0 = com.google.android.exoplayer2.util.ag.a(r0, r1)     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            if (r0 == 0) goto L_0x002f
            r0 = r6
            boolean r0 = r0.isEmpty()     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            if (r0 == 0) goto L_0x00a1
            r0 = 0
            return r0
        L_0x00a1:
            com.google.android.exoplayer2.extractor.c.b r0 = new com.google.android.exoplayer2.extractor.c.b     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            r1 = r0
            r2 = r11
            r3 = r6
            r1.<init>(r2, r3)     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            return r0
        L_0x00ac:
            com.google.android.exoplayer2.ParserException r0 = new com.google.android.exoplayer2.ParserException     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8, XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Couldn't find xmp metadata"
            r0.<init>(r1)     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
            r0 = r6
            throw r0     // Catch: XmlPullParserException | ParserException | NumberFormatException -> 0x00b8
        L_0x00b8:
            r6 = move-exception
            java.lang.String r0 = "MotionPhotoXmpParser"
            java.lang.String r1 = "Ignoring unexpected XMP metadata"
            com.google.android.exoplayer2.util.n.a(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.c.e.a(java.lang.String):com.google.android.exoplayer2.extractor.c.b");
    }

    private static v<b.a> a(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        v.a i = v.i();
        String str3 = str + ":Item";
        String str4 = str + ":Directory";
        do {
            xmlPullParser.next();
            if (ag.b(xmlPullParser, str3)) {
                String c2 = ag.c(xmlPullParser, str2 + ":Mime");
                String c3 = ag.c(xmlPullParser, str2 + ":Semantic");
                String c4 = ag.c(xmlPullParser, str2 + ":Length");
                String c5 = ag.c(xmlPullParser, str2 + ":Padding");
                if (c2 == null || c3 == null) {
                    return v.g();
                }
                i.b(new b.a(c2, c3, c4 != null ? Long.parseLong(c4) : 0L, c5 != null ? Long.parseLong(c5) : 0L));
            }
        } while (!ag.a(xmlPullParser, str4));
        return i.a();
    }

    private static boolean a(XmlPullParser xmlPullParser) {
        for (String str : f20955a) {
            String c2 = ag.c(xmlPullParser, str);
            if (c2 != null) {
                return Integer.parseInt(c2) == 1;
            }
        }
        return false;
    }

    private static long b(XmlPullParser xmlPullParser) {
        for (String str : f20956b) {
            String c2 = ag.c(xmlPullParser, str);
            if (c2 != null) {
                long parseLong = Long.parseLong(c2);
                if (parseLong == -1) {
                    return -9223372036854775807L;
                }
                return parseLong;
            }
        }
        return -9223372036854775807L;
    }

    private static v<b.a> c(XmlPullParser xmlPullParser) {
        for (String str : f20957c) {
            String c2 = ag.c(xmlPullParser, str);
            if (c2 != null) {
                return v.a(new b.a("image/jpeg", "Primary", 0L, 0L), new b.a("video/mp4", "MotionPhoto", Long.parseLong(c2), 0L));
            }
        }
        return v.g();
    }
}
