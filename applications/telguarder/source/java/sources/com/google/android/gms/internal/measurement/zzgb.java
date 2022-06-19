package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzga;
import com.google.android.gms.internal.measurement.zzgb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgb.class */
public abstract class zzgb<MessageType extends zzgb<MessageType, BuilderType>, BuilderType extends zzga<MessageType, BuilderType>> implements zzix {
    protected int zzb = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void zzbs(Iterable<T> iterable, List<? super T> list) {
        zzia.zza(iterable);
        if (iterable instanceof zzih) {
            List<?> zzh = ((zzih) iterable).zzh();
            zzih zzihVar = (zzih) list;
            int size = list.size();
            for (Object obj : zzh) {
                if (obj == null) {
                    int size2 = zzihVar.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    int size3 = zzihVar.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        }
                        zzihVar.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                } else if (obj instanceof zzgs) {
                    zzihVar.zzf((zzgs) obj);
                } else {
                    zzihVar.add((String) obj);
                }
            }
        } else if (iterable instanceof zzje) {
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

    @Override // com.google.android.gms.internal.measurement.zzix
    public final zzgs zzbo() {
        try {
            int zzbw = zzbw();
            zzgs zzgsVar = zzgs.zzb;
            byte[] bArr = new byte[zzbw];
            zzgz zzt = zzgz.zzt(bArr);
            zzbv(zzt);
            zzt.zzC();
            return new zzgq(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ByteString threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    public final byte[] zzbp() {
        try {
            byte[] bArr = new byte[zzbw()];
            zzgz zzt = zzgz.zzt(bArr);
            zzbv(zzt);
            zzt.zzC();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a byte array threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    public int zzbq() {
        throw null;
    }

    public void zzbr(int i) {
        throw null;
    }
}
