package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Message;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamk.class */
public final class zzamk implements zzalf {
    private Message zza;
    private zzaml zzb;

    private zzamk() {
    }

    public /* synthetic */ zzamk(zzamj zzamjVar) {
    }

    private final void zzd() {
        this.zza = null;
        this.zzb = null;
        zzaml.zzk(this);
    }

    @Override // com.google.android.gms.internal.ads.zzalf
    public final void zza() {
        Message message = this.zza;
        Objects.requireNonNull(message);
        message.sendToTarget();
        zzd();
    }

    public final zzamk zzb(Message message, zzaml zzamlVar) {
        this.zza = message;
        this.zzb = zzamlVar;
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
