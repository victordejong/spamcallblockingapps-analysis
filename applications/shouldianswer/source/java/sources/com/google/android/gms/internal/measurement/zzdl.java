package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzdl;
import com.google.android.gms.internal.measurement.zzdn;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdl.class */
public abstract class zzdl<MessageType extends zzdl<MessageType, BuilderType>, BuilderType extends zzdn<MessageType, BuilderType>> implements zzgo {
    protected int zza = 0;

    public static <T> void zza(Iterable<T> iterable, List<? super T> list) {
        zzff.zza(iterable);
        if (iterable instanceof zzfv) {
            List<?> zzb = ((zzfv) iterable).zzb();
            zzfv zzfvVar = (zzfv) list;
            int size = list.size();
            for (Object obj : zzb) {
                if (obj == null) {
                    int size2 = zzfvVar.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    for (int size3 = zzfvVar.size() - 1; size3 >= size; size3--) {
                        zzfvVar.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                } else if (obj instanceof zzdu) {
                    zzfvVar.zza((zzdu) obj);
                } else {
                    zzfvVar.add((String) obj);
                }
            }
        } else if (iterable instanceof zzha) {
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

    @Override // com.google.android.gms.internal.measurement.zzgo
    public final zzdu zzbh() {
        try {
            zzec zzc = zzdu.zzc(zzbn());
            zza(zzc.zzb());
            return zzc.zza();
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

    public final byte[] zzbi() {
        try {
            byte[] bArr = new byte[zzbn()];
            zzen zza = zzen.zza(bArr);
            zza(zza);
            zza.zzb();
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

    public int zzbj() {
        throw new UnsupportedOperationException();
    }

    public void zzc(int i) {
        throw new UnsupportedOperationException();
    }
}
