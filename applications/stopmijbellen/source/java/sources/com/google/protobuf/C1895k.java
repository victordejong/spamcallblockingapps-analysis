package com.google.protobuf;

import com.google.protobuf.AbstractC1859a;
import com.google.protobuf.AbstractC1888i;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;
/* renamed from: com.google.protobuf.k */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/k.class */
public final class C1895k {

    /* renamed from: a */
    public static final Charset f7092a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final byte[] f7093b;

    /* renamed from: com.google.protobuf.k$a */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/k$a.class */
    public interface AbstractC1896a {
        /* renamed from: y */
        int mo1622y();
    }

    /* renamed from: com.google.protobuf.k$b */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/k$b.class */
    public interface AbstractC1897b {
    }

    /* renamed from: com.google.protobuf.k$c */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/k$c.class */
    public interface AbstractC1898c extends AbstractC1899d<Integer> {
    }

    /* renamed from: com.google.protobuf.k$d */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/k$d.class */
    public interface AbstractC1899d<E> extends List<E>, RandomAccess {
        /* renamed from: W */
        boolean mo4265W();

        /* renamed from: l */
        void mo4264l();

        /* renamed from: r */
        AbstractC1899d<E> mo4205r(int i);
    }

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f7093b = bArr;
        ByteBuffer.wrap(bArr);
        AbstractC1872d.m4336a(bArr, 0, bArr.length, false);
    }

    /* renamed from: a */
    public static int m4268a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: b */
    public static int m4267b(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: c */
    public static Object m4266c(Object obj, Object obj2) {
        AbstractC1916u abstractC1916u = (AbstractC1916u) obj2;
        AbstractC1859a.AbstractC1860a abstractC1860a = (AbstractC1859a.AbstractC1860a) ((AbstractC1916u) obj).mo4240d();
        Objects.requireNonNull(abstractC1860a);
        AbstractC1888i.AbstractC1889a abstractC1889a = (AbstractC1888i.AbstractC1889a) abstractC1860a;
        if (abstractC1889a.f7077a.getClass().isInstance(abstractC1916u)) {
            abstractC1889a.m4282n();
            abstractC1889a.m4280p(abstractC1889a.f7078b, (AbstractC1888i) ((AbstractC1859a) abstractC1916u));
            return abstractC1889a.m4283m();
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
