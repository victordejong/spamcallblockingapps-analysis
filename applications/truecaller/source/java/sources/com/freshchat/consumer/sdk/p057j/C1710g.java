package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.graphics.drawable.Drawable;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p047b.C1463b;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
/* renamed from: com.freshchat.consumer.sdk.j.g */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/g.class */
public class C1710g {
    /* renamed from: P */
    public static int m39962P(Context context) {
        if (context != null) {
            return context.getApplicationInfo().icon;
        }
        throw new IllegalArgumentException("getApplicationIconResId() requires a valid context");
    }

    /* renamed from: Q */
    public static Drawable m39961Q(Context context) {
        if (context != null) {
            try {
                return m39959ac(context).getApplicationIcon(context.getPackageName());
            } catch (PackageManager.NameNotFoundException e) {
                C1723q.m39823a(e);
                return null;
            }
        }
        throw new IllegalArgumentException("getApplicationIcon() requires a valid context");
    }

    /* renamed from: ab */
    public static String m39960ab(Context context) {
        if (context != null) {
            return context.getApplicationInfo().packageName;
        }
        throw new IllegalArgumentException("getPackageName() requires a valid context");
    }

    /* renamed from: ac */
    private static PackageManager m39959ac(Context context) {
        PackageManager packageManager;
        if (context != null) {
            try {
                packageManager = context.getPackageManager();
            } catch (Exception e) {
                C1723q.m39823a(e);
                packageManager = null;
            }
            return packageManager;
        }
        throw new IllegalArgumentException("getPackageManager() requires a valid context");
    }

    /* renamed from: ad */
    private static PackageInfo m39958ad(Context context) {
        return m39947c(context, 0);
    }

    /* renamed from: ae */
    public static String m39957ae(Context context) {
        String str;
        if (context != null) {
            try {
                PackageInfo m39958ad = m39958ad(context);
                str = "unknown";
                if (m39958ad != null) {
                    str = m39958ad.versionName;
                }
            } catch (Exception e) {
                C1723q.m39823a(e);
                str = "unknown";
            }
            return str;
        }
        throw new IllegalArgumentException("getAppVersionName() requires a valid context");
    }

    /* renamed from: af */
    public static int m39956af(Context context) {
        int i;
        if (context != null) {
            try {
                PackageInfo m39958ad = m39958ad(context);
                i = -1;
                if (m39958ad != null) {
                    i = m39958ad.versionCode;
                }
            } catch (Exception e) {
                C1723q.m39823a(e);
                i = -1;
            }
            return i;
        }
        throw new IllegalArgumentException("getAppVersionCode() requires a valid context");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
        if (r0 > java.lang.Integer.valueOf(r0).intValue()) goto L5;
     */
    /* renamed from: ag */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m39955ag(android.content.Context r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r3
            com.freshchat.consumer.sdk.b.e r0 = com.freshchat.consumer.sdk.p047b.C1466e.m40905i(r0)     // Catch: java.lang.Exception -> L2d
            java.lang.String r0 = r0.m40963bm()     // Catch: java.lang.Exception -> L2d
            r5 = r0
            r0 = r3
            int r0 = m39956af(r0)     // Catch: java.lang.Exception -> L2d
            r6 = r0
            r0 = r5
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(r0)     // Catch: java.lang.Exception -> L2d
            if (r0 == 0) goto L1b
        L16:
            r0 = 1
            r4 = r0
            goto L32
        L1b:
            r0 = r5
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Exception -> L2d
            int r0 = r0.intValue()     // Catch: java.lang.Exception -> L2d
            r7 = r0
            r0 = r6
            r1 = r7
            if (r0 <= r1) goto L32
            goto L16
        L2d:
            r3 = move-exception
            r0 = r3
            com.freshchat.consumer.sdk.p057j.C1723q.m39823a(r0)
        L32:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p057j.C1710g.m39955ag(android.content.Context):boolean");
    }

    /* renamed from: ah */
    public static int m39954ah(Context context) {
        int i;
        PackageManager packageManager;
        ApplicationInfo applicationInfo;
        if (context != null) {
            try {
                packageManager = context.getPackageManager();
            } catch (Exception e) {
                C1723q.m39823a(e);
                i = -1;
            }
            if (packageManager == null || C1626as.isEmpty(m39960ab(context)) || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null) {
                return -1;
            }
            i = applicationInfo.targetSdkVersion;
            return i;
        }
        throw new IllegalArgumentException("getTargetSdkVersion() requires a valid context");
    }

    /* renamed from: aj */
    public static String m39953aj(Context context) {
        return context.getString(C1298R.string.freshchat_file_provider_authority);
    }

    /* renamed from: ak */
    public static void m39952ak(Context context) {
        if (!m39950am(context) || m39951al(context)) {
            return;
        }
        C1471i.m40847a(context.getApplicationContext(), EnumC1464c.PICTURE_ATTACHMENT_MISSING_FILE_PROVIDER);
    }

    /* renamed from: al */
    public static boolean m39951al(Context context) {
        String m39953aj = m39953aj(context);
        return m39945m(context, m39953aj) && m39946i(context, m39953aj);
    }

    /* renamed from: am */
    public static boolean m39950am(Context context) {
        return m39954ah(context) > 23;
    }

    /* renamed from: an */
    public static boolean m39949an(Context context) {
        return m39954ah(context) >= 26;
    }

    /* renamed from: ao */
    public static boolean m39948ao(Context context) {
        return m39954ah(context) <= 25;
    }

    /* renamed from: c */
    private static PackageInfo m39947c(Context context, int i) {
        PackageInfo packageInfo;
        PackageManager m39959ac;
        if (context != null) {
            try {
                m39959ac = m39959ac(context);
            } catch (PackageManager.NameNotFoundException e) {
                C1723q.m39823a(e);
                packageInfo = null;
            }
            if (m39959ac == null) {
                return null;
            }
            String m39960ab = m39960ab(context);
            if (C1626as.isEmpty(m39960ab)) {
                return null;
            }
            packageInfo = m39959ac.getPackageInfo(m39960ab, i);
            return packageInfo;
        }
        throw new IllegalArgumentException("getPackageInfo() requires a valid context");
    }

    public static String getAppName(Context context) {
        try {
            return context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
        } catch (Exception e) {
            return "";
        }
    }

    /* renamed from: i */
    public static boolean m39946i(Context context, String str) {
        boolean z;
        PackageManager packageManager;
        try {
            packageManager = context.getPackageManager();
        } catch (Exception e) {
            C1723q.m39823a(e);
            z = false;
        }
        if (C1626as.isEmpty(str) || packageManager == null) {
            return false;
        }
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(str, 128);
        z = false;
        if (resolveContentProvider != null) {
            z = false;
            if (resolveContentProvider.enabled) {
                z = false;
                if (resolveContentProvider.grantUriPermissions) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: m */
    public static boolean m39945m(Context context, String str) {
        String[] strArr;
        boolean m40233a = C1626as.m40233a(str);
        try {
            String m39960ab = m39960ab(context);
            for (String str2 : C1463b.f4014dc) {
                if (str.startsWith(str2) && !m39960ab.startsWith(str2)) {
                    return false;
                }
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
        return m40233a;
    }
}
