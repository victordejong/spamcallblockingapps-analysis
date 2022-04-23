package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzgg;
import com.google.android.gms.internal.measurement.zzgh;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgg.class */
public abstract class zzgg<MessageType extends zzgh<MessageType, BuilderType>, BuilderType extends zzgg<MessageType, BuilderType>> implements zzjk {
    /* renamed from: m */
    private final String m12662m(String str) {
        String name = getClass().getName();
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 60 + String.valueOf(str).length());
        sb.append("Reading ");
        sb.append(name);
        sb.append(" from a ");
        sb.append(str);
        sb.append(" threw an IOException (should never happen).");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzjk
    /* renamed from: B */
    public final /* synthetic */ zzjk mo12325B(zzjh zzjhVar) {
        if (mo12327t().getClass().isInstance(zzjhVar)) {
            mo12419g((zzgh) zzjhVar);
            return this;
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    /* renamed from: I */
    public final /* synthetic */ zzjk mo12324I(byte[] bArr) throws zzih {
        mo12417j(bArr, 0, bArr.length);
        return this;
    }

    /* renamed from: g */
    protected abstract BuilderType mo12419g(MessageType messagetype);

    /* renamed from: i */
    public abstract BuilderType mo12418i(zzhd zzhdVar, zzhm zzhmVar) throws IOException;

    /* renamed from: j */
    public BuilderType mo12417j(byte[] bArr, int i, int i2) throws zzih {
        try {
            zzhd c = zzhd.m12607c(bArr, 0, i2, false);
            mo12418i(c, zzhm.m12475a());
            c.mo12586d(0);
            return this;
        } catch (zzih e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(m12662m("byte array"), e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    /* renamed from: j0 */
    public final /* synthetic */ zzjk mo12322j0(byte[] bArr, zzhm zzhmVar) throws zzih {
        mo12416l(bArr, 0, bArr.length, zzhmVar);
        return this;
    }

    /* renamed from: l */
    public BuilderType mo12416l(byte[] bArr, int i, int i2, zzhm zzhmVar) throws zzih {
        try {
            zzhd c = zzhd.m12607c(bArr, 0, i2, false);
            mo12418i(c, zzhmVar);
            c.mo12586d(0);
            return this;
        } catch (zzih e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(m12662m("byte array"), e2);
        }
    }

    /* renamed from: n */
    public abstract BuilderType clone();
}
