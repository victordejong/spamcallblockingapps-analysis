package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import android.util.Xml;
import com.explorestack.iab.vast.VastLog;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.explorestack.iab.vast.tags.p */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/p.class */
public final class C9678p {
    /* renamed from: a */
    public static C9679q m23853a(InputStream inputStream) throws Exception {
        if (inputStream != null) {
            XmlPullParser newPullParser = Xml.newPullParser();
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            newPullParser.setInput(inputStream, null);
            int next = newPullParser.next();
            if (next == 1) {
                throw new Exception();
            }
            while (next != 3 && next != 1) {
                if (newPullParser.getEventType() != 2) {
                    next = newPullParser.next();
                } else if (C9680r.m23848a(newPullParser.getName(), "VAST")) {
                    return new C9679q(newPullParser);
                } else {
                    next = newPullParser.next();
                }
            }
            return null;
        }
        throw new Exception();
    }

    /* renamed from: a */
    public static C9679q m23852a(String str) throws Exception {
        Throwable th;
        Exception e;
        ByteArrayInputStream byteArrayInputStream;
        ByteArrayInputStream byteArrayInputStream2;
        if (!TextUtils.isEmpty(str)) {
            ByteArrayInputStream byteArrayInputStream3 = null;
            try {
                try {
                    byteArrayInputStream2 = new ByteArrayInputStream(str.getBytes(Charset.defaultCharset().name()));
                } catch (Exception e2) {
                    e = e2;
                    byteArrayInputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                C9679q m23853a = m23853a(byteArrayInputStream2);
                try {
                    byteArrayInputStream2.close();
                } catch (Exception e3) {
                    VastLog.m24017a("VastXmlParser", e3.getMessage(), e3);
                }
                return m23853a;
            } catch (Exception e4) {
                byteArrayInputStream = byteArrayInputStream2;
                e = e4;
                VastLog.m24017a("VastXmlParser", e.getMessage(), e);
                ByteArrayInputStream byteArrayInputStream4 = byteArrayInputStream;
                ByteArrayInputStream byteArrayInputStream5 = byteArrayInputStream;
                byteArrayInputStream3 = byteArrayInputStream;
                throw new Exception();
            } catch (Throwable th3) {
                th = th3;
                byteArrayInputStream3 = byteArrayInputStream2;
                if (byteArrayInputStream3 != null) {
                    try {
                        byteArrayInputStream3.close();
                    } catch (Exception e5) {
                        VastLog.m24017a("VastXmlParser", e5.getMessage(), e5);
                    }
                }
                throw th;
            }
        }
        throw new Exception();
    }
}
