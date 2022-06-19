package com.google.android.gms.iid;

import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import java.security.KeyPair;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzo.class */
final class zzo {
    private final KeyPair zzcb;
    private final long zzcc;

    public zzo(KeyPair keyPair, long j) {
        this.zzcb = keyPair;
        this.zzcc = j;
    }

    public final String zzq() {
        return Base64.encodeToString(this.zzcb.getPublic().getEncoded(), 11);
    }

    public final String zzr() {
        return Base64.encodeToString(this.zzcb.getPrivate().getEncoded(), 11);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzo)) {
            return false;
        }
        zzo zzoVar = (zzo) obj;
        return this.zzcc == zzoVar.zzcc && this.zzcb.getPublic().equals(zzoVar.zzcb.getPublic()) && this.zzcb.getPrivate().equals(zzoVar.zzcb.getPrivate());
    }

    public final long getCreationTime() {
        return this.zzcc;
    }

    public final KeyPair getKeyPair() {
        return this.zzcb;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zzcb.getPublic(), this.zzcb.getPrivate(), Long.valueOf(this.zzcc));
    }
}
