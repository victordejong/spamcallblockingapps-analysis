package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzig;
import com.google.android.gms.internal.measurement.zzih;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzig.class */
public abstract class zzig<MessageType extends zzih<MessageType, BuilderType>, BuilderType extends zzig<MessageType, BuilderType>> implements zzlb {
    /* renamed from: zzao */
    public abstract zzig clone();

    public abstract zzig zzap(zzih zzihVar);

    public zzig zzaq(byte[] bArr, int i, int i2) throws zzkh {
        throw null;
    }

    public zzig zzar(byte[] bArr, int i, int i2, zzjj zzjjVar) throws zzkh {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final /* bridge */ /* synthetic */ zzlb zzas(zzlc zzlcVar) {
        if (zzbJ().getClass().isInstance(zzlcVar)) {
            return zzap((zzih) zzlcVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final /* synthetic */ zzlb zzat(byte[] bArr) throws zzkh {
        return zzaq(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final /* synthetic */ zzlb zzau(byte[] bArr, zzjj zzjjVar) throws zzkh {
        return zzar(bArr, 0, bArr.length, zzjjVar);
    }
}
