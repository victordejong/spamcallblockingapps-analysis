package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.AbstractC12102f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvx.class */
public final class bvx {

    /* renamed from: a */
    final AbstractC12102f f44897a;

    /* renamed from: b */
    final bvz f44898b;

    /* renamed from: d */
    final bso f44900d;

    /* renamed from: e */
    private final List<String> f44901e = Collections.synchronizedList(new ArrayList());

    /* renamed from: c */
    final boolean f44899c = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42890eo)).booleanValue();

    public bvx(AbstractC12102f abstractC12102f, bvz bvzVar, bso bsoVar) {
        this.f44897a = abstractC12102f;
        this.f44898b = bvzVar;
        this.f44900d = bsoVar;
    }

    /* renamed from: a */
    public static /* synthetic */ void m17598a(bvx bvxVar, String str, int i, long j, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
        sb.append(str);
        sb.append(".");
        sb.append(i);
        sb.append(".");
        sb.append(j);
        String sb2 = sb.toString();
        String str3 = sb2;
        if (!TextUtils.isEmpty(str2)) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 1 + String.valueOf(str2).length());
            sb3.append(sb2);
            sb3.append(".");
            sb3.append(str2);
            str3 = sb3.toString();
        }
        bvxVar.f44901e.add(str3);
    }

    /* renamed from: a */
    public final String m17599a() {
        return TextUtils.join("_", this.f44901e);
    }
}
