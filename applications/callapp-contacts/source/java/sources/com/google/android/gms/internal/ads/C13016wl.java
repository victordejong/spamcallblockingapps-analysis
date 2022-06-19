package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.C13019wo;
/* renamed from: com.google.android.gms.internal.ads.wl */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wl.class */
public final class C13016wl implements eeg {

    /* renamed from: a */
    String f49973a;

    /* renamed from: b */
    private final Context f49974b;

    /* renamed from: c */
    private final Object f49975c;

    /* renamed from: d */
    private boolean f49976d;

    public C13016wl(Context context, String str) {
        this.f49974b = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f49973a = str;
        this.f49976d = false;
        this.f49975c = new Object();
    }

    @Override // com.google.android.gms.internal.ads.eeg
    /* renamed from: a */
    public final void mo13778a(eeh eehVar) {
        m14046a(eehVar.f48872j);
    }

    /* renamed from: a */
    public final void m14046a(boolean z) {
        if (!zzr.zzlt().m14044a(this.f49974b)) {
            return;
        }
        synchronized (this.f49975c) {
            if (this.f49976d == z) {
                return;
            }
            this.f49976d = z;
            if (TextUtils.isEmpty(this.f49973a)) {
                return;
            }
            if (this.f49976d) {
                C13019wo zzlt = zzr.zzlt();
                Context context = this.f49974b;
                String str = this.f49973a;
                if (zzlt.m14044a(context)) {
                    if (C13019wo.m14033b(context)) {
                        zzlt.m14038a("beginAdUnitExposure", new C13019wo.AbstractC13020a(str) { // from class: com.google.android.gms.internal.ads.wt

                            /* renamed from: a */
                            private final String f50001a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f50001a = str;
                            }

                            @Override // com.google.android.gms.internal.ads.C13019wo.AbstractC13020a
                            /* renamed from: a */
                            public final void mo14021a(afl aflVar) {
                                aflVar.mo14500b(this.f50001a);
                            }
                        });
                    } else {
                        zzlt.m14042a(context, str, "beginAdUnitExposure");
                    }
                }
            } else {
                C13019wo zzlt2 = zzr.zzlt();
                Context context2 = this.f49974b;
                String str2 = this.f49973a;
                if (zzlt2.m14044a(context2)) {
                    if (C13019wo.m14033b(context2)) {
                        zzlt2.m14038a("endAdUnitExposure", new C13019wo.AbstractC13020a(str2) { // from class: com.google.android.gms.internal.ads.ww

                            /* renamed from: a */
                            private final String f50004a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f50004a = str2;
                            }

                            @Override // com.google.android.gms.internal.ads.C13019wo.AbstractC13020a
                            /* renamed from: a */
                            public final void mo14021a(afl aflVar) {
                                aflVar.mo14496c(this.f50004a);
                            }
                        });
                    } else {
                        zzlt2.m14042a(context2, str2, "endAdUnitExposure");
                    }
                }
            }
        }
    }
}
