package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC13484ex;
import com.google.android.gms.internal.measurement.AbstractC13485ey;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.ey */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ey.class */
public abstract class AbstractC13485ey<MessageType extends AbstractC13485ey<MessageType, BuilderType>, BuilderType extends AbstractC13484ex<MessageType, BuilderType>> implements AbstractC13556ho {
    protected int zzb = 0;

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <T> void m12887a(Iterable<T> iterable, List<? super T> list) {
        C13534gt.m12746a(iterable);
        if (iterable instanceof AbstractC13540gz) {
            List<?> mo12553d = ((AbstractC13540gz) iterable).mo12553d();
            AbstractC13540gz abstractC13540gz = (AbstractC13540gz) list;
            int size = list.size();
            for (Object obj : mo12553d) {
                if (obj == null) {
                    int size2 = abstractC13540gz.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    int size3 = abstractC13540gz.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        }
                        abstractC13540gz.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                } else if (obj instanceof AbstractC13500fm) {
                    abstractC13540gz.mo12556a((AbstractC13500fm) obj);
                } else {
                    abstractC13540gz.add((String) obj);
                }
            }
        } else if (iterable instanceof AbstractC13564hw) {
            list.addAll(iterable);
        } else {
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
        }
    }

    /* renamed from: b */
    public void mo12761b(int i) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13556ho
    /* renamed from: i */
    public final AbstractC13500fm mo12708i() {
        try {
            int n = mo12707n();
            AbstractC13500fm abstractC13500fm = AbstractC13500fm.f50716b;
            byte[] bArr = new byte[n];
            AbstractC13506fs m12835a = AbstractC13506fs.m12835a(bArr);
            mo12709a(m12835a);
            m12835a.m12834b();
            return new C13498fk(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ByteString threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* renamed from: j */
    public final byte[] m12886j() {
        try {
            byte[] bArr = new byte[mo12707n()];
            AbstractC13506fs m12835a = AbstractC13506fs.m12835a(bArr);
            mo12709a(m12835a);
            m12835a.m12834b();
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

    /* renamed from: k */
    public int mo12760k() {
        throw null;
    }
}
