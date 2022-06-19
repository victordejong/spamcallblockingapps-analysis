package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgef;
import com.google.android.gms.internal.ads.zzgeg;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgeg.class */
public abstract class zzgeg<MessageType extends zzgeg<MessageType, BuilderType>, BuilderType extends zzgef<MessageType, BuilderType>> implements zzghi {
    public int zza = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void zzar(Iterable<T> iterable, List<? super T> list) {
        zzggk.zza(iterable);
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(iterable.size() + list.size());
        }
        int size = list.size();
        for (T t : iterable) {
            if (t == 0) {
                int size2 = list.size();
                StringBuilder m8554x = C22128a.m8554x(37, "Element at index ");
                m8554x.append(size2 - size);
                m8554x.append(" is null.");
                String sb = m8554x.toString();
                int size3 = list.size();
                while (true) {
                    size3--;
                    if (size3 < size) {
                        break;
                    }
                    list.remove(size3);
                }
                throw new NullPointerException(sb);
            }
            list.add(t);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzghi
    public final zzgex zzan() {
        try {
            int zzaw = zzaw();
            zzgex zzgexVar = zzgex.zzb;
            byte[] bArr = new byte[zzaw];
            zzgfh zzu = zzgfh.zzu(bArr);
            zzav(zzu);
            zzu.zzD();
            return new zzget(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(C22128a.m8610j(new StringBuilder(name.length() + 72), "Serializing ", name, " to a ByteString threw an IOException (should never happen)."), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzghi
    public final byte[] zzao() {
        try {
            byte[] bArr = new byte[zzaw()];
            zzgfh zzu = zzgfh.zzu(bArr);
            zzav(zzu);
            zzu.zzD();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(C22128a.m8610j(new StringBuilder(name.length() + 72), "Serializing ", name, " to a byte array threw an IOException (should never happen)."), e);
        }
    }

    public int zzap() {
        throw null;
    }

    public void zzaq(int i) {
        throw null;
    }
}
