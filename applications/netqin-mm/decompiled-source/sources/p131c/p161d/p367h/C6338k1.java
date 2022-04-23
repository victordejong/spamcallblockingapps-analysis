package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.WireFormat;
import com.google.protobuf.Writer;
import java.io.IOException;
/* renamed from: c.d.h.k1 */
/* loaded from: classes2-dex2jar.jar:c/d/h/k1.class */
public class C6338k1 extends AbstractC6326i1<C6334j1, C6334j1> {
    /* renamed from: a */
    public int mo21280c(C6334j1 j1Var) {
        return j1Var.m21365c();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p131c.p161d.p367h.AbstractC6326i1
    /* renamed from: a */
    public C6334j1 mo21306a() {
        return C6334j1.m21361g();
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C6334j1 mo21290a(C6334j1 j1Var, C6334j1 j1Var2) {
        if (!j1Var2.equals(C6334j1.m21362f())) {
            j1Var = C6334j1.m21374a(j1Var, j1Var2);
        }
        return j1Var;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p131c.p161d.p367h.AbstractC6326i1
    /* renamed from: a */
    public C6334j1 mo21297a(Object obj) {
        C6334j1 b = mo21286b(obj);
        C6334j1 j1Var = b;
        if (b == C6334j1.m21362f()) {
            j1Var = C6334j1.m21361g();
            mo21279c(obj, j1Var);
        }
        return j1Var;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo21296a(C6334j1 j1Var, int i, int i2) {
        j1Var.m21376a(WireFormat.m6840a(i, 5), Integer.valueOf(i2));
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo21295a(C6334j1 j1Var, int i, long j) {
        j1Var.m21376a(WireFormat.m6840a(i, 1), Long.valueOf(j));
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo21293a(C6334j1 j1Var, int i, C6334j1 j1Var2) {
        j1Var.m21376a(WireFormat.m6840a(i, 3), j1Var2);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo21294a(C6334j1 j1Var, int i, ByteString byteString) {
        j1Var.m21376a(WireFormat.m6840a(i, 2), byteString);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo21291a(C6334j1 j1Var, Writer writer) throws IOException {
        j1Var.m21373a(writer);
    }

    /* renamed from: a */
    public void mo21282b(Object obj, C6334j1 j1Var) {
        mo21279c(obj, j1Var);
    }

    @Override // p131c.p161d.p367h.AbstractC6326i1
    /* renamed from: a */
    public boolean mo21305a(AbstractC6284b1 b1Var) {
        return false;
    }

    /* renamed from: b */
    public int mo21278d(C6334j1 j1Var) {
        return j1Var.m21364d();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p131c.p161d.p367h.AbstractC6326i1
    /* renamed from: b */
    public C6334j1 mo21286b(Object obj) {
        return ((GeneratedMessageLite) obj).unknownFields;
    }

    /* renamed from: b  reason: avoid collision after fix types in other method */
    public void mo21285b(C6334j1 j1Var, int i, long j) {
        j1Var.m21376a(WireFormat.m6840a(i, 0), Long.valueOf(j));
    }

    /* renamed from: b  reason: avoid collision after fix types in other method */
    public void mo21283b(C6334j1 j1Var, Writer writer) throws IOException {
        j1Var.m21366b(writer);
    }

    /* renamed from: b  reason: avoid collision after fix types in other method */
    public void mo21279c(Object obj, C6334j1 j1Var) {
        ((GeneratedMessageLite) obj).unknownFields = j1Var;
    }

    /* renamed from: c  reason: avoid collision after fix types in other method */
    public C6334j1 m21281c(C6334j1 j1Var) {
        j1Var.m21363e();
        return j1Var;
    }

    @Override // p131c.p161d.p367h.AbstractC6326i1
    /* renamed from: e */
    public void mo21277e(Object obj) {
        mo21286b(obj).m21363e();
    }

    @Override // p131c.p161d.p367h.AbstractC6326i1
    /* renamed from: f */
    public /* bridge */ /* synthetic */ C6334j1 mo21276f(C6334j1 j1Var) {
        C6334j1 j1Var2 = j1Var;
        m21281c(j1Var2);
        return j1Var2;
    }
}
