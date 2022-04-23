package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzgg;
import com.google.android.gms.internal.measurement.zzgi;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgi.class */
public abstract class zzgi<MessageType extends zzgg<MessageType, BuilderType>, BuilderType extends zzgi<MessageType, BuilderType>> implements zzji {
    /* renamed from: a */
    public abstract BuilderType mo9655a(MessageType messagetype);

    /* renamed from: a */
    public abstract BuilderType mo9654a(zzhb zzhbVar, zzhl zzhlVar) throws IOException;

    /* renamed from: a */
    public BuilderType mo9651a(byte[] bArr, int i, int i2) throws zzij {
        try {
            zzhb a = zzhb.m9785a(bArr, 0, i2, false);
            mo9654a(a, zzhl.m9676a());
            a.mo9787a(0);
            return this;
        } catch (zzij e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(mo9794a("byte array"), e2);
        }
    }

    /* renamed from: a */
    public BuilderType mo9650a(byte[] bArr, int i, int i2, zzhl zzhlVar) throws zzij {
        try {
            zzhb a = zzhb.m9785a(bArr, 0, i2, false);
            mo9654a(a, zzhlVar);
            a.mo9787a(0);
            return this;
        } catch (zzij e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(mo9794a("byte array"), e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzji
    /* renamed from: a */
    public final /* synthetic */ zzji mo9621a(zzjj zzjjVar) {
        if (mo9610j().getClass().isInstance(zzjjVar)) {
            return mo9655a((zzgi<MessageType, BuilderType>) ((zzgg) zzjjVar));
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    /* renamed from: a */
    public final /* synthetic */ zzji mo9620a(byte[] bArr, zzhl zzhlVar) throws zzij {
        mo9650a(bArr, 0, bArr.length, zzhlVar);
        return this;
    }

    /* renamed from: a */
    public final String mo9794a(String str) {
        String name = getClass().getName();
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 60 + String.valueOf(str).length());
        sb.append("Reading ");
        sb.append(name);
        sb.append(" from a ");
        sb.append(str);
        sb.append(" threw an IOException (should never happen).");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    /* renamed from: b */
    public final /* synthetic */ zzji mo9618b(byte[] bArr) throws zzij {
        mo9651a(bArr, 0, bArr.length);
        return this;
    }

    /* renamed from: k */
    public abstract BuilderType clone();
}
