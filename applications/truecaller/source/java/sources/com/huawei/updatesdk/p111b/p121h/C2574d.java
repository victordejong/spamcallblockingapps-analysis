package com.huawei.updatesdk.p111b.p121h;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.graphics.Typeface;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.TextView;
import com.amazon.device.ads.DtbConstants;
import com.huawei.updatesdk.p097a.p098a.C2511a;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.b.h.d */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/h/d.class */
public class C2574d {

    /* renamed from: a */
    private static Typeface f8290a;

    /* renamed from: a */
    public static int m36571a(long j, long j2) {
        if (j2 <= 0) {
            return 0;
        }
        return Math.min((int) Math.round((j / j2) * 100.0d), 100);
    }

    /* renamed from: a */
    public static String m36572a(int i) {
        NumberFormat percentInstance = NumberFormat.getPercentInstance();
        percentInstance.setMinimumFractionDigits(0);
        return percentInstance.format(i / 100.0d);
    }

    /* renamed from: a */
    public static String m36570a(Context context, long j) {
        if (j == 0) {
            return context.getString(C2573c.m36573c(context, "upsdk_storage_utils"), DtbConstants.NETWORK_TYPE_UNKNOWN);
        }
        DecimalFormat decimalFormat = null;
        if (j > 104857) {
            decimalFormat = new DecimalFormat("###.#");
        } else if (j > 10485) {
            decimalFormat = new DecimalFormat("###.##");
        }
        return decimalFormat != null ? context.getString(C2573c.m36573c(context, "upsdk_storage_utils"), decimalFormat.format(j / 1048576.0d)) : context.getString(C2573c.m36573c(context, "upsdk_storage_utils"), "0.01");
    }

    /* renamed from: a */
    public static void m36568a(TextView textView) {
        try {
            if (C2569a.m36595f().m36599b() <= 0) {
                return;
            }
            if (f8290a == null) {
                f8290a = Typeface.create("HnChinese-medium", 0);
            }
            Typeface typeface = f8290a;
            if (typeface == null) {
                return;
            }
            textView.setTypeface(typeface);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("setSubTextType TextView Exception");
            m8728C.append(e.toString());
            C2515a.m36847b("TextTypefaceUtil", m8728C.toString());
        }
    }

    /* renamed from: a */
    public static boolean m36569a(Context context, Uri uri, String str) {
        boolean z = false;
        if (uri != null) {
            if (TextUtils.isEmpty(str)) {
                z = false;
            } else {
                ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(uri.getAuthority(), 0);
                if (resolveContentProvider != null) {
                    ApplicationInfo applicationInfo = resolveContentProvider.applicationInfo;
                    z = false;
                    if (applicationInfo != null) {
                        z = false;
                        if (TextUtils.equals(str, applicationInfo.packageName)) {
                            StringBuilder m8728C = C22128a.m8728C("valid provider: ");
                            m8728C.append(uri.toString());
                            C2511a.m36862b("ProviderCheck", m8728C.toString());
                            z = true;
                        }
                    }
                } else {
                    StringBuilder m8728C2 = C22128a.m8728C("invalid provider: ");
                    m8728C2.append(uri.toString());
                    C2511a.m36863a("ProviderCheck", m8728C2.toString());
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m36567a(List list) {
        return list == null || list.size() <= 0;
    }
}
