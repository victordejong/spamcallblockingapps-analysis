package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC7475n4;
import com.google.android.gms.internal.measurement.AbstractC7489o4;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.o4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/o4.class */
public abstract class AbstractC7489o4<MessageType extends AbstractC7489o4<MessageType, BuilderType>, BuilderType extends AbstractC7475n4<MessageType, BuilderType>> implements AbstractC7623y6 {
    protected int zzb = 0;

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: l */
    public static <T> void m7044l(Iterable<T> iterable, List<? super T> list) {
        C7365f6.m7503a(iterable);
        if (iterable instanceof AbstractC7421j6) {
            List<?> mo7243f = ((AbstractC7421j6) iterable).mo7243f();
            AbstractC7421j6 abstractC7421j6 = (AbstractC7421j6) list;
            int size = list.size();
            for (Object obj : mo7243f) {
                if (obj == null) {
                    int size2 = abstractC7421j6.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    int size3 = abstractC7421j6.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        }
                        abstractC7421j6.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                } else if (obj instanceof zzgr) {
                    abstractC7421j6.mo7244e0((zzgr) obj);
                } else {
                    abstractC7421j6.add((String) obj);
                }
            }
        } else if (iterable instanceof AbstractC7380g7) {
            list.addAll(iterable);
        } else {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + iterable.size());
            }
            int size4 = list.size();
            for (T t : iterable) {
                if (t == 0) {
                    int size5 = list.size();
                    StringBuilder sb3 = new StringBuilder(37);
                    sb3.append("Element at index ");
                    sb3.append(size5 - size4);
                    sb3.append(" is null.");
                    String sb4 = sb3.toString();
                    int size6 = list.size();
                    while (true) {
                        size6--;
                        if (size6 < size4) {
                            break;
                        }
                        list.remove(size6);
                    }
                    throw new NullPointerException(sb4);
                }
                list.add(t);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7623y6
    /* renamed from: d */
    public final zzgr mo6728d() {
        try {
            int mo6727g = mo6727g();
            zzgr zzgrVar = zzgr.f34851d;
            byte[] bArr = new byte[mo6727g];
            AbstractC7364f5 m7506x = AbstractC7364f5.m7506x(bArr);
            mo6730b(m7506x);
            m7506x.m7527c();
            return new zzgp(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ByteString threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* renamed from: i */
    public final byte[] m7045i() {
        try {
            byte[] bArr = new byte[mo6727g()];
            AbstractC7364f5 m7506x = AbstractC7364f5.m7506x(bArr);
            mo6730b(m7506x);
            m7506x.m7527c();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a byte array threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* renamed from: j */
    public int mo6770j() {
        throw null;
    }

    /* renamed from: k */
    public void mo6769k(int i) {
        throw null;
    }
}
