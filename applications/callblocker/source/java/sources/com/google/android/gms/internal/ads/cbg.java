package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cbg.class */
public final class cbg implements cah<cbd> {

    /* renamed from: a */
    private final AbstractC3431qd f12660a;

    /* renamed from: b */
    private final Context f12661b;

    /* renamed from: c */
    private final String f12662c;

    /* renamed from: d */
    private final crs f12663d;

    public cbg(AbstractC3431qd abstractC3431qd, Context context, String str, crs crsVar) {
        this.f12660a = abstractC3431qd;
        this.f12661b = context;
        this.f12662c = str;
        this.f12663d = crsVar;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<cbd> mo11479a() {
        return this.f12663d.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cbf

            /* renamed from: a */
            private final cbg f12659a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12659a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12659a.m11496b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ cbd m11496b() {
        JSONObject jSONObject = new JSONObject();
        if (this.f12660a != null) {
            this.f12660a.m7318a(this.f12661b, this.f12662c, jSONObject);
        }
        return new cbd(jSONObject);
    }
}
