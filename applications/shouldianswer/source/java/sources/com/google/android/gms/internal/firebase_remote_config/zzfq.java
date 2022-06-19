package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.internal.firebase_remote_config.zzfp;
import com.google.android.gms.internal.firebase_remote_config.zzfq;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfq.class */
public abstract class zzfq<MessageType extends zzfq<MessageType, BuilderType>, BuilderType extends zzfp<MessageType, BuilderType>> implements zziq {
    private static boolean zzok = false;
    protected int zzoj = 0;

    @Override // com.google.android.gms.internal.firebase_remote_config.zziq
    public final zzfx zzep() {
        try {
            zzgf zzx = zzfx.zzx(zzgs());
            zzb(zzx.zzfa());
            return zzx.zzez();
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "ByteString".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    public int zzeq() {
        throw new UnsupportedOperationException();
    }

    public void zzr(int i) {
        throw new UnsupportedOperationException();
    }
}
