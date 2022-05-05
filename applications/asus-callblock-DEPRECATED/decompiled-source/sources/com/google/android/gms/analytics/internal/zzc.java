package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.a.d;
import com.google.android.gms.common.internal.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzc.class */
public class zzc {

    /* renamed from: a  reason: collision with root package name */
    private final zzf f3854a;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzc(zzf zzfVar) {
        b.a(zzfVar);
        this.f3854a = zzfVar;
    }

    private static String a(Object obj) {
        return obj == null ? BuildConfig.FLAVOR : obj instanceof String ? (String) obj : obj instanceof Boolean ? obj == Boolean.TRUE ? "true" : "false" : obj instanceof Throwable ? ((Throwable) obj).toString() : obj.toString();
    }

    private void a(int i, String str, Object obj, Object obj2, Object obj3) {
        zzaf zzafVar = null;
        if (this.f3854a != null) {
            zzafVar = this.f3854a.zzmd();
        }
        if (zzafVar != null) {
            zzafVar.zza(i, str, obj, obj2, obj3);
            return;
        }
        String str2 = zzy.zzXF.get();
        if (Log.isLoggable(str2, i)) {
            Log.println(i, str2, zzc(str, obj, obj2, obj3));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String zzc(String str, Object obj, Object obj2, Object obj3) {
        String str2 = str;
        if (str == null) {
            str2 = BuildConfig.FLAVOR;
        }
        String a2 = a(obj);
        String a3 = a(obj2);
        String a4 = a(obj3);
        StringBuilder sb = new StringBuilder();
        String str3 = BuildConfig.FLAVOR;
        if (!TextUtils.isEmpty(str2)) {
            sb.append(str2);
            str3 = ": ";
        }
        String str4 = str3;
        if (!TextUtils.isEmpty(a2)) {
            sb.append(str3);
            sb.append(a2);
            str4 = ", ";
        }
        String str5 = str4;
        if (!TextUtils.isEmpty(a3)) {
            sb.append(str4);
            sb.append(a3);
            str5 = ", ";
        }
        if (!TextUtils.isEmpty(a4)) {
            sb.append(str5);
            sb.append(a4);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context getContext() {
        return this.f3854a.getContext();
    }

    public void zza(String str, Object obj) {
        a(2, str, obj, null, null);
    }

    public void zza(String str, Object obj, Object obj2) {
        a(2, str, obj, obj2, null);
    }

    public void zza(String str, Object obj, Object obj2, Object obj3) {
        a(3, str, obj, obj2, obj3);
    }

    public void zzb(String str, Object obj) {
        a(3, str, obj, null, null);
    }

    public void zzb(String str, Object obj, Object obj2) {
        a(3, str, obj, obj2, null);
    }

    public void zzb(String str, Object obj, Object obj2, Object obj3) {
        a(5, str, obj, obj2, obj3);
    }

    public void zzbG(String str) {
        a(2, str, null, null, null);
    }

    public void zzbH(String str) {
        a(3, str, null, null, null);
    }

    public void zzbI(String str) {
        a(4, str, null, null, null);
    }

    public void zzbJ(String str) {
        a(5, str, null, null, null);
    }

    public void zzbK(String str) {
        a(6, str, null, null, null);
    }

    public void zzc(String str, Object obj) {
        a(4, str, obj, null, null);
    }

    public void zzc(String str, Object obj, Object obj2) {
        a(5, str, obj, obj2, null);
    }

    public void zzd(String str, Object obj) {
        a(5, str, obj, null, null);
    }

    public void zzd(String str, Object obj, Object obj2) {
        a(6, str, obj, obj2, null);
    }

    public void zze(String str, Object obj) {
        a(6, str, obj, null, null);
    }

    public boolean zziW() {
        return Log.isLoggable(zzy.zzXF.get(), 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzkN() {
        this.f3854a.zzkN();
    }

    public GoogleAnalytics zzkq() {
        return this.f3854a.zzme();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzb zzkw() {
        return this.f3854a.zzkw();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzap zzkx() {
        return this.f3854a.zzkx();
    }

    public zzf zzlO() {
        return this.f3854a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzlP() {
        if (zzlS().zzmW()) {
            throw new IllegalStateException("Call only supported on the client side");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d zzlQ() {
        return this.f3854a.zzlQ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzaf zzlR() {
        return this.f3854a.zzlR();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzr zzlS() {
        return this.f3854a.zzlS();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzi zzlT() {
        return this.f3854a.zzlT();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzv zzlU() {
        return this.f3854a.zzlU();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzai zzlV() {
        return this.f3854a.zzlV();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzn zzlW() {
        return this.f3854a.zzmh();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zza zzlX() {
        return this.f3854a.zzmg();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzk zzlY() {
        return this.f3854a.zzlY();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzu zzlZ() {
        return this.f3854a.zzlZ();
    }
}
