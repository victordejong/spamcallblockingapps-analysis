package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.api.AbstractC11924l;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acu.class */
public abstract class acu implements AbstractC11924l {

    /* renamed from: a */
    protected Context f39924a;

    /* renamed from: b */
    protected String f39925b;

    /* renamed from: c */
    protected WeakReference<abb> f39926c;

    public acu(abb abbVar) {
        this.f39924a = abbVar.getContext();
        this.f39925b = zzr.zzkv().zzq(this.f39924a, abbVar.mo13739k().zzbrz);
        this.f39926c = new WeakReference<>(abbVar);
    }

    /* renamed from: a */
    public final void m18872a(String str, Map<String, String> map) {
        abb abbVar = this.f39926c.get();
        if (abbVar != null) {
            abbVar.mo13770a(str, map);
        }
    }

    @Override // com.google.android.gms.common.api.AbstractC11924l
    /* renamed from: a */
    public void mo11351a() {
    }

    /* renamed from: a */
    public void mo18866a(int i) {
    }

    /* renamed from: a */
    public final void m18875a(String str, String str2, int i) {
        C13077yq.f50094a.post(new acy(this, str, str2, i));
    }

    /* renamed from: a */
    public final void m18874a(String str, String str2, long j) {
        C13077yq.f50094a.post(new acx(this, str, str2, j));
    }

    /* renamed from: a */
    public final void m18873a(String str, String str2, String str3, String str4) {
        C13077yq.f50094a.post(new ada(this, str, str2, str3, str4));
    }

    /* renamed from: a */
    public abstract boolean mo18858a(String str);

    /* renamed from: a */
    public boolean mo18865a(String str, String[] strArr) {
        return mo18858a(str);
    }

    /* renamed from: b */
    public String mo18856b(String str) {
        return C13077yq.m13942a(str);
    }

    /* renamed from: b */
    public abstract void mo18857b();

    /* renamed from: b */
    public void mo18864b(int i) {
    }

    /* renamed from: d */
    public void mo18860d(int i) {
    }

    /* renamed from: e */
    public void mo18859e(int i) {
    }
}
