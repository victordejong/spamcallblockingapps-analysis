package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.ex;
import com.google.android.gms.internal.measurement.ey;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ey.class */
public abstract class ey<MessageType extends ey<MessageType, BuilderType>, BuilderType extends ex<MessageType, BuilderType>> implements ho {
    protected int zzb = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void a(Iterable<T> iterable, List<? super T> list) {
        gt.a(iterable);
        if (iterable instanceof gz) {
            List<?> d2 = ((gz) iterable).d();
            gz gzVar = (gz) list;
            int size = list.size();
            for (Object obj : d2) {
                if (obj == null) {
                    int size2 = gzVar.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    int size3 = gzVar.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        }
                        gzVar.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                } else if (obj instanceof fm) {
                    gzVar.a((fm) obj);
                } else {
                    gzVar.add((String) obj);
                }
            }
        } else if (!(iterable instanceof hw)) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + iterable.size());
            }
            int size4 = list.size();
            for (T t : iterable) {
                if (t == 0) {
                    int size5 = list.size();
                    StringBuilder sb3 = new StringBuilder(37);
                    sb3.append("Element at index ");
                    sb3.append(size5 - size4);
                    sb3.append(" is null.");
                    String sb4 = sb3.toString();
                    int size6 = list.size();
                    while (true) {
                        size6--;
                        if (size6 < size4) {
                            break;
                        }
                        list.remove(size6);
                    }
                    throw new NullPointerException(sb4);
                }
                list.add(t);
            }
        } else {
            list.addAll(iterable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.ho
    public final fm i() {
        try {
            int n = n();
            fm fmVar = fm.f29017b;
            byte[] bArr = new byte[n];
            fs a2 = fs.a(bArr);
            a(a2);
            a2.b();
            return new fk(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ByteString threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    public final byte[] j() {
        try {
            byte[] bArr = new byte[n()];
            fs a2 = fs.a(bArr);
            a(a2);
            a2.b();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a byte array threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k() {
        throw null;
    }
}
