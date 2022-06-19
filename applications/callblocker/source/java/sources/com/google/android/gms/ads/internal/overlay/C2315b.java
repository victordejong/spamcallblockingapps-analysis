package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.internal.ads.C3556uu;
import com.google.android.gms.internal.ads.C3567ve;
import com.google.android.gms.internal.ads.dyx;
import com.google.android.gms.internal.ads.edi;
/* renamed from: com.google.android.gms.ads.internal.overlay.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/b.class */
public final class C2315b {
    /* renamed from: a */
    private static boolean m14769a(Context context, Intent intent, AbstractC2333t abstractC2333t) {
        boolean z;
        try {
            String valueOf = String.valueOf(intent.toURI());
            C3556uu.m7052a(valueOf.length() != 0 ? "Launching an intent: ".concat(valueOf) : new String("Launching an intent: "));
            C2341q.m14744c();
            C3567ve.m7007a(context, intent);
            if (abstractC2333t != null) {
                abstractC2333t.mo12024f();
            }
            z = true;
        } catch (ActivityNotFoundException e) {
            C3556uu.m6745e(e.getMessage());
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m14768a(Context context, C2317d c2317d, AbstractC2333t abstractC2333t) {
        int i;
        boolean z = false;
        if (c2317d == null) {
            C3556uu.m6745e("No intent data for launcher overlay.");
        } else {
            edi.m7866a(context);
            if (c2317d.f6715f != null) {
                z = m14769a(context, c2317d.f6715f, abstractC2333t);
            } else {
                Intent intent = new Intent();
                if (TextUtils.isEmpty(c2317d.f6710a)) {
                    C3556uu.m6745e("Open GMSG did not contain a URL.");
                } else {
                    if (!TextUtils.isEmpty(c2317d.f6711b)) {
                        intent.setDataAndType(Uri.parse(c2317d.f6710a), c2317d.f6711b);
                    } else {
                        intent.setData(Uri.parse(c2317d.f6710a));
                    }
                    intent.setAction("android.intent.action.VIEW");
                    if (!TextUtils.isEmpty(c2317d.f6712c)) {
                        intent.setPackage(c2317d.f6712c);
                    }
                    if (!TextUtils.isEmpty(c2317d.f6713d)) {
                        String[] split = c2317d.f6713d.split("/", 2);
                        if (split.length < 2) {
                            String valueOf = String.valueOf(c2317d.f6713d);
                            C3556uu.m6745e(valueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(valueOf) : new String("Could not parse component name from open GMSG: "));
                        } else {
                            intent.setClassName(split[0], split[1]);
                        }
                    }
                    String str = c2317d.f6714e;
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            i = Integer.parseInt(str);
                        } catch (NumberFormatException e) {
                            C3556uu.m6745e("Could not parse intent flags.");
                            i = 0;
                        }
                        intent.addFlags(i);
                    }
                    if (((Boolean) dyx.m8158e().m7876a(edi.f16416bV)).booleanValue()) {
                        intent.addFlags(268435456);
                        intent.putExtra("android.support.customtabs.extra.user_opt_out", true);
                    } else {
                        if (((Boolean) dyx.m8158e().m7876a(edi.f16415bU)).booleanValue()) {
                            C2341q.m14744c();
                            C3567ve.m6976b(context, intent);
                        }
                    }
                    z = m14769a(context, intent, abstractC2333t);
                }
            }
        }
        return z;
    }
}
