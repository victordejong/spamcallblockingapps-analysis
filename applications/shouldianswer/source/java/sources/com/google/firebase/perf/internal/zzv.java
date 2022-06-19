package com.google.firebase.perf.internal;

import android.content.Context;
import android.provider.Settings;
import com.google.android.flexbox.FlexItem;
import com.google.android.gms.internal.firebase-perf.zzan;
import com.google.android.gms.internal.firebase-perf.zzcg;
import com.google.android.gms.internal.firebase_perf.zzao;
import com.google.android.gms.internal.firebase_perf.zzbd;
import com.google.android.gms.internal.firebase_perf.zzch;
import com.google.android.gms.internal.firebase_perf.zzco;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzv.class */
public final class zzv {
    private final RemoteConfigManager zzbz;
    private final long zzee;
    private boolean zzef;
    private zzw zzeg;
    private zzw zzeh;

    private zzv(long j, long j2, zzan zzanVar, long j3, RemoteConfigManager remoteConfigManager) {
        this.zzef = false;
        this.zzeg = null;
        this.zzeh = null;
        this.zzee = j3;
        this.zzbz = remoteConfigManager;
        this.zzeg = new zzw(100L, 500L, zzanVar, remoteConfigManager, zzu.TRACE, this.zzef);
        this.zzeh = new zzw(100L, 500L, zzanVar, remoteConfigManager, zzu.NETWORK, this.zzef);
    }

    public zzv(Context context, long j, long j2) {
        this(100L, 500L, new com.google.android.gms.internal.firebase_perf.zzan(), zzh(Settings.Secure.getString(context.getContentResolver(), "android_id")), RemoteConfigManager.zzbi());
        this.zzef = zzbd.zzg(context);
    }

    private static boolean zzb(List<zzch> list) {
        return list.size() > 0 && list.get(0).zzep() > 0 && list.get(0).zzn(0) == zzco.zzli;
    }

    private final float zzg(String str) {
        float floatValue = ((Float) this.zzbz.zzb(str, Float.valueOf(1.0f))).floatValue();
        if (FlexItem.FLEX_GROW_DEFAULT > floatValue || floatValue > 1.0f) {
            return 100.0f;
        }
        return floatValue * 100.0f;
    }

    private static long zzh(String str) {
        int i;
        try {
            i = zzbd.zza(MessageDigest.getInstance("SHA-1").digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e) {
            i = zzbd.zza(str.getBytes());
        }
        return (((i % 100000000) + 100000000) % 100000000) + 1;
    }

    public final void zzb(boolean z) {
        this.zzeg.zzb(z);
        this.zzeh.zzb(z);
    }

    public final boolean zzb(zzcg zzcgVar) {
        if (zzcgVar.zzeh()) {
            if (!(this.zzee <= ((long) (zzg("trace_sampling_rate") * 1000000.0f))) && !zzb(zzcgVar.zzei().zzdz())) {
                return false;
            }
        }
        if (zzcgVar.zzej()) {
            if (!(this.zzee <= ((long) (zzg("network_sampling_rate") * 1000000.0f))) && !zzb(zzcgVar.zzek().zzdz())) {
                return false;
            }
        }
        if (!((!zzcgVar.zzeh() || ((!zzcgVar.zzei().getName().equals(zzao.zzgs.toString()) && !zzcgVar.zzei().getName().equals(zzao.zzgt.toString())) || zzcgVar.zzei().zzes() <= 0)) && !zzcgVar.zzel())) {
            return true;
        }
        if (zzcgVar.zzej()) {
            return this.zzeh.zzb(zzcgVar);
        }
        if (!zzcgVar.zzeh()) {
            return false;
        }
        return this.zzeg.zzb(zzcgVar);
    }
}
