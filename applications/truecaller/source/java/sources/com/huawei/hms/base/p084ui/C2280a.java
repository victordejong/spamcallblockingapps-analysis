package com.huawei.hms.base.p084ui;

import android.text.TextUtils;
import java.util.regex.Pattern;
/* renamed from: com.huawei.hms.base.ui.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/base/ui/a.class */
public class C2280a {

    /* renamed from: a */
    public static final Pattern f7359a = Pattern.compile("[0-9]*[a-z|A-Z]*[一-龥]*");

    /* renamed from: a */
    public static String m38099a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i = 1;
        if (1 == length) {
            return String.valueOf('*');
        }
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            int i3 = i;
            char c = charAt;
            if (f7359a.matcher(String.valueOf(charAt)).matches()) {
                char c2 = charAt;
                if (i % 2 == 0) {
                    c2 = '*';
                }
                c = c2;
                i3 = i + 1;
            }
            sb.append(c);
            i2++;
            i = i3;
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m38096a(String str, boolean z) {
        StringBuilder sb = new StringBuilder(512);
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                sb.append(m38099a(str));
            } else {
                sb.append(str);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m38098a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        m38096a(str2, false);
    }

    /* renamed from: a */
    public static void m38097a(String str, String str2, boolean z) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        m38096a(str2, z);
    }
}
