package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.pk */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pk.class */
public final class C12826pk extends C12843qa {

    /* renamed from: a */
    final Context f49654a;

    /* renamed from: g */
    private final Map<String, String> f49660g;

    /* renamed from: b */
    String f49655b = m14257d("description");

    /* renamed from: e */
    String f49658e = m14257d("summary");

    /* renamed from: c */
    long f49656c = m14256e("start_ticks");

    /* renamed from: d */
    long f49657d = m14256e("end_ticks");

    /* renamed from: f */
    String f49659f = m14257d("location");

    public C12826pk(adt adtVar, Map<String, String> map) {
        super(adtVar, "createCalendarEvent");
        this.f49660g = map;
        this.f49654a = adtVar.mo13751d();
    }

    /* renamed from: d */
    private final String m14257d(String str) {
        return TextUtils.isEmpty(this.f49660g.get(str)) ? "" : this.f49660g.get(str);
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: e */
    private final long m14256e(String str) {
        String str2 = this.f49660g.get(str);
        char c = 65535;
        if (str2 == null) {
            return -1L;
        }
        try {
            c = Long.parseLong(str2);
        } catch (NumberFormatException e) {
        }
        return c;
    }
}
