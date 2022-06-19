package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgkh;
import com.google.android.gms.internal.ads.zzgkl;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgkh.class */
public class zzgkh<MessageType extends zzgkl<MessageType, BuilderType>, BuilderType extends zzgkh<MessageType, BuilderType>> extends zzgim<MessageType, BuilderType> {
    public MessageType zza;
    public boolean zzb = false;
    private final MessageType zzc;

    public zzgkh(MessageType messagetype) {
        this.zzc = messagetype;
        this.zza = (MessageType) messagetype.zzb(4, null, null);
    }

    private static final void zza(MessageType messagetype, MessageType messagetype2) {
        zzgmd.zza().zzb(messagetype.getClass()).zzg(messagetype, messagetype2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzgim
    public final /* synthetic */ zzgim zzac(zzgin zzginVar) {
        zzaf((zzgkl) zzginVar);
        return this;
    }

    /* renamed from: zzae */
    public final BuilderType zzab() {
        BuilderType buildertype = (BuilderType) this.zzc.zzb(5, null, null);
        buildertype.zzaf(zzaj());
        return buildertype;
    }

    public final BuilderType zzaf(MessageType messagetype) {
        if (this.zzb) {
            zzal();
            this.zzb = false;
        }
        zza(this.zza, messagetype);
        return this;
    }

    public final BuilderType zzag(byte[] bArr, int i, int i2, zzgjx zzgjxVar) throws zzgkx {
        if (this.zzb) {
            zzal();
            this.zzb = false;
        }
        try {
            zzgmd.zza().zzb(this.zza.getClass()).zzi(this.zza, bArr, 0, i2, new zzgiq(zzgjxVar));
            return this;
        } catch (zzgkx e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        } catch (IndexOutOfBoundsException e3) {
            throw zzgkx.zzj();
        }
    }

    public final MessageType zzah() {
        MessageType zzaj = zzaj();
        if (zzaj.zzaM()) {
            return zzaj;
        }
        throw new zzgne(zzaj);
    }

    /* renamed from: zzai */
    public MessageType zzaj() {
        if (this.zzb) {
            return this.zza;
        }
        MessageType messagetype = this.zza;
        zzgmd.zza().zzb(messagetype.getClass()).zzf(messagetype);
        this.zzb = true;
        return this.zza;
    }

    public void zzal() {
        MessageType messagetype = (MessageType) this.zza.zzb(4, null, null);
        zza(messagetype, this.zza);
        this.zza = messagetype;
    }

    @Override // com.google.android.gms.internal.ads.zzglw
    public final /* synthetic */ zzglv zzbp() {
        return this.zzc;
    }
}
