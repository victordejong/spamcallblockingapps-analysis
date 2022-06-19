package com.google.android.exoplayer2.extractor.p329c;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.p329c.C10992b;
import com.google.android.exoplayer2.util.C11600ag;
import com.google.android.exoplayer2.util.C11617n;
import com.google.common.collect.AbstractC15549v;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* renamed from: com.google.android.exoplayer2.extractor.c.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/c/e.class */
final class C10997e {

    /* renamed from: a */
    private static final String[] f35593a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* renamed from: b */
    private static final String[] f35594b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* renamed from: c */
    private static final String[] f35595c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    private C10997e() {
    }

    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* renamed from: a */
    public static C10992b m21757a(String str) throws IOException {
        char c;
        AbstractC15549v<C10992b.C10993a> abstractC15549v;
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            newPullParser.setInput(new StringReader(str));
            newPullParser.next();
            if (!C11600ag.m19915b(newPullParser, "x:xmpmeta")) {
                throw new ParserException("Couldn't find xmp metadata");
            }
            char c2 = 1;
            AbstractC15549v<C10992b.C10993a> m8720g = AbstractC15549v.m8720g();
            do {
                newPullParser.next();
                if (C11600ag.m19915b(newPullParser, "rdf:Description")) {
                    if (!m21756a(newPullParser)) {
                        return null;
                    }
                    c = m21754b(newPullParser);
                    abstractC15549v = m21753c(newPullParser);
                } else if (C11600ag.m19915b(newPullParser, "Container:Directory")) {
                    abstractC15549v = m21755a(newPullParser, "Container", "Item");
                    c = c2;
                } else {
                    c = c2;
                    abstractC15549v = m8720g;
                    if (C11600ag.m19915b(newPullParser, "GContainer:Directory")) {
                        abstractC15549v = m21755a(newPullParser, "GContainer", "GContainerItem");
                        c = c2;
                    }
                }
                c2 = c;
                m8720g = abstractC15549v;
            } while (!C11600ag.m19917a(newPullParser, "x:xmpmeta"));
            if (!abstractC15549v.isEmpty()) {
                return new C10992b(c, abstractC15549v);
            }
            return null;
        } catch (ParserException | NumberFormatException | XmlPullParserException e) {
            C11617n.m19863a("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* renamed from: a */
    private static AbstractC15549v<C10992b.C10993a> m21755a(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        AbstractC15549v.C15550a m8718i = AbstractC15549v.m8718i();
        String str3 = str + ":Item";
        String str4 = str + ":Directory";
        do {
            xmlPullParser.next();
            if (C11600ag.m19915b(xmlPullParser, str3)) {
                String m19914c = C11600ag.m19914c(xmlPullParser, str2 + ":Mime");
                String m19914c2 = C11600ag.m19914c(xmlPullParser, str2 + ":Semantic");
                String m19914c3 = C11600ag.m19914c(xmlPullParser, str2 + ":Length");
                String m19914c4 = C11600ag.m19914c(xmlPullParser, str2 + ":Padding");
                if (m19914c == null || m19914c2 == null) {
                    return AbstractC15549v.m8720g();
                }
                m8718i.m8715b(new C10992b.C10993a(m19914c, m19914c2, (m19914c3 != null ? Long.parseLong(m19914c3) : false) == true ? 1L : 0L, (m19914c4 != null ? Long.parseLong(m19914c4) : false) == true ? 1L : 0L));
            }
        } while (!C11600ag.m19917a(xmlPullParser, str4));
        return m8718i.m8717a();
    }

    /* renamed from: a */
    private static boolean m21756a(XmlPullParser xmlPullParser) {
        for (String str : f35593a) {
            String m19914c = C11600ag.m19914c(xmlPullParser, str);
            if (m19914c != null) {
                return Integer.parseInt(m19914c) == 1;
            }
        }
        return false;
    }

    /* renamed from: b */
    private static long m21754b(XmlPullParser xmlPullParser) {
        for (String str : f35594b) {
            String m19914c = C11600ag.m19914c(xmlPullParser, str);
            if (m19914c != null) {
                long parseLong = Long.parseLong(m19914c);
                if (parseLong != -1) {
                    return parseLong;
                }
                return -9223372036854775807L;
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: c */
    private static AbstractC15549v<C10992b.C10993a> m21753c(XmlPullParser xmlPullParser) {
        for (String str : f35595c) {
            String m19914c = C11600ag.m19914c(xmlPullParser, str);
            if (m19914c != null) {
                return AbstractC15549v.m8727a(new C10992b.C10993a("image/jpeg", "Primary", 0L, 0L), new C10992b.C10993a("video/mp4", "MotionPhoto", Long.parseLong(m19914c), 0L));
            }
        }
        return AbstractC15549v.m8720g();
    }
}
