package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.support.annotation.GuardedBy;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.AppMeasurement;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzap.class */
public final class zzap extends zzcp {
    @GuardedBy("this")
    private String zzalx;
    private char zzalw = (char) 0;
    private long zzadt = -1;
    private final zzar zzaly = new zzar(this, 6, false, false);
    private final zzar zzalz = new zzar(this, 6, true, false);
    private final zzar zzama = new zzar(this, 6, false, true);
    private final zzar zzamb = new zzar(this, 5, false, false);
    private final zzar zzamc = new zzar(this, 5, true, false);
    private final zzar zzamd = new zzar(this, 5, false, true);
    private final zzar zzame = new zzar(this, 4, false, false);
    private final zzar zzamf = new zzar(this, 3, false, false);
    private final zzar zzamg = new zzar(this, 2, false, false);

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzap(zzbt zzbtVar) {
        super(zzbtVar);
    }

    @VisibleForTesting
    private static String zza(boolean z, Object obj) {
        String str;
        StackTraceElement[] stackTrace;
        String className;
        if (obj == null) {
            return "";
        }
        Object obj2 = obj;
        if (obj instanceof Integer) {
            obj2 = Long.valueOf(((Integer) obj).intValue());
        }
        if (obj2 instanceof Long) {
            if (!z) {
                return String.valueOf(obj2);
            }
            Long l = (Long) obj2;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj2);
            }
            String str2 = String.valueOf(obj2).charAt(0) == '-' ? HelpFormatter.DEFAULT_OPT_PREFIX : "";
            String valueOf = String.valueOf(Math.abs(l.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 43 + String.valueOf(str2).length());
            sb.append(str2);
            sb.append(round);
            sb.append("...");
            sb.append(str2);
            sb.append(round2);
            return sb.toString();
        } else if (obj2 instanceof Boolean) {
            return String.valueOf(obj2);
        } else {
            if (obj2 instanceof Throwable) {
                Throwable th = (Throwable) obj2;
                StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
                String zzbw = zzbw(AppMeasurement.class.getCanonicalName());
                String zzbw2 = zzbw(zzbt.class.getCanonicalName());
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null) {
                        String zzbw3 = zzbw(className);
                        if (zzbw3.equals(zzbw) || zzbw3.equals(zzbw2)) {
                            sb2.append(": ");
                            sb2.append(stackTraceElement);
                            break;
                        }
                    }
                }
                return sb2.toString();
            } else if (!(obj2 instanceof zzas)) {
                return z ? HelpFormatter.DEFAULT_OPT_PREFIX : String.valueOf(obj2);
            } else {
                str = ((zzas) obj2).zzamp;
                return str;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        String zza = zza(z, obj);
        String zza2 = zza(z, obj2);
        String zza3 = zza(z, obj3);
        StringBuilder sb = new StringBuilder();
        String str3 = "";
        if (!TextUtils.isEmpty(str2)) {
            sb.append(str2);
            str3 = ": ";
        }
        String str4 = str3;
        if (!TextUtils.isEmpty(zza)) {
            sb.append(str3);
            sb.append(zza);
            str4 = ", ";
        }
        String str5 = str4;
        if (!TextUtils.isEmpty(zza2)) {
            sb.append(str4);
            sb.append(zza2);
            str5 = ", ";
        }
        if (!TextUtils.isEmpty(zza3)) {
            sb.append(str5);
            sb.append(zza3);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object zzbv(String str) {
        if (str == null) {
            return null;
        }
        return new zzas(str);
    }

    private static String zzbw(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    @VisibleForTesting
    private final String zzjm() {
        String str;
        synchronized (this) {
            if (this.zzalx == null) {
                if (this.zzadj.zzkm() != null) {
                    this.zzalx = this.zzadj.zzkm();
                } else {
                    this.zzalx = zzn.zzht();
                }
            }
            str = this.zzalx;
        }
        return str;
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    public final boolean isLoggable(int i) {
        return Log.isLoggable(zzjm(), i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    public final void zza(int i, String str) {
        Log.println(i, zzjm(), str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && isLoggable(i)) {
            zza(i, zza(false, str, obj, obj2, obj3));
        }
        if (!z2 && i >= 5) {
            Preconditions.checkNotNull(str);
            zzbo zzkh = this.zzadj.zzkh();
            if (zzkh == null) {
                zza(6, "Scheduler not set. Not logging error/warn");
            } else if (!zzkh.isInitialized()) {
                zza(6, "Scheduler not initialized. Not logging error/warn");
            } else {
                int i2 = i;
                if (i < 0) {
                    i2 = 0;
                }
                if (i2 >= 9) {
                    i2 = 8;
                }
                zzkh.zzc(new zzaq(this, i2, str, obj, obj2, obj3));
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzga() {
        super.zzga();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgb() {
        super.zzgb();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgc() {
        super.zzgc();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzx zzgk() {
        return super.zzgk();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzan zzgl() {
        return super.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzfk zzgm() {
        return super.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzbo zzgn() {
        return super.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzap zzgo() {
        return super.zzgo();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzba zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzn zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzk zzgr() {
        return super.zzgr();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    protected final boolean zzgt() {
        return false;
    }

    public final zzar zzjd() {
        return this.zzaly;
    }

    public final zzar zzje() {
        return this.zzalz;
    }

    public final zzar zzjf() {
        return this.zzama;
    }

    public final zzar zzjg() {
        return this.zzamb;
    }

    public final zzar zzjh() {
        return this.zzamc;
    }

    public final zzar zzji() {
        return this.zzamd;
    }

    public final zzar zzjj() {
        return this.zzame;
    }

    public final zzar zzjk() {
        return this.zzamf;
    }

    public final zzar zzjl() {
        return this.zzamg;
    }

    public final String zzjn() {
        Pair<String, Long> zzfm = zzgp().zzand.zzfm();
        if (zzfm == null || zzfm == zzba.zzanc) {
            return null;
        }
        String valueOf = String.valueOf(zzfm.second);
        String str = (String) zzfm.first;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length());
        sb.append(valueOf);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }
}
