package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.f;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aju.class */
public final class aju implements zzp, asg, ash, eeg {

    /* renamed from: a  reason: collision with root package name */
    private final ajp f23445a;

    /* renamed from: b  reason: collision with root package name */
    private final ajs f23446b;

    /* renamed from: d  reason: collision with root package name */
    private final lz<JSONObject, JSONObject> f23448d;
    private final Executor e;
    private final f f;

    /* renamed from: c  reason: collision with root package name */
    private final Set<adt> f23447c = new HashSet();
    private final AtomicBoolean g = new AtomicBoolean(false);
    private final ajw h = new ajw();
    private boolean i = false;
    private WeakReference<?> j = new WeakReference<>(this);

    public aju(lw lwVar, ajs ajsVar, Executor executor, ajp ajpVar, f fVar) {
        this.f23445a = ajpVar;
        lj<JSONObject> ljVar = lm.f28155a;
        lwVar.a();
        this.f23448d = new lz<>(lwVar.f28175a, "google.afma.activeView.handleUpdate", ljVar, ljVar);
        this.f23446b = ajsVar;
        this.e = executor;
        this.f = fVar;
    }

    private final void d() {
        for (adt adtVar : this.f23447c) {
            ajp ajpVar = this.f23445a;
            adtVar.b("/updateActiveView", ajpVar.f23438d);
            adtVar.b("/untrackActiveViewUnit", ajpVar.e);
        }
        ajp ajpVar2 = this.f23445a;
        ajpVar2.f23435a.b("/updateActiveView", ajpVar2.f23438d);
        ajpVar2.f23435a.b("/untrackActiveViewUnit", ajpVar2.e);
    }

    public final void a() {
        synchronized (this) {
            if (!(this.j.get() != null)) {
                c();
                return;
            }
            if (!this.i && this.g.get()) {
                try {
                    this.h.f23453c = this.f.b();
                    final JSONObject a2 = this.f23446b.a(this.h);
                    for (final adt adtVar : this.f23447c) {
                        this.e.execute(new Runnable(adtVar, a2) { // from class: com.google.android.gms.internal.ads.ajx

                            /* renamed from: a  reason: collision with root package name */
                            private final adt f23455a;

                            /* renamed from: b  reason: collision with root package name */
                            private final JSONObject f23456b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f23455a = adtVar;
                                this.f23456b = a2;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f23455a.b("AFMA_updateActiveView", this.f23456b);
                            }
                        });
                    }
                    dbh.a(this.f23448d.zzf(a2), new zn("ActiveViewListener.callActiveViewJs"), zd.f);
                } catch (Exception e) {
                    zzd.zza("Failed to call ActiveViewJS", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void a(Context context) {
        synchronized (this) {
            this.h.f23452b = true;
            a();
        }
    }

    public final void a(adt adtVar) {
        synchronized (this) {
            this.f23447c.add(adtVar);
            ajp ajpVar = this.f23445a;
            adtVar.a("/updateActiveView", ajpVar.f23438d);
            adtVar.a("/untrackActiveViewUnit", ajpVar.e);
        }
    }

    @Override // com.google.android.gms.internal.ads.eeg
    public final void a(eeh eehVar) {
        synchronized (this) {
            this.h.f23451a = eehVar.j;
            this.h.e = eehVar;
            a();
        }
    }

    public final void a(Object obj) {
        this.j = new WeakReference<>(obj);
    }

    @Override // com.google.android.gms.internal.ads.ash
    public final void b() {
        synchronized (this) {
            if (this.g.compareAndSet(false, true)) {
                ajp ajpVar = this.f23445a;
                ajpVar.f23435a.a("/updateActiveView", ajpVar.f23438d);
                ajpVar.f23435a.a("/untrackActiveViewUnit", ajpVar.e);
                ajpVar.f23437c = this;
                a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void b(Context context) {
        synchronized (this) {
            this.h.f23452b = false;
            a();
        }
    }

    public final void c() {
        synchronized (this) {
            d();
            this.i = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void c(Context context) {
        synchronized (this) {
            this.h.f23454d = "u";
            a();
            d();
            this.i = true;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        synchronized (this) {
            this.h.f23452b = true;
            a();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        synchronized (this) {
            this.h.f23452b = false;
            a();
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
