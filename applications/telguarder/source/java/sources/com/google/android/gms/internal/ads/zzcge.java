package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcge.class */
public final class zzcge extends zzafm {
    private final Context zzaad;
    private final zzccd zzgch;
    private zzcbu zzgfm;
    private zzccz zzgit;

    public zzcge(Context context, zzccd zzccdVar, zzccz zzcczVar, zzcbu zzcbuVar) {
        this.zzaad = context;
        this.zzgch = zzccdVar;
        this.zzgit = zzcczVar;
        this.zzgfm = zzcbuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void destroy() {
        zzcbu zzcbuVar = this.zzgfm;
        if (zzcbuVar != null) {
            zzcbuVar.destroy();
        }
        this.zzgfm = null;
        this.zzgit = null;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final List<String> getAvailableAssetNames() {
        int i;
        int i2;
        SimpleArrayMap<String, zzaed> zzaoc = this.zzgch.zzaoc();
        SimpleArrayMap<String, String> zzaoe = this.zzgch.zzaoe();
        String[] strArr = new String[zzaoc.size() + zzaoe.size()];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = 0;
            i2 = i4;
            if (i3 < zzaoc.size()) {
                strArr[i4] = zzaoc.keyAt(i3);
                i3++;
                i4++;
            }
        }
        while (i < zzaoe.size()) {
            strArr[i2] = zzaoe.keyAt(i);
            i++;
            i2++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final String getCustomTemplateId() {
        return this.zzgch.getCustomTemplateId();
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final zzzc getVideoController() {
        return this.zzgch.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void performClick(String str) {
        zzcbu zzcbuVar = this.zzgfm;
        if (zzcbuVar != null) {
            zzcbuVar.zzfw(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void recordImpression() {
        zzcbu zzcbuVar = this.zzgfm;
        if (zzcbuVar != null) {
            zzcbuVar.zzanj();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final String zzct(String str) {
        return this.zzgch.zzaoe().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final zzaer zzcu(String str) {
        return this.zzgch.zzaoc().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final boolean zzp(IObjectWrapper iObjectWrapper) {
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof ViewGroup)) {
            return false;
        }
        zzccz zzcczVar = this.zzgit;
        if (!(zzcczVar != null && zzcczVar.zza((ViewGroup) unwrap))) {
            return false;
        }
        this.zzgch.zzanz().zza(new zzcgd(this));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zzq(IObjectWrapper iObjectWrapper) {
        zzcbu zzcbuVar;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof View) || this.zzgch.zzaob() == null || (zzcbuVar = this.zzgfm) == null) {
            return;
        }
        zzcbuVar.zzaa((View) unwrap);
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final IObjectWrapper zztm() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final IObjectWrapper zztr() {
        return ObjectWrapper.wrap(this.zzaad);
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final boolean zzts() {
        zzcbu zzcbuVar = this.zzgfm;
        return (zzcbuVar == null || zzcbuVar.zzanq()) && this.zzgch.zzaoa() != null && this.zzgch.zzanz() == null;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final boolean zztt() {
        IObjectWrapper zzaob = this.zzgch.zzaob();
        if (zzaob == null) {
            zzd.zzex("Trying to start OMID session before creation.");
            return false;
        }
        zzr.zzlg().zzab(zzaob);
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvs)).booleanValue() || this.zzgch.zzaoa() == null) {
            return true;
        }
        this.zzgch.zzaoa().zza("onSdkLoaded", new ArrayMap());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zztu() {
        String zzaod = this.zzgch.zzaod();
        if ("Google".equals(zzaod)) {
            zzd.zzex("Illegal argument specified for omid partner name.");
            return;
        }
        zzcbu zzcbuVar = this.zzgfm;
        if (zzcbuVar == null) {
            return;
        }
        zzcbuVar.zzi(zzaod, false);
    }
}
