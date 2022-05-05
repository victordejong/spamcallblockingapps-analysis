package com.google.common.base;

import java.io.IOException;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import p081h.p203i.p316b.p317a.C9293e;
import p081h.p203i.p316b.p317a.C9301k;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Joiner.class */
public class Joiner {

    /* renamed from: a */
    public final String f7705a;

    /* renamed from: com.google.common.base.Joiner$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Joiner$a.class */
    public class C3663a extends Joiner {
        public C3663a(Joiner joiner) {
            super(joiner, null);
        }

        @Override // com.google.common.base.Joiner
        /* renamed from: a */
        public <A extends Appendable> A mo31134a(A a, Iterator<?> it) throws IOException {
            C9301k.m15477a(a, "appendable");
            C9301k.m15477a(it, "parts");
            while (true) {
                if (it.hasNext()) {
                    Object next = it.next();
                    if (next != null) {
                        a.append(Joiner.this.m31138a(next));
                        break;
                    }
                } else {
                    break;
                }
            }
            while (it.hasNext()) {
                Object next2 = it.next();
                if (next2 != null) {
                    a.append(Joiner.this.f7705a);
                    a.append(Joiner.this.m31138a(next2));
                }
            }
            return a;
        }
    }

    /* renamed from: com.google.common.base.Joiner$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Joiner$b.class */
    public static final class C3664b extends AbstractList<Object> {

        /* renamed from: a */
        public final /* synthetic */ Object[] f7707a;

        /* renamed from: b */
        public final /* synthetic */ Object f7708b;

        /* renamed from: c */
        public final /* synthetic */ Object f7709c;

        public C3664b(Object[] objArr, Object obj, Object obj2) {
            this.f7707a = objArr;
            this.f7708b = obj;
            this.f7709c = obj2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Object get(int i) {
            return i != 0 ? i != 1 ? this.f7707a[i - 2] : this.f7709c : this.f7708b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f7707a.length + 2;
        }
    }

    public Joiner(Joiner joiner) {
        this.f7705a = joiner.f7705a;
    }

    public /* synthetic */ Joiner(Joiner joiner, C9293e eVar) {
        this(joiner);
    }

    public Joiner(String str) {
        C9301k.m15478a(str);
        this.f7705a = str;
    }

    /* renamed from: a */
    public static Joiner m31140a(char c) {
        return new Joiner(String.valueOf(c));
    }

    /* renamed from: a */
    public static Iterable<Object> m31137a(Object obj, Object obj2, Object[] objArr) {
        C9301k.m15478a(objArr);
        return new C3664b(objArr, obj, obj2);
    }

    /* renamed from: on */
    public static Joiner m31135on(String str) {
        return new Joiner(str);
    }

    /* renamed from: a */
    public Joiner m31141a() {
        return new C3663a(this);
    }

    /* renamed from: a */
    public <A extends Appendable> A mo31134a(A a, Iterator<?> it) throws IOException {
        C9301k.m15478a(a);
        if (it.hasNext()) {
            a.append(m31138a(it.next()));
            while (it.hasNext()) {
                a.append(this.f7705a);
                a.append(m31138a(it.next()));
            }
        }
        return a;
    }

    /* renamed from: a */
    public CharSequence m31138a(Object obj) {
        C9301k.m15478a(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    /* renamed from: a */
    public final StringBuilder m31136a(StringBuilder sb, Iterator<?> it) {
        try {
            mo31134a((Joiner) sb, it);
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public final String join(Iterable<?> iterable) {
        return join(iterable.iterator());
    }

    public final String join(Object obj, Object obj2, Object... objArr) {
        return join(m31137a(obj, obj2, objArr));
    }

    public final String join(Iterator<?> it) {
        return m31136a(new StringBuilder(), it).toString();
    }

    public final String join(Object[] objArr) {
        return join(Arrays.asList(objArr));
    }
}
