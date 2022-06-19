package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.AbstractC12102f;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aju.class */
public final class aju implements zzp, asg, ash, eeg {

    /* renamed from: a */
    private final ajp f42249a;

    /* renamed from: b */
    private final ajs f42250b;

    /* renamed from: d */
    private final C12732lz<JSONObject, JSONObject> f42252d;

    /* renamed from: e */
    private final Executor f42253e;

    /* renamed from: f */
    private final AbstractC12102f f42254f;

    /* renamed from: c */
    private final Set<adt> f42251c = new HashSet();

    /* renamed from: g */
    private final AtomicBoolean f42255g = new AtomicBoolean(false);

    /* renamed from: h */
    private final ajw f42256h = new ajw();

    /* renamed from: i */
    private boolean f42257i = false;

    /* renamed from: j */
    private WeakReference<?> f42258j = new WeakReference<>(this);

    public aju(C12729lw c12729lw, ajs ajsVar, Executor executor, ajp ajpVar, AbstractC12102f abstractC12102f) {
        this.f42249a = ajpVar;
        AbstractC12716lj<JSONObject> abstractC12716lj = C12719lm.f49472a;
        c12729lw.m14521a();
        this.f42252d = new C12732lz<>(c12729lw.f49492a, "google.afma.activeView.handleUpdate", abstractC12716lj, abstractC12716lj);
        this.f42250b = ajsVar;
        this.f42253e = executor;
        this.f42254f = abstractC12102f;
    }

    /* renamed from: d */
    private final void m18627d() {
        for (adt adtVar : this.f42251c) {
            ajp ajpVar = this.f42249a;
            adtVar.mo13758b("/updateActiveView", ajpVar.f42240d);
            adtVar.mo13758b("/untrackActiveViewUnit", ajpVar.f42241e);
        }
        ajp ajpVar2 = this.f42249a;
        ajpVar2.f42237a.m14519b("/updateActiveView", ajpVar2.f42240d);
        ajpVar2.f42237a.m14519b("/untrackActiveViewUnit", ajpVar2.f42241e);
    }

    /* renamed from: a */
    public final void m18631a() {
        synchronized (this) {
            if (!(this.f42258j.get() != null)) {
                m18628c();
                return;
            }
            if (!this.f42257i && this.f42255g.get()) {
                try {
                    this.f42256h.f42263c = this.f42254f.mo19038b();
                    JSONObject mo14524a = this.f42250b.mo14524a(this.f42256h);
                    for (adt adtVar : this.f42251c) {
                        this.f42253e.execute(new Runnable(adtVar, mo14524a) { // from class: com.google.android.gms.internal.ads.ajx

                            /* renamed from: a */
                            private final adt f42267a;

                            /* renamed from: b */
                            private final JSONObject f42268b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f42267a = adtVar;
                                this.f42268b = mo14524a;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f42267a.mo13757b("AFMA_updateActiveView", this.f42268b);
                            }
                        });
                    }
                    dbh.m16901a(this.f42252d.zzf(mo14524a), new C13101zn("ActiveViewListener.callActiveViewJs"), C13091zd.f50123f);
                } catch (Exception e) {
                    zzd.zza("Failed to call ActiveViewJS", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: a */
    public final void mo17741a(Context context) {
        synchronized (this) {
            this.f42256h.f42262b = true;
            m18631a();
        }
    }

    /* renamed from: a */
    public final void m18630a(adt adtVar) {
        synchronized (this) {
            this.f42251c.add(adtVar);
            ajp ajpVar = this.f42249a;
            adtVar.mo13772a("/updateActiveView", ajpVar.f42240d);
            adtVar.mo13772a("/untrackActiveViewUnit", ajpVar.f42241e);
        }
    }

    @Override // com.google.android.gms.internal.ads.eeg
    /* renamed from: a */
    public final void mo13778a(eeh eehVar) {
        synchronized (this) {
            this.f42256h.f42261a = eehVar.f48872j;
            this.f42256h.f42265e = eehVar;
            m18631a();
        }
    }

    /* renamed from: a */
    public final void m18629a(Object obj) {
        this.f42258j = new WeakReference<>(obj);
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: b */
    public final void mo17547b() {
        synchronized (this) {
            if (this.f42255g.compareAndSet(false, true)) {
                ajp ajpVar = this.f42249a;
                ajpVar.f42237a.m14520a("/updateActiveView", ajpVar.f42240d);
                ajpVar.f42237a.m14520a("/untrackActiveViewUnit", ajpVar.f42241e);
                ajpVar.f42239c = this;
                m18631a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: b */
    public final void mo17739b(Context context) {
        synchronized (this) {
            this.f42256h.f42262b = false;
            m18631a();
        }
    }

    /* renamed from: c */
    public final void m18628c() {
        synchronized (this) {
            m18627d();
            this.f42257i = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: c */
    public final void mo17738c(Context context) {
        synchronized (this) {
            this.f42256h.f42264d = "u";
            m18631a();
            m18627d();
            this.f42257i = true;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        synchronized (this) {
            this.f42256h.f42262b = true;
            m18631a();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        synchronized (this) {
            this.f42256h.f42262b = false;
            m18631a();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
    }
}
