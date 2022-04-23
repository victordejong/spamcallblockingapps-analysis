package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzwi.class */
public final class zzwi implements zzxk {
    private static final zzws zzcap = new zzwj();
    private final zzws zzcao;

    public zzwi() {
        this(new zzwk(zzvl.zzwb(), zzwz()));
    }

    private zzwi(zzws zzwsVar) {
        this.zzcao = (zzws) zzvo.zza(zzwsVar, "messageInfoFactory");
    }

    private static boolean zza(zzwr zzwrVar) {
        return zzwrVar.zzxg() == zzvm.zze.zzbzb;
    }

    private static zzws zzwz() {
        try {
            return (zzws) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return zzcap;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxk
    public final <T> zzxj<T> zzh(Class<T> cls) {
        zzxl.zzj(cls);
        zzwr zzf = this.zzcao.zzf(cls);
        return zzf.zzxh() ? zzvm.class.isAssignableFrom(cls) ? zzwy.zza(zzxl.zzxt(), zzvc.zzvr(), zzf.zzxi()) : zzwy.zza(zzxl.zzxr(), zzvc.zzvs(), zzf.zzxi()) : zzvm.class.isAssignableFrom(cls) ? zza(zzf) ? zzwx.zza(cls, zzf, zzxc.zzxl(), zzwd.zzwy(), zzxl.zzxt(), zzvc.zzvr(), zzwq.zzxe()) : zzwx.zza(cls, zzf, zzxc.zzxl(), zzwd.zzwy(), zzxl.zzxt(), null, zzwq.zzxe()) : zza(zzf) ? zzwx.zza(cls, zzf, zzxc.zzxk(), zzwd.zzwx(), zzxl.zzxr(), zzvc.zzvs(), zzwq.zzxd()) : zzwx.zza(cls, zzf, zzxc.zzxk(), zzwd.zzwx(), zzxl.zzxs(), null, zzwq.zzxd());
    }
}
