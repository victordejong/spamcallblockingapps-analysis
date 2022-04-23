package com.google.protobuf;

import com.google.protobuf.AbstractC2569a;
import com.google.protobuf.AbstractC2569a.AbstractC2570a;
import com.google.protobuf.AbstractC2639m0;
import com.google.protobuf.ByteString;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: com.google.protobuf.a */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/a.class */
public abstract class AbstractC2569a<MessageType extends AbstractC2569a<MessageType, BuilderType>, BuilderType extends AbstractC2570a<MessageType, BuilderType>> implements AbstractC2639m0 {
    protected int memoizedHashCode = 0;

    /* renamed from: com.google.protobuf.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/a$a.class */
    public static abstract class AbstractC2570a<MessageType extends AbstractC2569a<MessageType, BuilderType>, BuilderType extends AbstractC2570a<MessageType, BuilderType>> implements AbstractC2639m0.AbstractC2640a {
        /* renamed from: q */
        protected static <T> void m2914q(Iterable<T> iterable, List<? super T> list) {
            C2665x.m2251a(iterable);
            if (iterable instanceof AbstractC2577c0) {
                List<?> z = ((AbstractC2577c0) iterable).mo2561z();
                AbstractC2577c0 c0Var = (AbstractC2577c0) list;
                int size = list.size();
                for (Object obj : z) {
                    if (obj == null) {
                        String str = "Element at index " + (c0Var.size() - size) + " is null.";
                        for (int size2 = c0Var.size() - 1; size2 >= size; size2--) {
                            c0Var.remove(size2);
                        }
                        throw new NullPointerException(str);
                    } else if (obj instanceof ByteString) {
                        c0Var.mo2564l((ByteString) obj);
                    } else {
                        c0Var.add((String) obj);
                    }
                }
            } else if (iterable instanceof AbstractC2662v0) {
                list.addAll((Collection) iterable);
            } else {
                m2913r(iterable, list);
            }
        }

        /* renamed from: r */
        private static <T> void m2913r(Iterable<T> iterable, List<? super T> list) {
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

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: u */
        public static UninitializedMessageException m2910u(AbstractC2639m0 m0Var) {
            return new UninitializedMessageException(m0Var);
        }

        @Override // com.google.protobuf.AbstractC2639m0.AbstractC2640a
        /* renamed from: p */
        public /* bridge */ /* synthetic */ AbstractC2639m0.AbstractC2640a mo2419p(AbstractC2639m0 m0Var) {
            m2911t(m0Var);
            return this;
        }

        /* renamed from: s */
        protected abstract BuilderType mo2912s(MessageType messagetype);

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: t */
        public BuilderType m2911t(AbstractC2639m0 m0Var) {
            if (mo2414d().getClass().isInstance(m0Var)) {
                mo2912s((AbstractC2569a) m0Var);
                return this;
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: q */
    public static <T> void m2921q(Iterable<T> iterable, List<? super T> list) {
        AbstractC2570a.m2914q(iterable, list);
    }

    /* renamed from: t */
    private String m2918t(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    @Override // com.google.protobuf.AbstractC2639m0
    /* renamed from: k */
    public ByteString mo2422k() {
        try {
            ByteString.C2544g newCodedBuilder = ByteString.newCodedBuilder(mo2426c());
            mo2424g(newCodedBuilder.m3156b());
            return newCodedBuilder.m3157a();
        } catch (IOException e) {
            throw new RuntimeException(m2918t("ByteString"), e);
        }
    }

    /* renamed from: r */
    int mo2920r() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public int m2919s(AbstractC2572a1 a1Var) {
        int r = mo2920r();
        int i = r;
        if (r == -1) {
            i = a1Var.mo2331g(this);
            mo2916v(i);
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public UninitializedMessageException m2917u() {
        return new UninitializedMessageException(this);
    }

    /* renamed from: v */
    void mo2916v(int i) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: w */
    public byte[] m2915w() {
        try {
            byte[] bArr = new byte[mo2426c()];
            CodedOutputStream e0 = CodedOutputStream.m3107e0(bArr);
            mo2424g(e0);
            e0.m3110d();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(m2918t("byte array"), e);
        }
    }
}
