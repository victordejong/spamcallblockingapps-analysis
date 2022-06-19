package com.amazonaws.util;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/VersionInfoUtils.class */
public class VersionInfoUtils {

    /* renamed from: a */
    private static volatile String f12527a = "2.22.1";

    /* renamed from: b */
    private static volatile String f12528b = "android";

    /* renamed from: c */
    private static volatile String f12529c;

    /* renamed from: d */
    private static final Log f12530d = LogFactory.m38584a(VersionInfoUtils.class);

    /* renamed from: a */
    public static String m38212a() {
        return f12527a;
    }

    /* renamed from: a */
    private static String m38211a(String str) {
        return str.replace(' ', '_');
    }

    /* renamed from: b */
    public static String m38210b() {
        if (f12529c == null) {
            synchronized (VersionInfoUtils.class) {
                try {
                    if (f12529c == null) {
                        StringBuilder sb = new StringBuilder(128);
                        sb.append("aws-sdk-");
                        sb.append(StringUtils.m38227b(f12528b));
                        sb.append("/");
                        sb.append(f12527a);
                        sb.append(StringUtils.SPACE);
                        sb.append(m38211a(System.getProperty("os.name")));
                        sb.append("/");
                        sb.append(m38211a(System.getProperty("os.version")));
                        sb.append(StringUtils.SPACE);
                        sb.append(m38211a(System.getProperty("java.vm.name")));
                        sb.append("/");
                        sb.append(m38211a(System.getProperty("java.vm.version")));
                        sb.append("/");
                        sb.append(m38211a(System.getProperty("java.version")));
                        String property = System.getProperty("user.language");
                        String property2 = System.getProperty("user.region");
                        if (property != null && property2 != null) {
                            sb.append(StringUtils.SPACE);
                            sb.append(m38211a(property));
                            sb.append("_");
                            sb.append(m38211a(property2));
                        }
                        f12529c = sb.toString();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f12529c;
    }
}
