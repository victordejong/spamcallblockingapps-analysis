package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.view.Window;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p231s4.AbstractC4288b;
import p231s4.AbstractC4296f;
import p231s4.AbstractC4297g;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzay.class */
public final class zzay implements AbstractC4288b {
    private final Application zza;
    private final zzac zzb;
    private final zzbi zzc;
    private final zzam zzd;
    private final zzbc zze;
    private final zzcl<zzbg> zzf;
    private Dialog zzg;
    private zzbg zzh;
    private final AtomicBoolean zzi = new AtomicBoolean();
    private final AtomicReference<zzax> zzj = new AtomicReference<>();
    private final AtomicReference<AbstractC4288b.AbstractC4289a> zzk = new AtomicReference<>();
    private final AtomicReference<zzaw> zzl = new AtomicReference<>();

    public zzay(Application application, zzac zzacVar, zzbi zzbiVar, zzam zzamVar, zzbc zzbcVar, zzcl<zzbg> zzclVar) {
        this.zza = application;
        this.zzb = zzacVar;
        this.zzc = zzbiVar;
        this.zzd = zzamVar;
        this.zze = zzbcVar;
        this.zzf = zzclVar;
    }

    private final void zzg() {
        Dialog dialog = this.zzg;
        if (dialog != null) {
            dialog.dismiss();
            this.zzg = null;
        }
        this.zzc.zza(null);
        zzaw andSet = this.zzl.getAndSet(null);
        if (andSet != null) {
            andSet.zza.zza.unregisterActivityLifecycleCallbacks(andSet);
        }
    }

    @Override // p231s4.AbstractC4288b
    public final void show(Activity activity, AbstractC4288b.AbstractC4289a abstractC4289a) {
        zzcd.zza();
        if (!this.zzi.compareAndSet(false, true)) {
            abstractC4289a.mo1114a(new zzj(3, "ConsentForm#show can only be invoked once.").zza());
            return;
        }
        zzaw zzawVar = new zzaw(this, activity);
        this.zza.registerActivityLifecycleCallbacks(zzawVar);
        this.zzl.set(zzawVar);
        this.zzc.zza(activity);
        Dialog dialog = new Dialog(activity, 16973840);
        dialog.setContentView(this.zzh);
        dialog.setCancelable(false);
        Window window = dialog.getWindow();
        if (window == null) {
            abstractC4289a.mo1114a(new zzj(3, "Activity with null windows is passed in.").zza());
            return;
        }
        window.setLayout(-1, -1);
        window.setBackgroundDrawable(new ColorDrawable(0));
        this.zzk.set(abstractC4289a);
        dialog.show();
        this.zzg = dialog;
        this.zzh.zzb("UMP_messagePresented", "");
    }

    public final zzbg zza() {
        return this.zzh;
    }

    public final void zzb(AbstractC4297g abstractC4297g, AbstractC4296f abstractC4296f) {
        zzbg zzb = ((zzbh) this.zzf).zzb();
        this.zzh = zzb;
        zzb.setBackgroundColor(0);
        zzb.getSettings().setJavaScriptEnabled(true);
        zzb.setWebViewClient(new zzbf(zzb, null));
        this.zzj.set(new zzax(abstractC4297g, abstractC4296f, null));
        this.zzh.loadDataWithBaseURL(this.zze.zza(), this.zze.zzb(), "text/html", "UTF-8", null);
        zzcd.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzau
            @Override // java.lang.Runnable
            public final void run() {
                zzay.this.zzf(new zzj(4, "Web view timed out."));
            }
        }, 10000L);
    }

    public final void zzc(int i) {
        zzg();
        AbstractC4288b.AbstractC4289a andSet = this.zzk.getAndSet(null);
        if (andSet == null) {
            return;
        }
        this.zzd.zzf(3);
        andSet.mo1114a(null);
    }

    public final void zzd(zzj zzjVar) {
        zzg();
        AbstractC4288b.AbstractC4289a andSet = this.zzk.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.mo1114a(zzjVar.zza());
    }

    public final void zze() {
        zzax andSet = this.zzj.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.onConsentFormLoadSuccess(this);
    }

    public final void zzf(zzj zzjVar) {
        zzax andSet = this.zzj.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.onConsentFormLoadFailure(zzjVar.zza());
    }
}
