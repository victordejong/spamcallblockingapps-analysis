package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.utils.C5487y;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.Locale;
/* renamed from: com.bytedance.sdk.openadsdk.core.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/i.class */
public class C4590i {

    /* renamed from: a */
    private static String f16789a;

    /* renamed from: b */
    private static String f16790b;

    /* renamed from: c */
    private static String f16791c;

    /* renamed from: d */
    private static String f16792d;

    /* renamed from: e */
    private static boolean f16793e;

    /* renamed from: a */
    public static String m34847a() {
        try {
            Locale locale = Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault();
            String language = locale != null ? locale.getLanguage() : "";
            if (locale == null || !"zh".equals(language)) {
                return language;
            }
            String locale2 = locale.toString();
            String str = locale2;
            if (locale.toString().length() >= 5) {
                str = locale2.substring(0, 5);
            }
            return Locale.SIMPLIFIED_CHINESE.toString().equals(str) ? "zh" : "zh-Hant";
        } catch (Throwable th) {
            return "";
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x004b -> B:24:0x0047). Please submit an issue!!! */
    /* renamed from: a */
    public static String m34846a(Context context) {
        if (TextUtils.isEmpty(f16789a) && !f16793e) {
            synchronized (C4590i.class) {
                try {
                    if (!f16793e) {
                        m34840e(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        try {
            if (TextUtils.isEmpty(f16789a) && C5094b.m33091b()) {
                f16789a = C4516c.m35418a(m34841d(context)).m35411b("did", (String) null);
            }
        } catch (Exception e) {
        }
        return f16789a;
    }

    /* renamed from: a */
    public static void m34845a(Context context, String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(f16789a)) {
            C4516c.m35418a(context).m35415a("did", str);
            f16789a = str;
        }
        if (!TextUtils.isEmpty(f16789a)) {
            C4650s.m34624a(f16789a);
        }
    }

    /* renamed from: b */
    private static String m34844b() {
        StringBuilder sb = new StringBuilder();
        try {
            if (C5487y.m32050e()) {
                sb.append("MIUI-");
            } else if (C5487y.m32056b()) {
                sb.append("FLYME-");
            } else {
                String m32041n = C5487y.m32041n();
                if (C5487y.m32057a(m32041n)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(m32041n)) {
                    sb.append(m32041n);
                    sb.append(VerificationLanguage.REGION_PREFIX);
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
        } catch (Exception e) {
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static String m34843b(Context context) {
        if (f16791c == null && !f16793e) {
            synchronized (C4590i.class) {
                try {
                    if (!f16793e) {
                        m34840e(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16791c;
    }

    /* renamed from: c */
    public static String m34842c(Context context) {
        if (TextUtils.isEmpty(f16792d) && !f16793e) {
            synchronized (C4590i.class) {
                try {
                    if (!f16793e) {
                        m34840e(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16792d;
    }

    /* renamed from: d */
    private static Context m34841d(Context context) {
        Context context2 = context;
        if (context == null) {
            context2 = C4600n.m34815a();
        }
        return context2;
    }

    /* renamed from: e */
    private static void m34840e(Context context) {
        Context m34841d;
        if (!f16793e && (m34841d = m34841d(context)) != null) {
            f16789a = C4516c.m35418a(m34841d).m35411b("did", (String) null);
            f16790b = m34844b();
            f16791c = String.valueOf(Build.TIME);
            f16792d = C4516c.m35418a(m34841d).m35411b("uuid", (String) null);
            f16793e = true;
        }
    }
}
