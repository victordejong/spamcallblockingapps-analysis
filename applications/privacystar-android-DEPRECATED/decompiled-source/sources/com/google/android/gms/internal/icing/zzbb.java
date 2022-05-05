package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzbb;
import com.google.android.gms.internal.icing.zzbc;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbb.class */
public abstract class zzbb<MessageType extends zzbb<MessageType, BuilderType>, BuilderType extends zzbc<MessageType, BuilderType>> implements zzdr {
    private static boolean zzdj = false;
    protected int zzdi = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zze(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.icing.zzdr
    public final zzbi zzl() {
        try {
            zzbn zzj = zzbi.zzj(zzan());
            zzb(zzj.zzz());
            return zzj.zzy();
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + String.valueOf("ByteString").length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzm() {
        throw new UnsupportedOperationException();
    }
}
