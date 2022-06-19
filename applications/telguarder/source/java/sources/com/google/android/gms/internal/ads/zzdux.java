package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.Hex;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdux.class */
public final class zzdux {
    private static final Object zzhur = new Object();
    private final Context context;
    private final SharedPreferences zzcme;
    private final String zzhuo;
    private final zzdug zzhup;
    private boolean zzhuq;

    private zzdux(Context context, zzgp zzgpVar, zzdug zzdugVar) {
        this.zzhuq = false;
        this.context = context;
        this.zzhuo = Integer.toString(zzgpVar.zzv());
        this.zzcme = context.getSharedPreferences("pcvmspf", 0);
        this.zzhup = zzdugVar;
    }

    public zzdux(Context context, zzgp zzgpVar, zzdug zzdugVar, boolean z) {
        this(context, zzgpVar, zzdugVar);
        this.zzhuq = z;
    }

    private final void zza(int i, long j) {
        zzdug zzdugVar = this.zzhup;
        if (zzdugVar != null) {
            zzdugVar.zza(i, j);
        }
    }

    private final void zza(int i, long j, String str) {
        zzdug zzdugVar = this.zzhup;
        if (zzdugVar != null) {
            zzdugVar.zza(i, j, str);
        }
    }

    private final String zzays() {
        String valueOf = String.valueOf(this.zzhuo);
        return valueOf.length() != 0 ? "FBAMTD".concat(valueOf) : new String("FBAMTD");
    }

    private final String zzayt() {
        String valueOf = String.valueOf(this.zzhuo);
        return valueOf.length() != 0 ? "LATMTD".concat(valueOf) : new String("LATMTD");
    }

    private static String zzb(zzgr zzgrVar) {
        return Hex.bytesToStringLowercase(((zzgv) ((zzelb) zzgv.zzdl().zzav(zzgrVar.zzdc().zzdg()).zzaw(zzgrVar.zzdc().zzdh()).zzdk(zzgrVar.zzdc().zzdj()).zzdl(zzgrVar.zzdc().zzdk()).zzdj(zzgrVar.zzdc().zzdi()).zzbiw())).zzbfz().toByteArray());
    }

    private final zzgv zzej(int i) {
        String string = i == zzdva.zzhut ? this.zzcme.getString(zzayt(), null) : i == zzdva.zzhuu ? this.zzcme.getString(zzays(), null) : null;
        if (string == null) {
            return null;
        }
        try {
            return zzgv.zzb(zzejr.zzt(Hex.stringToBytes(string)), this.zzhuq ? zzeko.zzbhw() : zzeko.zzbhx());
        } catch (zzelo e) {
            return null;
        } catch (NullPointerException e2) {
            zza(2029, System.currentTimeMillis());
            return null;
        }
    }

    private final File zzhj(String str) {
        return new File(new File(this.context.getDir("pccache", 0), this.zzhuo), str);
    }

    public final boolean zza(zzgr zzgrVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzhur) {
            if (!zzdur.zza(new File(zzhj(zzgrVar.zzdc().zzdg()), "pcbc"), zzgrVar.zzde().toByteArray())) {
                zza(4020, currentTimeMillis);
                return false;
            }
            String zzb = zzb(zzgrVar);
            SharedPreferences.Editor edit = this.zzcme.edit();
            edit.putString(zzayt(), zzb);
            boolean commit = edit.commit();
            if (commit) {
                zza(5015, currentTimeMillis);
            } else {
                zza(4021, currentTimeMillis);
            }
            return commit;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013f A[Catch: all -> 0x02ae, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x000c, B:7:0x0026, B:9:0x0033, B:10:0x003d, B:12:0x0040, B:14:0x0055, B:19:0x006a, B:24:0x007f, B:25:0x00da, B:27:0x00e2, B:32:0x00f7, B:34:0x00ff, B:35:0x010c, B:37:0x0119, B:43:0x013c, B:45:0x013f, B:47:0x0173, B:48:0x017d, B:50:0x0180, B:52:0x018f, B:53:0x0199, B:57:0x01a0, B:59:0x01ab, B:60:0x01bb, B:62:0x01be, B:64:0x01f3, B:66:0x0202, B:68:0x020e, B:72:0x021e, B:74:0x0221, B:76:0x0235, B:78:0x0241, B:80:0x024c, B:81:0x0257, B:81:0x0257, B:82:0x025a, B:87:0x0289, B:89:0x0296, B:90:0x029b, B:91:0x02a1, B:92:0x02ab), top: B:99:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(com.google.android.gms.internal.ads.zzgr r7, com.google.android.gms.internal.ads.zzduy r8) {
        /*
            Method dump skipped, instructions count: 692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdux.zza(com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzduy):boolean");
    }

    public final boolean zzek(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzhur) {
            zzgv zzej = zzej(i);
            if (zzej == null) {
                zza(4025, currentTimeMillis);
                return false;
            }
            File zzhj = zzhj(zzej.zzdg());
            if (!new File(zzhj, "pcam.jar").exists()) {
                zza(4026, currentTimeMillis);
                return false;
            } else if (!new File(zzhj, "pcbc").exists()) {
                zza(4027, currentTimeMillis);
                return false;
            } else {
                zza(5019, currentTimeMillis);
                return true;
            }
        }
    }

    public final zzdup zzp(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzhur) {
            zzgv zzej = zzej(i);
            if (zzej == null) {
                zza(4022, currentTimeMillis);
                return null;
            }
            File zzhj = zzhj(zzej.zzdg());
            File file = new File(zzhj, "pcam.jar");
            File file2 = file;
            if (!file.exists()) {
                file2 = new File(zzhj, "pcam");
            }
            File file3 = new File(zzhj, "pcbc");
            File file4 = new File(zzhj, "pcopt");
            zza(5016, currentTimeMillis);
            return new zzdup(zzej, file2, file3, file4);
        }
    }
}
