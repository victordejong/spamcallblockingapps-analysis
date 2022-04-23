package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import android.util.Xml;
import com.explorestack.iab.vast.VastLog;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/p.class */
public final class p {
    public static q a(InputStream inputStream) throws Exception {
        if (inputStream != null) {
            XmlPullParser newPullParser = Xml.newPullParser();
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            newPullParser.setInput(inputStream, null);
            int next = newPullParser.next();
            if (next != 1) {
                while (next != 3 && next != 1) {
                    if (newPullParser.getEventType() != 2) {
                        next = newPullParser.next();
                    } else if (r.a(newPullParser.getName(), "VAST")) {
                        return new q(newPullParser);
                    } else {
                        next = newPullParser.next();
                    }
                }
                return null;
            }
            throw new Exception();
        }
        throw new Exception();
    }

    public static q a(String str) throws Exception {
        Throwable th;
        Exception e;
        ByteArrayInputStream byteArrayInputStream;
        if (!TextUtils.isEmpty(str)) {
            r4 = null;
            ByteArrayInputStream byteArrayInputStream2 = null;
            try {
                try {
                    byteArrayInputStream = new ByteArrayInputStream(str.getBytes(Charset.defaultCharset().name()));
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                q a2 = a(byteArrayInputStream);
                try {
                    byteArrayInputStream.close();
                } catch (Exception e3) {
                    VastLog.a("VastXmlParser", e3.getMessage(), e3);
                }
                return a2;
            } catch (Exception e4) {
                e = e4;
                byteArrayInputStream2 = byteArrayInputStream;
                VastLog.a("VastXmlParser", e.getMessage(), e);
                throw new Exception();
            } catch (Throwable th3) {
                th = th3;
                byteArrayInputStream2 = byteArrayInputStream;
                if (byteArrayInputStream2 != null) {
                    try {
                        byteArrayInputStream2.close();
                    } catch (Exception e5) {
                        VastLog.a("VastXmlParser", e5.getMessage(), e5);
                    }
                }
                throw th;
            }
        } else {
            throw new Exception();
        }
    }
}
