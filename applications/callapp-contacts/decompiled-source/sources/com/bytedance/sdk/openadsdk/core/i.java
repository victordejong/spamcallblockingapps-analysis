package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.utils.y;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/i.class */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static String f8982a;

    /* renamed from: b  reason: collision with root package name */
    private static String f8983b;

    /* renamed from: c  reason: collision with root package name */
    private static String f8984c;

    /* renamed from: d  reason: collision with root package name */
    private static String f8985d;
    private static boolean e;

    public static String a() {
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
    public static String a(Context context) {
        if (TextUtils.isEmpty(f8982a) && !e) {
            synchronized (i.class) {
                try {
                    if (!e) {
                        e(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        try {
            if (TextUtils.isEmpty(f8982a) && b.b()) {
                f8982a = c.a(d(context)).b("did", (String) null);
            }
        } catch (Exception e2) {
        }
        return f8982a;
    }

    public static void a(Context context, String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(f8982a)) {
            c.a(context).a("did", str);
            f8982a = str;
        }
        if (!TextUtils.isEmpty(f8982a)) {
            s.a(f8982a);
        }
    }

    private static String b() {
        StringBuilder sb = new StringBuilder();
        try {
            if (y.e()) {
                sb.append("MIUI-");
            } else if (y.b()) {
                sb.append("FLYME-");
            } else {
                String n = y.n();
                if (y.a(n)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(n)) {
                    sb.append(n);
                    sb.append(VerificationLanguage.REGION_PREFIX);
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
        } catch (Exception e2) {
        }
        return sb.toString();
    }

    public static String b(Context context) {
        if (f8984c == null && !e) {
            synchronized (i.class) {
                try {
                    if (!e) {
                        e(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8984c;
    }

    public static String c(Context context) {
        if (TextUtils.isEmpty(f8985d) && !e) {
            synchronized (i.class) {
                try {
                    if (!e) {
                        e(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8985d;
    }

    private static Context d(Context context) {
        Context context2 = context;
        if (context == null) {
            context2 = n.a();
        }
        return context2;
    }

    private static void e(Context context) {
        Context d2;
        if (!e && (d2 = d(context)) != null) {
            f8982a = c.a(d2).b("did", (String) null);
            f8983b = b();
            f8984c = String.valueOf(Build.TIME);
            f8985d = c.a(d2).b("uuid", (String) null);
            e = true;
        }
    }
}
