package p287x6;

import com.google.protobuf.AbstractC1875d0;
import com.google.protobuf.AbstractC1885g0;
import com.google.protobuf.AbstractC1888i;
import com.google.protobuf.C1876e;
import com.google.protobuf.C1877e0;
import com.google.protobuf.CodedOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: x6.z */
/* loaded from: classes-dex2jar.jar:x6/z.class */
public class C4928z extends AbstractC1875d0<C1877e0, C1877e0> {
    @Override // com.google.protobuf.AbstractC1875d0
    /* renamed from: a */
    public C1877e0 mo250a(Object obj) {
        return ((AbstractC1888i) obj).unknownFields;
    }

    @Override // com.google.protobuf.AbstractC1875d0
    /* renamed from: b */
    public int mo249b(C1877e0 c1877e0) {
        return c1877e0.m4325a();
    }

    @Override // com.google.protobuf.AbstractC1875d0
    /* renamed from: c */
    public int mo248c(C1877e0 c1877e0) {
        C1877e0 c1877e02 = c1877e0;
        int i = c1877e02.f7070d;
        if (i == -1) {
            i = 0;
            for (int i2 = 0; i2 < c1877e02.f7067a; i2++) {
                int i3 = c1877e02.f7068b[i2];
                i += CodedOutputStream.m4450N(3, (AbstractC4890c) c1877e02.f7069c[i2]) + CodedOutputStream.m4428j0(2, i3 >>> 3) + (CodedOutputStream.m4429i0(1) * 2);
            }
            c1877e02.f7070d = i;
        }
        return i;
    }

    @Override // com.google.protobuf.AbstractC1875d0
    /* renamed from: d */
    public void mo247d(Object obj) {
        ((AbstractC1888i) obj).unknownFields.f7071e = false;
    }

    @Override // com.google.protobuf.AbstractC1875d0
    /* renamed from: e */
    public C1877e0 mo246e(C1877e0 c1877e0, C1877e0 c1877e02) {
        C1877e0 c1877e03 = c1877e0;
        C1877e0 c1877e04 = c1877e02;
        if (!c1877e04.equals(C1877e0.f7066f)) {
            int i = c1877e03.f7067a + c1877e04.f7067a;
            int[] copyOf = Arrays.copyOf(c1877e03.f7068b, i);
            System.arraycopy(c1877e04.f7068b, 0, copyOf, c1877e03.f7067a, c1877e04.f7067a);
            Object[] copyOf2 = Arrays.copyOf(c1877e03.f7069c, i);
            System.arraycopy(c1877e04.f7069c, 0, copyOf2, c1877e03.f7067a, c1877e04.f7067a);
            c1877e03 = new C1877e0(i, copyOf, copyOf2, true);
        }
        return c1877e03;
    }

    @Override // com.google.protobuf.AbstractC1875d0
    /* renamed from: f */
    public void mo245f(Object obj, C1877e0 c1877e0) {
        ((AbstractC1888i) obj).unknownFields = c1877e0;
    }

    @Override // com.google.protobuf.AbstractC1875d0
    /* renamed from: g */
    public void mo244g(C1877e0 c1877e0, AbstractC1885g0 abstractC1885g0) throws IOException {
        C1877e0 c1877e02 = c1877e0;
        Objects.requireNonNull(c1877e02);
        Objects.requireNonNull(abstractC1885g0);
        for (int i = 0; i < c1877e02.f7067a; i++) {
            ((C1876e) abstractC1885g0).m4328e(c1877e02.f7068b[i] >>> 3, c1877e02.f7069c[i]);
        }
    }

    @Override // com.google.protobuf.AbstractC1875d0
    /* renamed from: h */
    public void mo243h(C1877e0 c1877e0, AbstractC1885g0 abstractC1885g0) throws IOException {
        c1877e0.m4323c(abstractC1885g0);
    }
}
