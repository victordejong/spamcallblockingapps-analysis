package com.google.protobuf;

import android.support.p012v4.media.C0082b;
import com.google.protobuf.AbstractC1859a;
import com.google.protobuf.AbstractC1859a.AbstractC1860a;
import com.google.protobuf.AbstractC1916u;
import com.google.protobuf.CodedOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;
import p287x6.AbstractC4890c;
import p287x6.AbstractC4911k;
import p287x6.AbstractC4922t;
import p287x6.AbstractC4925w;
/* renamed from: com.google.protobuf.a */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/a.class */
public abstract class AbstractC1859a<MessageType extends AbstractC1859a<MessageType, BuilderType>, BuilderType extends AbstractC1860a<MessageType, BuilderType>> implements AbstractC1916u {
    public int memoizedHashCode = 0;

    /* renamed from: com.google.protobuf.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/a$a.class */
    public static abstract class AbstractC1860a<MessageType extends AbstractC1859a<MessageType, BuilderType>, BuilderType extends AbstractC1860a<MessageType, BuilderType>> implements AbstractC1916u.AbstractC1917a {
    }

    /* renamed from: l */
    public static <T> void m4395l(Iterable<T> iterable, List<? super T> list) {
        Charset charset = C1895k.f7092a;
        Objects.requireNonNull(iterable);
        if (iterable instanceof AbstractC4911k) {
            List<?> mo266L = ((AbstractC4911k) iterable).mo266L();
            AbstractC4911k abstractC4911k = (AbstractC4911k) list;
            int size = list.size();
            for (Object obj : mo266L) {
                if (obj == null) {
                    StringBuilder m8752j = C0082b.m8752j("Element at index ");
                    m8752j.append(abstractC4911k.size() - size);
                    m8752j.append(" is null.");
                    String sb = m8752j.toString();
                    int size2 = abstractC4911k.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            break;
                        }
                        abstractC4911k.remove(size2);
                    }
                    throw new NullPointerException(sb);
                } else if (obj instanceof AbstractC4890c) {
                    abstractC4911k.mo268J((AbstractC4890c) obj);
                } else {
                    abstractC4911k.add((String) obj);
                }
            }
        } else if (iterable instanceof AbstractC4922t) {
            list.addAll((Collection) iterable);
        } else {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
            }
            int size3 = list.size();
            for (T t : iterable) {
                if (t == null) {
                    StringBuilder m8752j2 = C0082b.m8752j("Element at index ");
                    m8752j2.append(list.size() - size3);
                    m8752j2.append(" is null.");
                    String sb2 = m8752j2.toString();
                    int size4 = list.size();
                    while (true) {
                        size4--;
                        if (size4 < size3) {
                            break;
                        }
                        list.remove(size4);
                    }
                    throw new NullPointerException(sb2);
                }
                list.add(t);
            }
        }
    }

    @Override // com.google.protobuf.AbstractC1916u
    /* renamed from: i */
    public AbstractC4890c mo4238i() {
        try {
            AbstractC1888i abstractC1888i = (AbstractC1888i) this;
            int mo4241b = abstractC1888i.mo4241b();
            AbstractC4890c abstractC4890c = AbstractC4890c.f14961b;
            byte[] bArr = new byte[mo4241b];
            Logger logger = CodedOutputStream.f7029b;
            CodedOutputStream.C1858b c1858b = new CodedOutputStream.C1858b(bArr, 0, mo4241b);
            abstractC1888i.mo4239f(c1858b);
            if (c1858b.m4411L0() != 0) {
                throw new IllegalStateException("Did not write as much data as expected.");
            }
            return new AbstractC4890c.C4896f(bArr);
        } catch (IOException e) {
            throw new RuntimeException(m4393o("ByteString"), e);
        }
    }

    /* renamed from: m */
    public int mo4293m() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: n */
    public int m4394n(AbstractC4925w abstractC4925w) {
        int mo4293m = mo4293m();
        int i = mo4293m;
        if (mo4293m == -1) {
            i = abstractC4925w.mo255f(this);
            mo4292p(i);
        }
        return i;
    }

    /* renamed from: o */
    public final String m4393o(String str) {
        StringBuilder m8752j = C0082b.m8752j("Serializing ");
        m8752j.append(getClass().getName());
        m8752j.append(" to a ");
        m8752j.append(str);
        m8752j.append(" threw an IOException (should never happen).");
        return m8752j.toString();
    }

    /* renamed from: p */
    public void mo4292p(int i) {
        throw new UnsupportedOperationException();
    }
}
