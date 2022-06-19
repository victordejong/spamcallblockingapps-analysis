package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dlm;
import com.google.android.gms.internal.ads.dln;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dln.class */
public abstract class dln<MessageType extends dln<MessageType, BuilderType>, BuilderType extends dlm<MessageType, BuilderType>> implements dot {
    protected int zziop = 0;

    /* renamed from: a */
    public static <T> void m16505a(Iterable<T> iterable, List<? super T> list) {
        dnj.m16316a(iterable);
        if (iterable instanceof dnz) {
            List<?> mo16001I_ = ((dnz) iterable).mo16001I_();
            dnz dnzVar = (dnz) list;
            int size = list.size();
            for (Object obj : mo16001I_) {
                if (obj == null) {
                    int size2 = dnzVar.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    for (int size3 = dnzVar.size() - 1; size3 >= size; size3--) {
                        dnzVar.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                } else if (obj instanceof dlw) {
                    dnzVar.mo15999a((dlw) obj);
                } else {
                    dnzVar.add((String) obj);
                }
            }
        } else if (iterable instanceof dpf) {
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

    /* renamed from: a */
    public void mo16352a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.dot
    /* renamed from: f */
    public final dlw mo16257f() {
        try {
            dme m16469c = dlw.m16469c(mo16255l());
            mo16258a(m16469c.f47205a);
            return m16469c.m16462a();
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

    @Override // com.google.android.gms.internal.ads.dot
    /* renamed from: g */
    public final byte[] mo16256g() {
        try {
            byte[] bArr = new byte[mo16255l()];
            zzemk m13710a = zzemk.m13710a(bArr);
            mo16258a(m13710a);
            m13710a.m13673i();
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

    /* renamed from: h */
    public int mo16336h() {
        throw new UnsupportedOperationException();
    }
}
