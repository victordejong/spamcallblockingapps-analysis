package com.google.android.gms.internal.ads;

import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apk.class */
public final class apk extends eay {

    /* renamed from: a */
    private final String f10187a;

    /* renamed from: b */
    private final String f10188b;

    public apk(cgr cgrVar, String str) {
        this.f10188b = cgrVar == null ? null : cgrVar.f12973S;
        String m12818a = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) ? m12818a(cgrVar) : null;
        this.f10187a = m12818a != null ? m12818a : str;
    }

    /* renamed from: a */
    private static String m12818a(cgr cgrVar) {
        String str;
        try {
            str = cgrVar.f12997s.getString("class_name");
        } catch (JSONException e) {
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.eav
    /* renamed from: a */
    public final String mo8095a() {
        return this.f10187a;
    }

    @Override // com.google.android.gms.internal.ads.eav
    /* renamed from: b */
    public final String mo8094b() {
        return this.f10188b;
    }
}
