package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.AbstractC2708e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bpv.class */
public final class bpv {

    /* renamed from: a */
    private final AbstractC2708e f11780a;

    /* renamed from: b */
    private final bpx f11781b;

    /* renamed from: c */
    private final List<String> f11782c = Collections.synchronizedList(new ArrayList());

    /* renamed from: d */
    private final boolean f11783d = ((Boolean) dyx.m8158e().m7876a(edi.f16504dD)).booleanValue();

    public bpv(AbstractC2708e abstractC2708e, bpx bpxVar) {
        this.f11780a = abstractC2708e;
        this.f11781b = bpxVar;
    }

    /* renamed from: a */
    public final void m11723a(String str, int i, long j, String str2) {
        String sb = new StringBuilder(String.valueOf(str).length() + 33).append(str).append(".").append(i).append(".").append(j).toString();
        String str3 = sb;
        if (!TextUtils.isEmpty(str2)) {
            str3 = new StringBuilder(String.valueOf(sb).length() + 1 + String.valueOf(str2).length()).append(sb).append(".").append(str2).toString();
        }
        this.f11782c.add(str3);
    }

    /* renamed from: a */
    public final <T> crt<T> m11724a(cgs cgsVar, cgr cgrVar, crt<T> crtVar) {
        long mo13861b = this.f11780a.mo13861b();
        String str = cgrVar.f12998t;
        if (str != null) {
            crg.m10781a(crtVar, new bpy(this, str, mo13861b, cgrVar, cgsVar), C3650yg.f17647f);
        }
        return crtVar;
    }

    /* renamed from: a */
    public final String m11727a() {
        return TextUtils.join("_", this.f11782c);
    }
}
