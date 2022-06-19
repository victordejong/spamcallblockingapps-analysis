package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.sc3;
import com.google.android.gms.internal.ads.tc3;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tc3.class */
public abstract class tc3<MessageType extends tc3<MessageType, BuilderType>, BuilderType extends sc3<MessageType, BuilderType>> implements mf3 {
    protected int zza = 0;

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    public static <T> void m10719h(Iterable<T> iterable, List<? super T> list) {
        se3.m11072a(iterable);
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + iterable.size());
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

    @Override // com.google.android.gms.internal.ads.mf3
    /* renamed from: K */
    public final byte[] mo10723K() {
        try {
            byte[] bArr = new byte[mo13200d()];
            qd3 m11919y = qd3.m11919y(bArr);
            mo13201c(m11919y);
            m11919y.m11940d();
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

    @Override // com.google.android.gms.internal.ads.mf3
    /* renamed from: N */
    public final zzgex mo10722N() {
        try {
            int mo13200d = mo13200d();
            zzgex zzgexVar = zzgex.f34110d;
            byte[] bArr = new byte[mo13200d];
            qd3 m11919y = qd3.m11919y(bArr);
            mo13201c(m11919y);
            m11919y.m11940d();
            return new zzget(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ByteString threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* renamed from: e */
    public int mo10721e() {
        throw null;
    }

    /* renamed from: f */
    public void mo10720f(int i) {
        throw null;
    }
}
