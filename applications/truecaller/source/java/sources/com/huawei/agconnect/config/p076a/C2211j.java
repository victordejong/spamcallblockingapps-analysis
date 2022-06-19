package com.huawei.agconnect.config.p076a;

import com.huawei.agconnect.AGCRoutePolicy;
import com.tenor.android.core.constant.StringConstant;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.agconnect.config.a.j */
/* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/config/a/j.class */
public final class C2211j {
    /* renamed from: a */
    public static AGCRoutePolicy m38273a(String str, String str2) {
        if (str != null) {
            boolean z = true;
            switch (str.hashCode()) {
                case 2155:
                    if (str.equals("CN")) {
                        z = false;
                        break;
                    }
                    break;
                case 2177:
                    if (str.equals("DE")) {
                        z = true;
                        break;
                    }
                    break;
                case 2627:
                    if (str.equals("RU")) {
                        z = true;
                        break;
                    }
                    break;
                case 2644:
                    if (str.equals("SG")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    return AGCRoutePolicy.CHINA;
                case true:
                    return AGCRoutePolicy.GERMANY;
                case true:
                    return AGCRoutePolicy.RUSSIA;
                case true:
                    return AGCRoutePolicy.SINGAPORE;
            }
        }
        if (str2 != null) {
            if (str2.contains("connect-drcn")) {
                return AGCRoutePolicy.CHINA;
            }
            if (str2.contains("connect-dre")) {
                return AGCRoutePolicy.GERMANY;
            }
            if (str2.contains("connect-drru")) {
                return AGCRoutePolicy.RUSSIA;
            }
            if (str2.contains("connect-dra")) {
                return AGCRoutePolicy.SINGAPORE;
            }
        }
        return AGCRoutePolicy.UNKNOWN;
    }

    /* renamed from: a */
    public static String m38277a(InputStream inputStream, String str) throws UnsupportedEncodingException, IOException {
        StringWriter stringWriter = new StringWriter();
        m38276a(new InputStreamReader(inputStream, str), stringWriter);
        return stringWriter.toString();
    }

    /* renamed from: a */
    public static String m38274a(String str) {
        int i = 0;
        int i2 = 0;
        if (str.length() > 0) {
            while (true) {
                i = i2;
                if (str.charAt(i2) != '/') {
                    break;
                }
                i2++;
            }
        }
        StringBuilder m8728C = C22128a.m8728C(StringConstant.SLASH);
        m8728C.append(str.substring(i));
        return m8728C.toString();
    }

    /* renamed from: a */
    public static Map<String, String> m38272a(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            hashMap.put(m38274a(entry.getKey()), entry.getValue());
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m38278a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m38276a(Reader reader, Writer writer) throws IOException {
        m38275a(reader, writer, new char[4096]);
    }

    /* renamed from: a */
    public static void m38275a(Reader reader, Writer writer, char[] cArr) throws IOException {
        while (true) {
            int read = reader.read(cArr);
            if (-1 != read) {
                writer.write(cArr, 0, read);
            } else {
                return;
            }
        }
    }
}
