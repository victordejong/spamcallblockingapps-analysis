package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Message;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfh.class */
public final class zzfh implements zzeh {
    private Message zza;
    private zzfi zzb;

    private zzfh() {
    }

    public /* synthetic */ zzfh(zzfg zzfgVar) {
    }

    private final void zzd() {
        this.zza = null;
        this.zzb = null;
        zzfi.zzk(this);
    }

    @Override // com.google.android.gms.internal.ads.zzeh
    public final void zza() {
        Message message = this.zza;
        Objects.requireNonNull(message);
        message.sendToTarget();
        zzd();
    }

    public final zzfh zzb(Message message, zzfi zzfiVar) {
        this.zza = message;
        this.zzb = zzfiVar;
        return this;
    }

    public final boolean zzc(Handler handler) {
        Message message = this.zza;
        Objects.requireNonNull(message);
        boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue(message);
        zzd();
        return sendMessageAtFrontOfQueue;
    }
}
