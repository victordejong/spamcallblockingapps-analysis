package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabg.class */
public final class zzabg {
    /* renamed from: a */
    public static List<String> m16906a() {
        ArrayList arrayList = new ArrayList();
        m16905a(arrayList, zzaci.m16864a("gad:dynamite_module:experiment_id", ""));
        m16905a(arrayList, zzacu.f23982a);
        m16905a(arrayList, zzacu.f23983b);
        m16905a(arrayList, zzacu.f23984c);
        m16905a(arrayList, zzacu.f23985d);
        m16905a(arrayList, zzacu.f23986e);
        m16905a(arrayList, zzacu.f23992k);
        m16905a(arrayList, zzacu.f23987f);
        m16905a(arrayList, zzacu.f23988g);
        m16905a(arrayList, zzacu.f23989h);
        m16905a(arrayList, zzacu.f23990i);
        m16905a(arrayList, zzacu.f23991j);
        return arrayList;
    }

    /* renamed from: a */
    public static void m16905a(List<String> list, zzaci<String> zzaciVar) {
        String a = zzaciVar.mo16862a();
        if (!TextUtils.isEmpty(a)) {
            list.add(a);
        }
    }

    /* renamed from: b */
    public static List<String> m16904b() {
        ArrayList arrayList = new ArrayList();
        m16905a(arrayList, zzadd.f24011a);
        return arrayList;
    }
}
