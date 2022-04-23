package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.Writer;
import java.io.IOException;
/* renamed from: c.d.h.i1 */
/* loaded from: classes2-dex2jar.jar:c/d/h/i1.class */
public abstract class AbstractC6326i1<T, B> {
    /* renamed from: a */
    public abstract B mo21306a();

    /* renamed from: a */
    public abstract B mo21297a(Object obj);

    /* renamed from: a */
    public abstract T mo21290a(T t, T t2);

    /* renamed from: a */
    public abstract void mo21296a(B b, int i, int i2);

    /* renamed from: a */
    public abstract void mo21295a(B b, int i, long j);

    /* renamed from: a */
    public abstract void mo21294a(B b, int i, ByteString byteString);

    /* renamed from: a */
    public abstract void mo21293a(B b, int i, T t);

    /* renamed from: a */
    public final void m21471a(B b, AbstractC6284b1 b1Var) throws IOException {
        while (b1Var.mo21322l() != Integer.MAX_VALUE && m21470b((AbstractC6326i1<T, B>) b, b1Var)) {
        }
    }

    /* renamed from: a */
    public abstract void mo21291a(T t, Writer writer) throws IOException;

    /* renamed from: a */
    public abstract boolean mo21305a(AbstractC6284b1 b1Var);

    /* renamed from: b */
    public abstract T mo21286b(Object obj);

    /* renamed from: b */
    public abstract void mo21285b(B b, int i, long j);

    /* renamed from: b */
    public abstract void mo21283b(T t, Writer writer) throws IOException;

    /* renamed from: b */
    public abstract void mo21282b(Object obj, B b);

    /* renamed from: b */
    public final boolean m21470b(B b, AbstractC6284b1 b1Var) throws IOException {
        int a = b1Var.mo21360a();
        int a2 = WireFormat.m6841a(a);
        int b2 = WireFormat.m6839b(a);
        if (b2 == 0) {
            mo21285b(b, a2, b1Var.mo21312q());
            return true;
        } else if (b2 == 1) {
            mo21295a((AbstractC6326i1<T, B>) b, a2, b1Var.mo21340d());
            return true;
        } else if (b2 == 2) {
            mo21294a((AbstractC6326i1<T, B>) b, a2, b1Var.mo21320m());
            return true;
        } else if (b2 == 3) {
            B a3 = mo21306a();
            int a4 = WireFormat.m6840a(a2, 4);
            m21471a((AbstractC6326i1<T, B>) a3, b1Var);
            if (a4 == b1Var.mo21360a()) {
                mo21293a((AbstractC6326i1<T, B>) b, a2, (int) mo21276f(a3));
                return true;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        } else if (b2 == 4) {
            return false;
        } else {
            if (b2 == 5) {
                mo21296a((AbstractC6326i1<T, B>) b, a2, b1Var.mo21336e());
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    /* renamed from: c */
    public abstract int mo21280c(T t);

    /* renamed from: c */
    public abstract void mo21279c(Object obj, T t);

    /* renamed from: d */
    public abstract int mo21278d(T t);

    /* renamed from: e */
    public abstract void mo21277e(Object obj);

    /* renamed from: f */
    public abstract T mo21276f(B b);
}
