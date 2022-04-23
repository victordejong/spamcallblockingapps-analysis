package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazz.class */
public final class zzazz extends zzau {

    /* renamed from: d */
    public final Context f24695d;

    public zzazz(Context context, zzar zzarVar) {
        super(zzarVar);
        this.f24695d = context;
    }

    /* renamed from: a */
    public static zzae m15990a(Context context) {
        zzae zzaeVar = new zzae(new zzav(new File(context.getCacheDir(), "admob_volley"), 20971520), new zzazz(context, new zzbd()));
        zzaeVar.m16839a();
        return zzaeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzau, com.google.android.gms.internal.ads.zzx
    /* renamed from: a */
    public final zzy mo11147a(zzaa<?> zzaaVar) throws zzao {
        if (zzaaVar.m16955h() && zzaaVar.m16963b() == 0) {
            if (Pattern.matches((String) zzwm.m11166e().m16921a(zzabb.f23775Z1), zzaaVar.m16959d())) {
                zzwm.m11170a();
                if (zzbbg.m15892c(this.f24695d, 13400000)) {
                    zzy a = new zzaik(this.f24695d).mo11147a(zzaaVar);
                    if (a != null) {
                        String valueOf = String.valueOf(zzaaVar.m16959d());
                        zzayp.m16153g(valueOf.length() != 0 ? "Got gmscore asset response: ".concat(valueOf) : new String("Got gmscore asset response: "));
                        return a;
                    }
                    String valueOf2 = String.valueOf(zzaaVar.m16959d());
                    zzayp.m16153g(valueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(valueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.mo11147a(zzaaVar);
    }
}
