package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzig;
import com.google.android.gms.internal.measurement.zzih;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzih.class */
public abstract class zzih<MessageType extends zzih<MessageType, BuilderType>, BuilderType extends zzig<MessageType, BuilderType>> implements zzlc {
    public int zzb = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public static void zzbo(Iterable iterable, List list) {
        zzkf.zze(iterable);
        if (iterable instanceof zzkm) {
            List zzh = ((zzkm) iterable).zzh();
            zzkm zzkmVar = (zzkm) list;
            int size = list.size();
            for (Object obj : zzh) {
                if (obj == null) {
                    int size2 = zzkmVar.size();
                    StringBuilder m8554x = C22128a.m8554x(37, "Element at index ");
                    m8554x.append(size2 - size);
                    m8554x.append(" is null.");
                    String sb = m8554x.toString();
                    int size3 = zzkmVar.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        }
                        zzkmVar.remove(size3);
                    }
                    throw new NullPointerException(sb);
                } else if (obj instanceof zzix) {
                    zzkmVar.zzi((zzix) obj);
                } else {
                    zzkmVar.add((String) obj);
                }
            }
        } else if (iterable instanceof zzlj) {
            list.addAll(iterable);
        } else {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(iterable.size() + list.size());
            }
            int size4 = list.size();
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    int size5 = list.size();
                    StringBuilder m8554x2 = C22128a.m8554x(37, "Element at index ");
                    m8554x2.append(size5 - size4);
                    m8554x2.append(" is null.");
                    String sb2 = m8554x2.toString();
                    int size6 = list.size();
                    while (true) {
                        size6--;
                        if (size6 < size4) {
                            break;
                        }
                        list.remove(size6);
                    }
                    throw new NullPointerException(sb2);
                }
                list.add(obj2);
            }
        }
    }

    public int zzbm() {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlc
    public final zzix zzbn() {
        try {
            int zzbr = zzbr();
            zzix zzixVar = zzix.zzb;
            byte[] bArr = new byte[zzbr];
            zzje zzC = zzje.zzC(bArr);
            zzbF(zzC);
            zzC.zzD();
            return new zziv(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(C22128a.m8610j(new StringBuilder(name.length() + 72), "Serializing ", name, " to a ByteString threw an IOException (should never happen)."), e);
        }
    }

    public void zzbp(int i) {
        throw null;
    }

    public final byte[] zzbq() {
        try {
            byte[] bArr = new byte[zzbr()];
            zzje zzC = zzje.zzC(bArr);
            zzbF(zzC);
            zzC.zzD();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(C22128a.m8610j(new StringBuilder(name.length() + 72), "Serializing ", name, " to a byte array threw an IOException (should never happen)."), e);
        }
    }
}
