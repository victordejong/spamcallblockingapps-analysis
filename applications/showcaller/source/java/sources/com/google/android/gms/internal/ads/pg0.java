package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pg0.class */
public final class pg0 implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a */
    private final String f27995a;

    /* renamed from: b */
    final /* synthetic */ rg0 f27996b;

    public pg0(rg0 rg0Var, String str) {
        this.f27996b = rg0Var;
        this.f27995a = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        List<qg0> list;
        synchronized (this.f27996b) {
            list = this.f27996b.f28937b;
            for (qg0 qg0Var : list) {
                qg0Var.mo11898a(sharedPreferences, this.f27995a, str);
            }
        }
    }
}
