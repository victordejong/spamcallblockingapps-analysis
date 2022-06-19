package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC3850ck;
import com.google.android.gms.internal.measurement.AbstractC3852cm;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.ck */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ck.class */
public abstract class AbstractC3850ck<MessageType extends AbstractC3850ck<MessageType, BuilderType>, BuilderType extends AbstractC3852cm<MessageType, BuilderType>> implements AbstractC3943fn {
    protected int zza = 0;

    /* renamed from: a */
    public static <T> void m5840a(Iterable<T> iterable, List<? super T> list) {
        C3908ef.m5612a(iterable);
        if (iterable instanceof AbstractC3923eu) {
            List<?> mo5300p_ = ((AbstractC3923eu) iterable).mo5300p_();
            AbstractC3923eu abstractC3923eu = (AbstractC3923eu) list;
            int size = list.size();
            for (Object obj : mo5300p_) {
                if (obj == null) {
                    String sb = new StringBuilder(37).append("Element at index ").append(abstractC3923eu.size() - size).append(" is null.").toString();
                    for (int size2 = abstractC3923eu.size() - 1; size2 >= size; size2--) {
                        abstractC3923eu.remove(size2);
                    }
                    throw new NullPointerException(sb);
                } else if (obj instanceof AbstractC3859ct) {
                    abstractC3923eu.mo5304a((AbstractC3859ct) obj);
                } else {
                    abstractC3923eu.add((String) obj);
                }
            }
        } else if (iterable instanceof AbstractC3957ga) {
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

    @Override // com.google.android.gms.internal.measurement.AbstractC3943fn
    /* renamed from: ah */
    public final AbstractC3859ct mo5542ah() {
        try {
            C3871dc m5806c = AbstractC3859ct.m5806c(mo5541an());
            mo5543a(m5806c.m5755b());
            return m5806c.m5756a();
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(new StringBuilder(String.valueOf(name).length() + 62 + String.valueOf("ByteString").length()).append("Serializing ").append(name).append(" to a ").append("ByteString").append(" threw an IOException (should never happen).").toString(), e);
        }
    }

    /* renamed from: ai */
    public final byte[] m5839ai() {
        try {
            byte[] bArr = new byte[mo5541an()];
            zzes m4930a = zzes.m4930a(bArr);
            mo5543a(m4930a);
            m4930a.m4929b();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(new StringBuilder(String.valueOf(name).length() + 62 + String.valueOf("byte array").length()).append("Serializing ").append(name).append(" to a ").append("byte array").append(" threw an IOException (should never happen).").toString(), e);
        }
    }

    /* renamed from: aj */
    public int mo5644aj() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: c */
    public void mo5638c(int i) {
        throw new UnsupportedOperationException();
    }
}
