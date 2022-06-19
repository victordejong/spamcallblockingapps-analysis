package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
/* renamed from: com.google.android.gms.internal.ads.tq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tq.class */
public final class C3525tq {
    /* renamed from: a */
    private static Uri m7130a(String str, String str2, String str3) {
        int indexOf = str.indexOf("&adurl");
        int i = indexOf;
        if (indexOf == -1) {
            i = str.indexOf("?adurl");
        }
        return i != -1 ? Uri.parse(str.substring(0, i + 1) + str2 + "=" + str3 + "&" + str.substring(i + 1)) : Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
    }

    /* renamed from: a */
    public static String m7132a(Uri uri, Context context) {
        Uri uri2;
        String uri3;
        if (!C2341q.m14747A().m7166a(context)) {
            uri3 = uri.toString();
        } else {
            String m7145e = C2341q.m14747A().m7145e(context);
            if (m7145e == null) {
                uri3 = uri.toString();
            } else {
                if (((Boolean) dyx.m8158e().m7876a(edi.f16334T)).booleanValue()) {
                    String str = (String) dyx.m8158e().m7876a(edi.f16335U);
                    String uri4 = uri.toString();
                    uri2 = uri;
                    if (uri4.contains(str)) {
                        C2341q.m14747A().m7146d(context, m7145e);
                        uri3 = uri4.replace(str, m7145e);
                    }
                } else {
                    uri2 = uri;
                    if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
                        uri2 = m7130a(uri.toString(), "fbs_aeid", m7145e);
                        C2341q.m14747A().m7146d(context, m7145e);
                    }
                }
                uri3 = uri2.toString();
            }
        }
        return uri3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0067, code lost:
        if (com.google.android.gms.ads.internal.C2341q.m14744c().m6959d(r4) != false) goto L19;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m7131a(java.lang.String r4, android.content.Context r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3525tq.m7131a(java.lang.String, android.content.Context, boolean):java.lang.String");
    }
}
