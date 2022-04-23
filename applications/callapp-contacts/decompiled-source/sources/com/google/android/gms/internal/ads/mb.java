package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mb.class */
final class mb implements hw {

    /* renamed from: a  reason: collision with root package name */
    private final zp<O> f28186a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ lz f28187b;

    public mb(lz lzVar, zp<O> zpVar) {
        this.f28187b = lzVar;
        this.f28186a = zpVar;
    }

    @Override // com.google.android.gms.internal.ads.hw
    public final void a(String str) {
        try {
            if (str == null) {
                this.f28186a.setException(new zzamh());
            } else {
                this.f28186a.setException(new zzamh(str));
            }
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.hw
    public final void a(JSONObject jSONObject) {
        try {
            this.f28186a.set(this.f28187b.f28180a.a(jSONObject));
        } catch (IllegalStateException e) {
        } catch (JSONException e2) {
            this.f28186a.setException(e2);
        }
    }
}
