package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xh.class */
final class xh implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final String f28511a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ xf f28512b;

    public xh(xf xfVar, String str) {
        this.f28512b = xfVar;
        this.f28511a = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        synchronized (this.f28512b) {
            for (xk xkVar : this.f28512b.f28507a) {
                xkVar.a(this.f28511a, str);
            }
        }
    }
}
