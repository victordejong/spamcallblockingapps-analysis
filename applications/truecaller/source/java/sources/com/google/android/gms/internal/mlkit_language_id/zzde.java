package com.google.android.gms.internal.mlkit_language_id;

import com.google.android.gms.internal.mlkit_language_id.zzde;
import com.google.android.gms.internal.mlkit_language_id.zzdh;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzde.class */
public abstract class zzde<MessageType extends zzde<MessageType, BuilderType>, BuilderType extends zzdh<MessageType, BuilderType>> implements zzfz {
    public int zza = 0;

    public static <T> void zza(Iterable<T> iterable, List<? super T> list) {
        zzeq.zza(iterable);
        if (iterable instanceof zzfg) {
            List<?> zzb = ((zzfg) iterable).zzb();
            zzfg zzfgVar = (zzfg) list;
            int size = list.size();
            for (Object obj : zzb) {
                if (obj == null) {
                    String m8686M1 = C22128a.m8686M1(37, "Element at index ", zzfgVar.size() - size, " is null.");
                    int size2 = zzfgVar.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            break;
                        }
                        zzfgVar.remove(size2);
                    }
                    throw new NullPointerException(m8686M1);
                } else if (obj instanceof zzdn) {
                    zzfgVar.zza((zzdn) obj);
                } else {
                    zzfgVar.add((String) obj);
                }
            }
        } else if (iterable instanceof zzgi) {
            list.addAll((Collection) iterable);
        } else {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
            }
            int size3 = list.size();
            for (T t : iterable) {
                if (t == null) {
                    String m8686M12 = C22128a.m8686M1(37, "Element at index ", list.size() - size3, " is null.");
                    int size4 = list.size();
                    while (true) {
                        size4--;
                        if (size4 < size3) {
                            break;
                        }
                        list.remove(size4);
                    }
                    throw new NullPointerException(m8686M12);
                }
                list.add(t);
            }
        }
    }

    public void zza(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfz
    public final zzdn zze() {
        try {
            zzdv zzc = zzdn.zzc(zzj());
            zza(zzc.zzb());
            return zzc.zza();
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder m8736A = C22128a.m8736A("ByteString".length() + name.length() + 62, "Serializing ", name, " to a ", "ByteString");
            m8736A.append(" threw an IOException (should never happen).");
            throw new RuntimeException(m8736A.toString(), e);
        }
    }

    public final byte[] zzf() {
        try {
            byte[] bArr = new byte[zzj()];
            zzea zza = zzea.zza(bArr);
            zza(zza);
            zza.zzb();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder m8736A = C22128a.m8736A("byte array".length() + name.length() + 62, "Serializing ", name, " to a ", "byte array");
            m8736A.append(" threw an IOException (should never happen).");
            throw new RuntimeException(m8736A.toString(), e);
        }
    }

    public int zzg() {
        throw new UnsupportedOperationException();
    }
}
