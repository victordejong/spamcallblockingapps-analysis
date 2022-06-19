package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.day;
import com.google.android.gms.internal.ads.dbb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/day.class */
public abstract class day<MessageType extends day<MessageType, BuilderType>, BuilderType extends dbb<MessageType, BuilderType>> implements deg {
    protected int zzhsq = 0;

    /* renamed from: a */
    public static <T> void m10250a(Iterable<T> iterable, List<? super T> list) {
        dcz.m10047a(iterable);
        if (iterable instanceof ddm) {
            List<?> mo9737l_ = ((ddm) iterable).mo9737l_();
            ddm ddmVar = (ddm) list;
            int size = list.size();
            for (Object obj : mo9737l_) {
                if (obj == null) {
                    String sb = new StringBuilder(37).append("Element at index ").append(ddmVar.size() - size).append(" is null.").toString();
                    for (int size2 = ddmVar.size() - 1; size2 >= size; size2--) {
                        ddmVar.remove(size2);
                    }
                    throw new NullPointerException(sb);
                } else if (obj instanceof dbi) {
                    ddmVar.mo9740a((dbi) obj);
                } else {
                    ddmVar.add((String) obj);
                }
            }
        } else if (iterable instanceof det) {
            list.addAll((Collection) iterable);
        } else {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
            }
            int size3 = list.size();
            for (T t : iterable) {
                if (t == null) {
                    String sb2 = new StringBuilder(37).append("Element at index ").append(list.size() - size3).append(" is null.").toString();
                    for (int size4 = list.size() - 1; size4 >= size3; size4--) {
                        list.remove(size4);
                    }
                    throw new NullPointerException(sb2);
                }
                list.add(t);
            }
        }
    }

    /* renamed from: a */
    public void mo10096a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.deg
    /* renamed from: k */
    public final dbi mo9985k() {
        try {
            dbq m10212c = dbi.m10212c(mo9983q());
            mo9986a(m10212c.m10205b());
            return m10212c.m10206a();
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(new StringBuilder(String.valueOf(name).length() + 62 + String.valueOf("ByteString").length()).append("Serializing ").append(name).append(" to a ").append("ByteString").append(" threw an IOException (should never happen).").toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.deg
    /* renamed from: l */
    public final byte[] mo9984l() {
        try {
            byte[] bArr = new byte[mo9983q()];
            zzebk m6627a = zzebk.m6627a(bArr);
            mo9986a(m6627a);
            m6627a.m6626b();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(new StringBuilder(String.valueOf(name).length() + 62 + String.valueOf("byte array").length()).append("Serializing ").append(name).append(" to a ").append("byte array").append(" threw an IOException (should never happen).").toString(), e);
        }
    }

    /* renamed from: m */
    public int mo10080m() {
        throw new UnsupportedOperationException();
    }
}
