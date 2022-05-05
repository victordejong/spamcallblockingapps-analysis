package p081h.p203i.p204a.p224e.p259j.p271l;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8049c8;
import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8067d8;
/* renamed from: h.i.a.e.j.l.d8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/d8.class */
public abstract class AbstractC8067d8<MessageType extends AbstractC8067d8<MessageType, BuilderType>, BuilderType extends AbstractC8049c8<MessageType, BuilderType>> implements AbstractC8390ua {
    public int zzckg = 0;

    /* renamed from: a */
    public static <T> void m18620a(Iterable<T> iterable, List<? super T> list) {
        C8302p9.m18205a(iterable);
        if (iterable instanceof AbstractC8108fa) {
            List<?> B = ((AbstractC8108fa) iterable).mo18459B();
            AbstractC8108fa faVar = (AbstractC8108fa) list;
            int size = list.size();
            for (Object obj : B) {
                if (obj == null) {
                    int size2 = faVar.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    for (int size3 = faVar.size() - 1; size3 >= size; size3--) {
                        faVar.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                } else if (obj instanceof AbstractC8209k8) {
                    faVar.mo18456a((AbstractC8209k8) obj);
                } else {
                    faVar.add((String) obj);
                }
            }
        } else if (iterable instanceof AbstractC8109fb) {
            list.addAll((Collection) iterable);
        } else {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size4 = list.size();
            for (T t : iterable) {
                if (t == null) {
                    int size5 = list.size();
                    StringBuilder sb3 = new StringBuilder(37);
                    sb3.append("Element at index ");
                    sb3.append(size5 - size4);
                    sb3.append(" is null.");
                    String sb4 = sb3.toString();
                    for (int size6 = list.size() - 1; size6 >= size4; size6--) {
                        list.remove(size6);
                    }
                    throw new NullPointerException(sb4);
                }
                list.add(t);
            }
        }
    }

    /* renamed from: a */
    public void mo18362a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8390ua
    /* renamed from: c */
    public final AbstractC8209k8 mo18133c() {
        try {
            C8352s8 i = AbstractC8209k8.m18374i(mo18132d());
            mo18134a(i.m18173b());
            return i.m18174a();
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "ByteString".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* renamed from: e */
    public final byte[] m18619e() {
        try {
            byte[] bArr = new byte[mo18132d()];
            AbstractC8447x8 a = AbstractC8447x8.m18071a(bArr);
            mo18134a(a);
            a.m18070b();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "byte array".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* renamed from: f */
    public int mo18355f() {
        throw new UnsupportedOperationException();
    }
}
