package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzgg;
import com.google.android.gms.internal.measurement.zzgh;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgh.class */
public abstract class zzgh<MessageType extends zzgh<MessageType, BuilderType>, BuilderType extends zzgg<MessageType, BuilderType>> implements zzjh {
    protected int zza = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public static <T> void m12661e(Iterable<T> iterable, List<? super T> list) {
        zzic.m12394d(iterable);
        if (iterable instanceof zzis) {
            List<?> zzd = ((zzis) iterable).zzd();
            zzis zzisVar = (zzis) list;
            int size = list.size();
            for (Object obj : zzd) {
                if (obj == null) {
                    int size2 = zzisVar.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    for (int size3 = zzisVar.size() - 1; size3 >= size; size3--) {
                        zzisVar.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                } else if (obj instanceof zzgr) {
                    zzisVar.mo12102K((zzgr) obj);
                } else {
                    zzisVar.add((String) obj);
                }
            }
        } else if (iterable instanceof zzjt) {
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

    @Override // com.google.android.gms.internal.measurement.zzjh
    /* renamed from: c */
    public final zzgr mo12332c() {
        try {
            zzgz v = zzgr.m12628v(mo12331d());
            mo12330f(v.m12625b());
            return v.m12626a();
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

    /* renamed from: g */
    public final byte[] m12660g() {
        try {
            byte[] bArr = new byte[mo12331d()];
            zzhg f = zzhg.m12531f(bArr);
            mo12330f(f);
            f.m12545N();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public int mo12434i() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void mo12433j(int i) {
        throw new UnsupportedOperationException();
    }
}
