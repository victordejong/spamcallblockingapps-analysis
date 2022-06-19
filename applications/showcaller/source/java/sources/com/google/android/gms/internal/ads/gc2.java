package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gc2.class */
public final class gc2 implements wa2<hc2> {

    /* renamed from: a */
    final s03 f23299a;

    /* renamed from: b */
    final Context f23300b;

    /* renamed from: c */
    final C6408dm f23301c;

    public gc2(C6408dm c6408dm, s03 s03Var, Context context, byte[] bArr) {
        this.f23301c = c6408dm;
        this.f23299a = s03Var;
        this.f23300b = context;
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<hc2> zza() {
        return this.f23299a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.fc2

            /* renamed from: a */
            private final gc2 f22786a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22786a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new hc2(new JSONObject());
            }
        });
    }
}
