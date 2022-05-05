package com.google.android.gms.iid;

import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.util.VisibleForTesting;
import java.security.KeyPair;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzo.class */
final class zzo {
    private final KeyPair zzbw;
    private final long zzbx;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public zzo(KeyPair keyPair, long j) {
        this.zzbw = keyPair;
        this.zzbx = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String zzo() {
        return Base64.encodeToString(this.zzbw.getPublic().getEncoded(), 11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String zzp() {
        return Base64.encodeToString(this.zzbw.getPrivate().getEncoded(), 11);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzo)) {
            return false;
        }
        zzo zzoVar = (zzo) obj;
        return this.zzbx == zzoVar.zzbx && this.zzbw.getPublic().equals(zzoVar.zzbw.getPublic()) && this.zzbw.getPrivate().equals(zzoVar.zzbw.getPrivate());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long getCreationTime() {
        return this.zzbx;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final KeyPair getKeyPair() {
        return this.zzbw;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zzbw.getPublic(), this.zzbw.getPrivate(), Long.valueOf(this.zzbx));
    }
}
