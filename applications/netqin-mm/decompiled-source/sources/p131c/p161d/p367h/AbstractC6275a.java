package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UninitializedMessageException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p131c.p161d.p367h.AbstractC6275a;
import p131c.p161d.p367h.AbstractC6275a.AbstractC6276a;
import p131c.p161d.p367h.AbstractC6354n0;
/* renamed from: c.d.h.a */
/* loaded from: classes2-dex2jar.jar:c/d/h/a.class */
public abstract class AbstractC6275a<MessageType extends AbstractC6275a<MessageType, BuilderType>, BuilderType extends AbstractC6276a<MessageType, BuilderType>> implements AbstractC6354n0 {
    public int memoizedHashCode = 0;

    /* renamed from: c.d.h.a$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/a$a.class */
    public static abstract class AbstractC6276a<MessageType extends AbstractC6275a<MessageType, BuilderType>, BuilderType extends AbstractC6276a<MessageType, BuilderType>> implements AbstractC6354n0.AbstractC6355a {
        /* renamed from: a */
        public static <T> void m21692a(Iterable<T> iterable, List<? super T> list) {
            C6381y.m21009a(iterable);
            if (iterable instanceof AbstractC6289d0) {
                List<?> r = ((AbstractC6289d0) iterable).mo21261r();
                AbstractC6289d0 d0Var = (AbstractC6289d0) list;
                int size = list.size();
                for (Object obj : r) {
                    if (obj == null) {
                        String str = "Element at index " + (d0Var.size() - size) + " is null.";
                        for (int size2 = d0Var.size() - 1; size2 >= size; size2--) {
                            d0Var.remove(size2);
                        }
                        throw new NullPointerException(str);
                    } else if (obj instanceof ByteString) {
                        d0Var.mo21263a((ByteString) obj);
                    } else {
                        d0Var.add((String) obj);
                    }
                }
            } else if (iterable instanceof AbstractC6378w0) {
                list.addAll((Collection) iterable);
            } else {
                m21690b(iterable, list);
            }
        }

        /* renamed from: b */
        public static UninitializedMessageException m21691b(AbstractC6354n0 n0Var) {
            return new UninitializedMessageException(n0Var);
        }

        /* renamed from: b */
        public static <T> void m21690b(Iterable<T> iterable, List<? super T> list) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size = list.size();
            for (T t : iterable) {
                if (t == null) {
                    String str = "Element at index " + (list.size() - size) + " is null.";
                    for (int size2 = list.size() - 1; size2 >= size; size2--) {
                        list.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                list.add(t);
            }
        }

        /* renamed from: a */
        public abstract BuilderType mo6936a(MessageType messagetype);

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p131c.p161d.p367h.AbstractC6354n0.AbstractC6355a
        /* renamed from: a */
        public BuilderType mo21178a(AbstractC6354n0 n0Var) {
            if (mo6927g().getClass().isInstance(n0Var)) {
                mo6936a((AbstractC6276a<MessageType, BuilderType>) ((AbstractC6275a) n0Var));
                return this;
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }

        @Override // p131c.p161d.p367h.AbstractC6354n0.AbstractC6355a
        /* renamed from: a */
        public BuilderType mo21177a(byte[] bArr) throws InvalidProtocolBufferException {
            mo6933a(bArr, 0, bArr.length);
            return this;
        }

        /* renamed from: a */
        public abstract BuilderType mo6933a(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException;
    }

    /* renamed from: a */
    public static <T> void m21695a(Iterable<T> iterable, List<? super T> list) {
        AbstractC6276a.m21692a(iterable, list);
    }

    /* renamed from: a */
    public int m21696a(AbstractC6287c1 c1Var) {
        int b = mo6947b();
        int i = b;
        if (b == -1) {
            i = c1Var.mo21075d(this);
            mo6961a(i);
        }
        return i;
    }

    /* renamed from: a */
    public final String m21694a(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    /* renamed from: a */
    public void mo6961a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p367h.AbstractC6354n0
    /* renamed from: a */
    public void mo21181a(OutputStream outputStream) throws IOException {
        CodedOutputStream a = CodedOutputStream.m7071a(outputStream, CodedOutputStream.m7015k(mo6944o()));
        mo6957a(a);
        a.mo6983b();
    }

    /* renamed from: b */
    public int mo6947b() {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p367h.AbstractC6354n0
    /* renamed from: c */
    public byte[] mo21180c() {
        try {
            byte[] bArr = new byte[mo6944o()];
            CodedOutputStream c = CodedOutputStream.m7045c(bArr);
            mo6957a(c);
            c.m7084a();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(m21694a("byte array"), e);
        }
    }

    /* renamed from: d */
    public UninitializedMessageException m21693d() {
        return new UninitializedMessageException(this);
    }

    @Override // p131c.p161d.p367h.AbstractC6354n0
    /* renamed from: l */
    public ByteString mo21179l() {
        try {
            ByteString.C7922g newCodedBuilder = ByteString.newCodedBuilder(mo6944o());
            mo6957a(newCodedBuilder.m7087b());
            return newCodedBuilder.m7088a();
        } catch (IOException e) {
            throw new RuntimeException(m21694a("ByteString"), e);
        }
    }
}
