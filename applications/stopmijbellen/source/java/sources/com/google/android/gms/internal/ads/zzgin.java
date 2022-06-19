package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.internal.ads.zzgim;
import com.google.android.gms.internal.ads.zzgin;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgin.class */
public abstract class zzgin<MessageType extends zzgin<MessageType, BuilderType>, BuilderType extends zzgim<MessageType, BuilderType>> implements zzglv {
    public int zza = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void zzap(Iterable<T> iterable, List<? super T> list) {
        zzgkv.zze(iterable);
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(iterable.size() + list.size());
        }
        int size = list.size();
        for (T t : iterable) {
            if (t == 0) {
                int size2 = list.size();
                StringBuilder sb = new StringBuilder(37);
                sb.append("Element at index ");
                sb.append(size2 - size);
                sb.append(" is null.");
                String sb2 = sb.toString();
                int size3 = list.size();
                while (true) {
                    size3--;
                    if (size3 < size) {
                        break;
                    }
                    list.remove(size3);
                }
                throw new NullPointerException(sb2);
            }
            list.add(t);
        }
    }

    public int zzan() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzglv
    public final zzgjf zzao() {
        try {
            int zzas = zzas();
            zzgjf zzgjfVar = zzgjf.zzb;
            byte[] bArr = new byte[zzas];
            zzgjs zzC = zzgjs.zzC(bArr);
            zzaL(zzC);
            zzC.zzD();
            return new zzgjb(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(C0608b.m7625j(new StringBuilder(name.length() + 72), "Serializing ", name, " to a ByteString threw an IOException (should never happen)."), e);
        }
    }

    public void zzaq(int i) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzglv
    public final byte[] zzar() {
        try {
            byte[] bArr = new byte[zzas()];
            zzgjs zzC = zzgjs.zzC(bArr);
            zzaL(zzC);
            zzC.zzD();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(C0608b.m7625j(new StringBuilder(name.length() + 72), "Serializing ", name, " to a byte array threw an IOException (should never happen)."), e);
        }
    }
}
