package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zztw;
import com.google.android.gms.internal.measurement.zztx;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zztw.class */
public abstract class zztw<MessageType extends zztw<MessageType, BuilderType>, BuilderType extends zztx<MessageType, BuilderType>> implements zzwt {
    private static boolean zzbts = false;
    protected int zzbtr = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzah(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.zzwt
    public final zzud zztt() {
        try {
            zzuk zzam = zzud.zzam(zzvu());
            zzb(zzam.zzuf());
            return zzam.zzue();
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
    public int zztu() {
        throw new UnsupportedOperationException();
    }
}
