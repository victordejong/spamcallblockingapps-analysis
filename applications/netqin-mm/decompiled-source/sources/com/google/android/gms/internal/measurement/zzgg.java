package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzgg;
import com.google.android.gms.internal.measurement.zzgi;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4507h4;
import p131c.p161d.p170b.p224d.p252g.p258f.C4572q2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgg.class */
public abstract class zzgg<MessageType extends zzgg<MessageType, BuilderType>, BuilderType extends zzgi<MessageType, BuilderType>> implements zzjj {
    public int zza = 0;

    /* renamed from: a */
    public static <T> void m9795a(Iterable<T> iterable, List<? super T> list) {
        zzia.m9638a(iterable);
        if (iterable instanceof zziq) {
            List<?> zzb = ((zziq) iterable).zzb();
            zziq zziqVar = (zziq) list;
            int size = list.size();
            for (Object obj : zzb) {
                if (obj == null) {
                    int size2 = zziqVar.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    for (int size3 = zziqVar.size() - 1; size3 >= size; size3--) {
                        zziqVar.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                } else if (obj instanceof zzgp) {
                    zziqVar.mo9598a((zzgp) obj);
                } else {
                    zziqVar.add((String) obj);
                }
            }
        } else if (iterable instanceof AbstractC4507h4) {
            list.addAll((Collection) iterable);
        } else {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size4 = list.size();
            for (T t : iterable) {
                if (t == null) {
                    int size5 = list.size();
                    StringBuilder sb3 = new StringBuilder(37);
                    sb3.append("Element at index ");
                    sb3.append(size5 - size4);
                    sb3.append(" is null.");
                    String sb4 = sb3.toString();
                    for (int size6 = list.size() - 1; size6 >= size4; size6--) {
                        list.remove(size6);
                    }
                    throw new NullPointerException(sb4);
                }
                list.add(t);
            }
        }
    }

    /* renamed from: a */
    public void mo9673a(int i) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public final byte[] m9796a() {
        try {
            byte[] bArr = new byte[mo9615c()];
            zzhi a = zzhi.m9752a(bArr);
            mo9616a(a);
            a.m9751b();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "byte array".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    /* renamed from: d */
    public final zzgp mo9614d() {
        try {
            C4572q2 zzc = zzgp.zzc(mo9615c());
            mo9616a(zzc.m25315b());
            return zzc.m25316a();
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

    /* renamed from: i */
    public int mo9664i() {
        throw new UnsupportedOperationException();
    }
}
