package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejg;
import com.google.android.gms.internal.ads.zzejh;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejh.class */
public abstract class zzejh<MessageType extends zzejh<MessageType, BuilderType>, BuilderType extends zzejg<MessageType, BuilderType>> implements zzemo {
    protected int zzilm = 0;

    public static <T> void zza(Iterable<T> iterable, List<? super T> list) {
        zzeld.checkNotNull(iterable);
        if (iterable instanceof zzelv) {
            List<?> zzbjm = ((zzelv) iterable).zzbjm();
            zzelv zzelvVar = (zzelv) list;
            int size = list.size();
            for (Object obj : zzbjm) {
                if (obj == null) {
                    int size2 = zzelvVar.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    for (int size3 = zzelvVar.size() - 1; size3 >= size; size3--) {
                        zzelvVar.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                } else if (obj instanceof zzejr) {
                    zzelvVar.zzak((zzejr) obj);
                } else {
                    zzelvVar.add((String) obj);
                }
            }
        } else if (iterable instanceof zzena) {
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

    @Override // com.google.android.gms.internal.ads.zzemo
    public final byte[] toByteArray() {
        try {
            byte[] bArr = new byte[zzbik()];
            zzekl zzv = zzekl.zzv(bArr);
            zzb(zzv);
            zzv.zzbht();
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

    @Override // com.google.android.gms.internal.ads.zzemo
    public final zzejr zzbfz() {
        try {
            zzejz zzgb = zzejr.zzgb(zzbik());
            zzb(zzgb.zzbgr());
            return zzgb.zzbgq();
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

    public int zzbga() {
        throw new UnsupportedOperationException();
    }

    public void zzfv(int i) {
        throw new UnsupportedOperationException();
    }
}
