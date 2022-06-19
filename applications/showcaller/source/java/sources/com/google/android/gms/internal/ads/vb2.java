package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vb2.class */
public final class vb2 implements wa2<wb2> {

    /* renamed from: a */
    private final Context f31125a;

    /* renamed from: b */
    private final String f31126b;

    /* renamed from: c */
    private final s03 f31127c;

    public vb2(zc0 zc0Var, Context context, String str, s03 s03Var) {
        this.f31125a = context;
        this.f31126b = str;
        this.f31127c = s03Var;
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<wb2> zza() {
        return this.f31127c.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.ub2

            /* renamed from: a */
            private final vb2 f30570a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30570a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new wb2(new JSONObject());
            }
        });
    }
}
