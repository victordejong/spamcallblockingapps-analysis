package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pk.class */
public final class pk extends qa {

    /* renamed from: a  reason: collision with root package name */
    final Context f28282a;
    private final Map<String, String> g;

    /* renamed from: b  reason: collision with root package name */
    String f28283b = d("description");
    String e = d("summary");

    /* renamed from: c  reason: collision with root package name */
    long f28284c = e("start_ticks");

    /* renamed from: d  reason: collision with root package name */
    long f28285d = e("end_ticks");
    String f = d("location");

    public pk(adt adtVar, Map<String, String> map) {
        super(adtVar, "createCalendarEvent");
        this.g = map;
        this.f28282a = adtVar.d();
    }

    private final String d(String str) {
        return TextUtils.isEmpty(this.g.get(str)) ? "" : this.g.get(str);
    }

    private final long e(String str) {
        String str2 = this.g.get(str);
        long j = -1;
        if (str2 == null) {
            return -1L;
        }
        try {
            j = Long.parseLong(str2);
        } catch (NumberFormatException e) {
        }
        return j;
    }
}
