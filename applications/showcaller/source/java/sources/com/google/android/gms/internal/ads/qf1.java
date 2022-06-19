package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qf1.class */
final class qf1 implements AbstractC7014ty {

    /* renamed from: a */
    final /* synthetic */ ng1 f28455a;

    /* renamed from: b */
    final /* synthetic */ ViewGroup f28456b;

    public qf1(ng1 ng1Var, ViewGroup viewGroup) {
        this.f28455a = ng1Var;
        this.f28456b = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7014ty
    /* renamed from: a */
    public final void mo9152a(MotionEvent motionEvent) {
        this.f28455a.onTouch(null, motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7014ty
    /* renamed from: c */
    public final JSONObject mo9151c() {
        return this.f28455a.mo12902l();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7014ty
    /* renamed from: e */
    public final JSONObject mo9150e() {
        return this.f28455a.mo12903k();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7014ty
    public final void zza() {
        ng1 ng1Var = this.f28455a;
        zzfoj<String> zzfojVar = nf1.f27113d;
        Map<String, WeakReference<View>> mo12905h = ng1Var.mo12905h();
        if (mo12905h == null) {
            return;
        }
        int size = zzfojVar.size();
        for (int i = 0; i < size; i++) {
            if (mo12905h.get(zzfojVar.get(i)) != null) {
                this.f28455a.onClick(this.f28456b);
                return;
            }
        }
    }
}
