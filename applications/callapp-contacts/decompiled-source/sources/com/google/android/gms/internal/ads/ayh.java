package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayh.class */
public final class ayh extends awl<eeg> implements eeg {

    /* renamed from: a  reason: collision with root package name */
    private Map<View, eec> f24001a = new WeakHashMap(1);

    /* renamed from: b  reason: collision with root package name */
    private final Context f24002b;

    /* renamed from: c  reason: collision with root package name */
    private final cov f24003c;

    public ayh(Context context, Set<ayi<eeg>> set, cov covVar) {
        super(set);
        this.f24002b = context;
        this.f24003c = covVar;
    }

    public final void a(View view) {
        synchronized (this) {
            eec eecVar = this.f24001a.get(view);
            eec eecVar2 = eecVar;
            if (eecVar == null) {
                eecVar2 = new eec(this.f24002b, view);
                eecVar2.a(this);
                this.f24001a.put(view, eecVar2);
            }
            cov covVar = this.f24003c;
            if (covVar != null && covVar.R) {
                if (((Boolean) ekb.e().a(aq.aR)).booleanValue()) {
                    eecVar2.f27717b.zzfc(((Long) ekb.e().a(aq.aQ)).longValue());
                    return;
                }
            }
            eecVar2.f27717b.zzfc(eec.f27716a);
        }
    }

    @Override // com.google.android.gms.internal.ads.eeg
    public final void a(final eeh eehVar) {
        synchronized (this) {
            a(new awn(eehVar) { // from class: com.google.android.gms.internal.ads.ayk

                /* renamed from: a  reason: collision with root package name */
                private final eeh f24009a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24009a = eehVar;
                }

                @Override // com.google.android.gms.internal.ads.awn
                public final void a(Object obj) {
                    ((eeg) obj).a(this.f24009a);
                }
            });
        }
    }

    public final void b(View view) {
        synchronized (this) {
            if (this.f24001a.containsKey(view)) {
                this.f24001a.get(view).b(this);
                this.f24001a.remove(view);
            }
        }
    }
}
