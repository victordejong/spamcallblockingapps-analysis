package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzas;
import com.google.android.gms.internal.clearcut.zzat;
import java.io.IOException;
import p131c.p161d.p170b.p224d.p252g.p255c.C4414t;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzas.class */
public abstract class zzas<MessageType extends zzas<MessageType, BuilderType>, BuilderType extends zzat<MessageType, BuilderType>> implements zzdo {
    public static boolean zzey = false;
    public int zzex = 0;

    /* renamed from: a */
    public int mo10731a() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public void mo10730a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.clearcut.zzdo
    /* renamed from: r */
    public final zzbb mo10680r() {
        try {
            C4414t zzk = zzbb.zzk(mo10681g());
            mo10684a(zzk.m25639b());
            return zzk.m25640a();
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
}
