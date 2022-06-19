package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayh.class */
public final class ayh extends awl<eeg> implements eeg {

    /* renamed from: a */
    private Map<View, eec> f43315a = new WeakHashMap(1);

    /* renamed from: b */
    private final Context f43316b;

    /* renamed from: c */
    private final cov f43317c;

    public ayh(Context context, Set<ayi<eeg>> set, cov covVar) {
        super(set);
        this.f43316b = context;
        this.f43317c = covVar;
    }

    /* renamed from: a */
    public final void m18323a(View view) {
        synchronized (this) {
            eec eecVar = this.f43315a.get(view);
            eec eecVar2 = eecVar;
            if (eecVar == null) {
                eecVar2 = new eec(this.f43316b, view);
                eecVar2.m15128a(this);
                this.f43315a.put(view, eecVar2);
            }
            cov covVar = this.f43317c;
            if (covVar != null && covVar.f46238R) {
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42655aR)).booleanValue()) {
                    eecVar2.f48840b.zzfc(((Long) ekb.m14831e().m18571a(C12187aq.f42654aQ)).longValue());
                    return;
                }
            }
            eecVar2.f48840b.zzfc(eec.f48839a);
        }
    }

    @Override // com.google.android.gms.internal.ads.eeg
    /* renamed from: a */
    public final void mo13778a(eeh eehVar) {
        synchronized (this) {
            m18374a(new awn(eehVar) { // from class: com.google.android.gms.internal.ads.ayk

                /* renamed from: a */
                private final eeh f43323a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f43323a = eehVar;
                }

                @Override // com.google.android.gms.internal.ads.awn
                /* renamed from: a */
                public final void mo17234a(Object obj) {
                    ((eeg) obj).mo13778a(this.f43323a);
                }
            });
        }
    }

    /* renamed from: b */
    public final void m18322b(View view) {
        synchronized (this) {
            if (this.f43315a.containsKey(view)) {
                this.f43315a.get(view).m15125b(this);
                this.f43315a.remove(view);
            }
        }
    }
}
