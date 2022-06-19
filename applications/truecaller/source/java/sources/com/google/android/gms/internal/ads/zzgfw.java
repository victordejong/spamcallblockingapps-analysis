package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgfw;
import com.google.android.gms.internal.ads.zzgga;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgfw.class */
public class zzgfw<MessageType extends zzgga<MessageType, BuilderType>, BuilderType extends zzgfw<MessageType, BuilderType>> extends zzgef<MessageType, BuilderType> {
    public MessageType zza;
    public boolean zzb = false;
    private final MessageType zzc;

    public zzgfw(MessageType messagetype) {
        this.zzc = messagetype;
        this.zza = (MessageType) messagetype.zzb(4, null, null);
    }

    private static final void zza(MessageType messagetype, MessageType messagetype2) {
        zzghq.zza().zzb(messagetype.getClass()).zzd(messagetype, messagetype2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzgef
    public final /* bridge */ /* synthetic */ zzgef zzac(zzgeg zzgegVar) {
        zzai((zzgga) zzgegVar);
        return this;
    }

    public void zzae() {
        MessageType messagetype = (MessageType) this.zza.zzb(4, null, null);
        zza(messagetype, this.zza);
        this.zza = messagetype;
    }

    /* renamed from: zzaf */
    public final BuilderType zzab() {
        BuilderType buildertype = (BuilderType) this.zzc.zzb(5, null, null);
        buildertype.zzai(zzak());
        return buildertype;
    }

    /* renamed from: zzag */
    public MessageType zzak() {
        if (this.zzb) {
            return this.zza;
        }
        MessageType messagetype = this.zza;
        zzghq.zza().zzb(messagetype.getClass()).zzj(messagetype);
        this.zzb = true;
        return this.zza;
    }

    public final MessageType zzah() {
        MessageType zzak = zzak();
        if (zzak.zzat()) {
            return zzak;
        }
        throw new zzgin(zzak);
    }

    public final BuilderType zzai(MessageType messagetype) {
        if (this.zzb) {
            zzae();
            this.zzb = false;
        }
        zza(this.zza, messagetype);
        return this;
    }

    public final BuilderType zzaj(byte[] bArr, int i, int i2, zzgfm zzgfmVar) throws zzggm {
        if (this.zzb) {
            zzae();
            this.zzb = false;
        }
        try {
            zzghq.zza().zzb(this.zza.getClass()).zzi(this.zza, bArr, 0, i2, new zzgej(zzgfmVar));
            return this;
        } catch (zzggm e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        } catch (IndexOutOfBoundsException e3) {
            throw zzggm.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzghj
    public final /* bridge */ /* synthetic */ zzghi zzbe() {
        return this.zzc;
    }
}
