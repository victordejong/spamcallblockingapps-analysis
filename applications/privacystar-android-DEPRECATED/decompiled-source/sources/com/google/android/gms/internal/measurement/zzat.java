package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.zzk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzat.class */
public class zzat {
    private final zzaw zzvy;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzat(zzaw zzawVar) {
        Preconditions.checkNotNull(zzawVar);
        this.zzvy = zzawVar;
    }

    private final void zza(int i, String str, Object obj, Object obj2, Object obj3) {
        zzcp zzcn = this.zzvy != null ? this.zzvy.zzcn() : null;
        if (zzcn != null) {
            String str2 = zzcf.zzyx.get();
            if (Log.isLoggable(str2, i)) {
                Log.println(i, str2, zzcp.zzc(str, obj, obj2, obj3));
            }
            if (i >= 5) {
                zzcn.zzb(i, str, obj, obj2, obj3);
                return;
            }
            return;
        }
        String str3 = zzcf.zzyx.get();
        if (Log.isLoggable(str3, i)) {
            Log.println(i, str3, zzc(str, obj, obj2, obj3));
        }
    }

    private static String zzb(Object obj) {
        return obj == null ? "" : obj instanceof String ? (String) obj : obj instanceof Boolean ? obj == Boolean.TRUE ? "true" : "false" : obj instanceof Throwable ? ((Throwable) obj).toString() : obj.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String zzc(String str, Object obj, Object obj2, Object obj3) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        String zzb = zzb(obj);
        String zzb2 = zzb(obj2);
        String zzb3 = zzb(obj3);
        StringBuilder sb = new StringBuilder();
        String str3 = "";
        if (!TextUtils.isEmpty(str2)) {
            sb.append(str2);
            str3 = ": ";
        }
        String str4 = str3;
        if (!TextUtils.isEmpty(zzb)) {
            sb.append(str3);
            sb.append(zzb);
            str4 = ", ";
        }
        String str5 = str4;
        if (!TextUtils.isEmpty(zzb2)) {
            sb.append(str4);
            sb.append(zzb2);
            str5 = ", ";
        }
        if (!TextUtils.isEmpty(zzb3)) {
            sb.append(str5);
            sb.append(zzb3);
        }
        return sb.toString();
    }

    public static boolean zzck() {
        return Log.isLoggable(zzcf.zzyx.get(), 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Context getContext() {
        return this.zzvy.getContext();
    }

    public final void zza(String str, Object obj) {
        zza(2, str, obj, null, null);
    }

    public final void zza(String str, Object obj, Object obj2) {
        zza(2, str, obj, obj2, null);
    }

    public final void zza(String str, Object obj, Object obj2, Object obj3) {
        zza(3, str, obj, obj2, obj3);
    }

    public final void zzb(String str, Object obj) {
        zza(3, str, obj, null, null);
    }

    public final void zzb(String str, Object obj, Object obj2) {
        zza(3, str, obj, obj2, null);
    }

    public final void zzb(String str, Object obj, Object obj2, Object obj3) {
        zza(5, str, obj, obj2, obj3);
    }

    public final zzaw zzbw() {
        return this.zzvy;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Clock zzbx() {
        return this.zzvy.zzbx();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzcp zzby() {
        return this.zzvy.zzby();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzbx zzbz() {
        return this.zzvy.zzbz();
    }

    public final void zzc(String str, Object obj) {
        zza(4, str, obj, null, null);
    }

    public final void zzc(String str, Object obj, Object obj2) {
        zza(5, str, obj, obj2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzk zzca() {
        return this.zzvy.zzca();
    }

    public final GoogleAnalytics zzcb() {
        return this.zzvy.zzco();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzal zzcc() {
        return this.zzvy.zzcc();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzcc zzcd() {
        return this.zzvy.zzcd();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzdh zzce() {
        return this.zzvy.zzce();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzct zzcf() {
        return this.zzvy.zzcf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzbo zzcg() {
        return this.zzvy.zzcr();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzak zzch() {
        return this.zzvy.zzcq();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzbh zzci() {
        return this.zzvy.zzci();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzcb zzcj() {
        return this.zzvy.zzcj();
    }

    public final void zzd(String str, Object obj) {
        zza(5, str, obj, null, null);
    }

    public final void zzd(String str, Object obj, Object obj2) {
        zza(6, str, obj, obj2, null);
    }

    public final void zze(String str, Object obj) {
        zza(6, str, obj, null, null);
    }

    public final void zzq(String str) {
        zza(2, str, null, null, null);
    }

    public final void zzr(String str) {
        zza(3, str, null, null, null);
    }

    public final void zzs(String str) {
        zza(4, str, null, null, null);
    }

    public final void zzt(String str) {
        zza(5, str, null, null, null);
    }

    public final void zzu(String str) {
        zza(6, str, null, null, null);
    }
}
