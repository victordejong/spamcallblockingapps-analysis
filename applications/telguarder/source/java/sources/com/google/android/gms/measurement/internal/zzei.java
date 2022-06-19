package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzei.class */
public final class zzei extends zzgf {
    private String zzc;
    private char zza = (char) 0;
    private long zzb = -1;
    private final zzeg zzd = new zzeg(this, 6, false, false);
    private final zzeg zze = new zzeg(this, 6, true, false);
    private final zzeg zzf = new zzeg(this, 6, false, true);
    private final zzeg zzg = new zzeg(this, 5, false, false);
    private final zzeg zzh = new zzeg(this, 5, true, false);
    private final zzeg zzi = new zzeg(this, 5, false, true);
    private final zzeg zzj = new zzeg(this, 4, false, false);
    private final zzeg zzk = new zzeg(this, 3, false, false);
    private final zzeg zzl = new zzeg(this, 2, false, false);

    public zzei(zzfl zzflVar) {
        super(zzflVar);
    }

    public static Object zzl(String str) {
        if (str == null) {
            return null;
        }
        return new zzeh(str);
    }

    public static String zzo(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2;
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        String zzp = zzp(z, obj);
        String zzp2 = zzp(z, obj2);
        String zzp3 = zzp(z, obj3);
        StringBuilder sb = new StringBuilder();
        String str4 = "";
        if (!TextUtils.isEmpty(str3)) {
            sb.append(str3);
            str4 = ": ";
        }
        String str5 = str4;
        if (!TextUtils.isEmpty(zzp)) {
            sb.append(str4);
            sb.append(zzp);
            str5 = ", ";
        }
        if (!TextUtils.isEmpty(zzp2)) {
            sb.append(str5);
            sb.append(zzp2);
            str2 = ", ";
        } else {
            str2 = str5;
        }
        if (!TextUtils.isEmpty(zzp3)) {
            sb.append(str2);
            sb.append(zzp3);
        }
        return sb.toString();
    }

    static String zzp(boolean z, Object obj) {
        String str;
        String className;
        if (obj == null) {
            return "";
        }
        Long l = obj;
        if (obj instanceof Integer) {
            l = Long.valueOf(((Integer) obj).intValue());
        }
        int i = 0;
        if (l instanceof Long) {
            if (!z) {
                return String.valueOf(l);
            }
            Long l2 = (Long) l;
            if (Math.abs(l2.longValue()) < 100) {
                return String.valueOf(l);
            }
            String str2 = "";
            if (String.valueOf(l).charAt(0) == '-') {
                str2 = "-";
            }
            String valueOf = String.valueOf(Math.abs(l2.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str2.length() + 43 + str2.length());
            sb.append(str2);
            sb.append(round);
            sb.append("...");
            sb.append(str2);
            sb.append(round2);
            return sb.toString();
        } else if (l instanceof Boolean) {
            return String.valueOf(l);
        } else {
            if (!(l instanceof Throwable)) {
                if (!(l instanceof zzeh)) {
                    return z ? "-" : String.valueOf(l);
                }
                str = ((zzeh) l).zza;
                return str;
            }
            Throwable th = (Throwable) l;
            StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
            String zzz = zzz(zzfl.class.getCanonicalName());
            StackTraceElement[] stackTrace = th.getStackTrace();
            int length = stackTrace.length;
            while (true) {
                if (i >= length) {
                    break;
                }
                StackTraceElement stackTraceElement = stackTrace[i];
                if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && zzz(className).equals(zzz)) {
                    sb2.append(": ");
                    sb2.append(stackTraceElement);
                    break;
                }
                i++;
            }
            return sb2.toString();
        }
    }

    private static String zzz(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    @Override // com.google.android.gms.measurement.internal.zzgf
    protected final boolean zza() {
        return false;
    }

    public final zzeg zzb() {
        return this.zzd;
    }

    public final zzeg zzc() {
        return this.zze;
    }

    public final zzeg zzd() {
        return this.zzf;
    }

    public final zzeg zze() {
        return this.zzg;
    }

    public final zzeg zzf() {
        return this.zzh;
    }

    public final zzeg zzh() {
        return this.zzi;
    }

    public final zzeg zzi() {
        return this.zzj;
    }

    public final zzeg zzj() {
        return this.zzk;
    }

    public final zzeg zzk() {
        return this.zzl;
    }

    public final void zzm(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && Log.isLoggable(zzn(), i)) {
            Log.println(i, zzn(), zzo(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        Preconditions.checkNotNull(str);
        zzfi zzj = this.zzx.zzj();
        if (zzj == null) {
            Log.println(6, zzn(), "Scheduler not set. Not logging error/warn");
        } else if (!zzj.zzu()) {
            Log.println(6, zzn(), "Scheduler not initialized. Not logging error/warn");
        } else {
            if (i >= 9) {
                i = 8;
            }
            zzj.zzh(new zzef(this, i, str, obj, obj2, obj3));
        }
    }

    @EnsuresNonNull({"logTagDoNotUseDirectly"})
    public final String zzn() {
        String str;
        synchronized (this) {
            if (this.zzc == null) {
                if (this.zzx.zzt() != null) {
                    this.zzc = this.zzx.zzt();
                } else {
                    this.zzc = this.zzx.zzc().zzb();
                }
            }
            Preconditions.checkNotNull(this.zzc);
            str = this.zzc;
        }
        return str;
    }
}
