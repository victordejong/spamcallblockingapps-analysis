package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqr.class */
public final class zzaqr extends zzaqq implements zzaif<zzbeb> {
    private final Context context;
    private float density;
    private int rotation;
    private final WindowManager zzbre;
    private final zzbeb zzdjd;
    private final zzaaw zzdqh;
    private DisplayMetrics zzwz;
    private int zzdqi = -1;
    private int zzdqj = -1;
    private int maxWidth = -1;
    private int maxHeight = -1;
    private int zzdqk = -1;
    private int zzdql = -1;

    public zzaqr(zzbeb zzbebVar, Context context, zzaaw zzaawVar) {
        super(zzbebVar);
        this.zzdjd = zzbebVar;
        this.context = context;
        this.zzdqh = zzaawVar;
        this.zzbre = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbebVar, Map map) {
        this.zzwz = new DisplayMetrics();
        Display defaultDisplay = this.zzbre.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zzwz);
        this.density = this.zzwz.density;
        this.rotation = defaultDisplay.getRotation();
        zzwr.zzqn();
        DisplayMetrics displayMetrics = this.zzwz;
        this.zzdqi = zzaza.zzb(displayMetrics, displayMetrics.widthPixels);
        zzwr.zzqn();
        DisplayMetrics displayMetrics2 = this.zzwz;
        this.zzdqj = zzaza.zzb(displayMetrics2, displayMetrics2.heightPixels);
        Activity zzabe = this.zzdjd.zzabe();
        if (zzabe == null || zzabe.getWindow() == null) {
            this.maxWidth = this.zzdqi;
            this.maxHeight = this.zzdqj;
        } else {
            zzr.zzkr();
            int[] zzf = zzj.zzf(zzabe);
            zzwr.zzqn();
            this.maxWidth = zzaza.zzb(this.zzwz, zzf[0]);
            zzwr.zzqn();
            this.maxHeight = zzaza.zzb(this.zzwz, zzf[1]);
        }
        if (this.zzdjd.zzacv().zzaeo()) {
            this.zzdqk = this.zzdqi;
            this.zzdql = this.zzdqj;
        } else {
            this.zzdjd.measure(0, 0);
        }
        zza(this.zzdqi, this.zzdqj, this.maxWidth, this.maxHeight, this.density, this.rotation);
        this.zzdjd.zza("onDeviceFeaturesReceived", new zzaqm(new zzaqo().zzaf(this.zzdqh.zzrx()).zzae(this.zzdqh.zzry()).zzag(this.zzdqh.zzsa()).zzah(this.zzdqh.zzrz()).zzai(true)).zzdr());
        int[] iArr = new int[2];
        this.zzdjd.getLocationOnScreen(iArr);
        zzj(zzwr.zzqn().zzd(this.context, iArr[0]), zzwr.zzqn().zzd(this.context, iArr[1]));
        if (zzd.isLoggable(2)) {
            zzd.zzew("Dispatching Ready Event.");
        }
        zzdt(this.zzdjd.zzabj().zzbrp);
    }

    public final void zzj(int i, int i2) {
        int i3 = 0;
        if (this.context instanceof Activity) {
            zzr.zzkr();
            i3 = zzj.zzh((Activity) this.context)[0];
        }
        if (this.zzdjd.zzacv() == null || !this.zzdjd.zzacv().zzaeo()) {
            int width = this.zzdjd.getWidth();
            int height = this.zzdjd.getHeight();
            int i4 = width;
            int i5 = height;
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcnu)).booleanValue()) {
                int i6 = width;
                if (width == 0) {
                    i6 = width;
                    if (this.zzdjd.zzacv() != null) {
                        i6 = this.zzdjd.zzacv().widthPixels;
                    }
                }
                i4 = i6;
                i5 = height;
                if (height == 0) {
                    i4 = i6;
                    i5 = height;
                    if (this.zzdjd.zzacv() != null) {
                        i5 = this.zzdjd.zzacv().heightPixels;
                        i4 = i6;
                    }
                }
            }
            this.zzdqk = zzwr.zzqn().zzd(this.context, i4);
            this.zzdql = zzwr.zzqn().zzd(this.context, i5);
        }
        zzb(i, i2 - i3, this.zzdqk, this.zzdql);
        this.zzdjd.zzacx().zzi(i, i2);
    }
}
