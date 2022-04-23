package com.amazonaws.util;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/VersionInfoUtils.class */
public class VersionInfoUtils {

    /* renamed from: a  reason: collision with root package name */
    private static volatile String f6930a = "2.22.1";

    /* renamed from: b  reason: collision with root package name */
    private static volatile String f6931b = "android";

    /* renamed from: c  reason: collision with root package name */
    private static volatile String f6932c;

    /* renamed from: d  reason: collision with root package name */
    private static final Log f6933d = LogFactory.a(VersionInfoUtils.class);

    public static String a() {
        return f6930a;
    }

    private static String a(String str) {
        return str.replace(' ', '_');
    }

    public static String b() {
        if (f6932c == null) {
            synchronized (VersionInfoUtils.class) {
                try {
                    if (f6932c == null) {
                        StringBuilder sb = new StringBuilder(128);
                        sb.append("aws-sdk-");
                        sb.append(StringUtils.b(f6931b));
                        sb.append("/");
                        sb.append(f6930a);
                        sb.append(StringUtils.SPACE);
                        sb.append(a(System.getProperty("os.name")));
                        sb.append("/");
                        sb.append(a(System.getProperty("os.version")));
                        sb.append(StringUtils.SPACE);
                        sb.append(a(System.getProperty("java.vm.name")));
                        sb.append("/");
                        sb.append(a(System.getProperty("java.vm.version")));
                        sb.append("/");
                        sb.append(a(System.getProperty("java.version")));
                        String property = System.getProperty("user.language");
                        String property2 = System.getProperty("user.region");
                        if (!(property == null || property2 == null)) {
                            sb.append(StringUtils.SPACE);
                            sb.append(a(property));
                            sb.append("_");
                            sb.append(a(property2));
                        }
                        f6932c = sb.toString();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f6932c;
    }
}
