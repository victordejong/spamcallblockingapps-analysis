package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzeie;
import com.google.android.gms.internal.ads.zzeif;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p253a.c70;
import p131c.p161d.p170b.p224d.p252g.p253a.w80;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeif.class */
public abstract class zzeif<MessageType extends zzeif<MessageType, BuilderType>, BuilderType extends zzeie<MessageType, BuilderType>> implements zzelj {
    public int zziee = 0;

    /* renamed from: a */
    public static <T> void m12534a(Iterable<T> iterable, List<? super T> list) {
        zzekb.m12372a(iterable);
        if (iterable instanceof zzeku) {
            List<?> s = ((zzeku) iterable).mo12325s();
            zzeku zzekuVar = (zzeku) list;
            int size = list.size();
            for (Object obj : s) {
                if (obj == null) {
                    int size2 = zzekuVar.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    for (int size3 = zzekuVar.size() - 1; size3 >= size; size3--) {
                        zzekuVar.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                } else if (obj instanceof zzeip) {
                    zzekuVar.mo12328a((zzeip) obj);
                } else {
                    zzekuVar.add((String) obj);
                }
            }
        } else if (iterable instanceof w80) {
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
    public int mo12415a() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public void mo12414a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzelj
    /* renamed from: c */
    public final byte[] mo12349c() {
        try {
            byte[] bArr = new byte[mo12345k()];
            zzejj a = zzejj.m12495a(bArr);
            mo12350a(a);
            a.m12494b();
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

    @Override // com.google.android.gms.internal.ads.zzelj
    /* renamed from: j */
    public final zzeip mo12346j() {
        try {
            c70 zzfw = zzeip.zzfw(mo12345k());
            mo12350a(zzfw.m27101b());
            return zzfw.m27102a();
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
}
