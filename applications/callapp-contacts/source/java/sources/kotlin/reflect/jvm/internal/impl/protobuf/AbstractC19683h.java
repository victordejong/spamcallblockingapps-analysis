package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19666a;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
import kotlin.reflect.jvm.internal.impl.protobuf.C19680g;
import kotlin.reflect.jvm.internal.impl.protobuf.C19692j;
import kotlin.reflect.jvm.internal.impl.protobuf.C19695k;
import kotlin.reflect.jvm.internal.impl.protobuf.C19728x;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h.class */
public abstract class AbstractC19683h extends AbstractC19666a implements Serializable {

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.h$1 */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h$1.class */
    public static final /* synthetic */ class C196841 {

        /* renamed from: a */
        static final /* synthetic */ int[] f65838a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[C19728x.EnumC19735b.values().length];
            f65838a = iArr;
            try {
                iArr[C19728x.EnumC19735b.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f65838a[C19728x.EnumC19735b.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.h$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h$a.class */
    public static abstract class AbstractC19685a<MessageType extends AbstractC19683h, BuilderType extends AbstractC19685a> extends AbstractC19666a.AbstractC19667a<BuilderType> {

        /* renamed from: a */
        public AbstractC19673d f65839a = AbstractC19673d.f65805b;

        /* renamed from: a */
        public abstract BuilderType mo1702a(MessageType messagetype);

        /* renamed from: a */
        public abstract MessageType mo1654j();

        /* renamed from: b */
        public BuilderType clone() {
            throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.h$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h$b.class */
    public static abstract class AbstractC19686b<MessageType extends AbstractC19687c<MessageType>, BuilderType extends AbstractC19686b<MessageType, BuilderType>> extends AbstractC19685a<MessageType, BuilderType> implements AbstractC19691i<MessageType> {

        /* renamed from: b */
        private C19680g<C19689d> f65840b = C19680g.m1718b();

        /* renamed from: c */
        private boolean f65841c;

        /* renamed from: a */
        static /* synthetic */ C19680g m1701a(AbstractC19686b abstractC19686b) {
            abstractC19686b.f65840b.m1713c();
            abstractC19686b.f65841c = false;
            return abstractC19686b.f65840b;
        }

        /* renamed from: a */
        public final void m1700a(MessageType messagetype) {
            if (!this.f65841c) {
                this.f65840b = this.f65840b.clone();
                this.f65841c = true;
            }
            C19680g<C19689d> c19680g = this.f65840b;
            C19680g c19680g2 = ((AbstractC19687c) messagetype).f65842a;
            for (int i = 0; i < c19680g2.f65833a.m1615c(); i++) {
                c19680g.m1729a(c19680g2.f65833a.m1617b(i));
            }
            for (Map.Entry<C19689d, Object> entry : c19680g2.f65833a.m1612d()) {
                c19680g.m1729a(entry);
            }
        }

        /* renamed from: f */
        public BuilderType clone() {
            throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
        }

        /* renamed from: k */
        public final boolean m1696k() {
            return this.f65840b.m1709e();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.h$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h$c.class */
    public static abstract class AbstractC19687c<MessageType extends AbstractC19687c<MessageType>> extends AbstractC19683h implements AbstractC19691i<MessageType> {

        /* renamed from: a */
        private final C19680g<C19689d> f65842a;

        /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.h$c$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h$c$a.class */
        public final class C19688a {

            /* renamed from: b */
            private final Iterator<Map.Entry<C19689d, Object>> f65844b;

            /* renamed from: c */
            private Map.Entry<C19689d, Object> f65845c;

            /* renamed from: d */
            private final boolean f65846d;

            private C19688a(boolean z) {
                AbstractC19687c.this = r5;
                C19680g c19680g = r5.f65842a;
                C19695k.C19698b c19698b = c19680g.f65834b ? new C19695k.C19698b(c19680g.f65833a.entrySet().iterator()) : c19680g.f65833a.entrySet().iterator();
                this.f65844b = c19698b;
                if (c19698b.hasNext()) {
                    this.f65845c = c19698b.next();
                }
                this.f65846d = z;
            }

            /* synthetic */ C19688a(AbstractC19687c abstractC19687c, boolean z, C196841 c196841) {
                this(z);
            }

            /* renamed from: a */
            public final void m1684a(int i, CodedOutputStream codedOutputStream) throws IOException {
                while (true) {
                    Map.Entry<C19689d, Object> entry = this.f65845c;
                    if (entry == null || entry.getKey().f65848b >= i) {
                        return;
                    }
                    C19689d key = this.f65845c.getKey();
                    if (!this.f65846d || key.f65849c.getJavaType() != C19728x.EnumC19735b.MESSAGE || key.f65850d) {
                        C19680g.m1722a(key, this.f65845c.getValue(), codedOutputStream);
                    } else {
                        codedOutputStream.m1811b(key.f65848b, (AbstractC19705p) this.f65845c.getValue());
                    }
                    if (this.f65844b.hasNext()) {
                        this.f65845c = this.f65844b.next();
                    } else {
                        this.f65845c = null;
                    }
                }
            }
        }

        public AbstractC19687c() {
            this.f65842a = C19680g.m1731a();
        }

        public AbstractC19687c(AbstractC19686b<MessageType, ?> abstractC19686b) {
            this.f65842a = AbstractC19686b.m1701a(abstractC19686b);
        }

        /* renamed from: d */
        private void m1689d(C19690e<MessageType, ?> c19690e) {
            if (c19690e.f65852a == mo1654j()) {
                return;
            }
            throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
        }

        /* renamed from: a */
        public final <Type> Type m1692a(C19690e<MessageType, List<Type>> c19690e, int i) {
            m1689d(c19690e);
            return (Type) c19690e.m1676b(this.f65842a.m1724a((C19680g<C19689d>) c19690e.f65855d, i));
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h
        /* renamed from: a */
        public final boolean mo1695a(C19676e c19676e, CodedOutputStream codedOutputStream, C19678f c19678f, int i) throws IOException {
            return AbstractC19683h.m1706a(this.f65842a, mo1654j(), c19676e, codedOutputStream, c19678f, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public final <Type> boolean m1693a(C19690e<MessageType, Type> c19690e) {
            m1689d(c19690e);
            return this.f65842a.m1725a((C19680g<C19689d>) c19690e.f65855d);
        }

        /* renamed from: b */
        public final <Type> int m1691b(C19690e<MessageType, List<Type>> c19690e) {
            m1689d(c19690e);
            return this.f65842a.m1712c(c19690e.f65855d);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: c */
        public final <Type> Type m1690c(C19690e<MessageType, Type> c19690e) {
            m1689d(c19690e);
            Object m1716b = this.f65842a.m1716b((C19680g<C19689d>) c19690e.f65855d);
            return m1716b == null ? c19690e.f65853b : (Type) c19690e.m1677a(m1716b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h
        /* renamed from: w */
        public final void mo1688w() {
            this.f65842a.m1713c();
        }

        /* renamed from: x */
        public final boolean m1687x() {
            return this.f65842a.m1709e();
        }

        /* renamed from: y */
        public final AbstractC19687c<MessageType>.C19688a m1686y() {
            return new C19688a(this, false, null);
        }

        /* renamed from: z */
        public final int m1685z() {
            C19680g<C19689d> c19680g = this.f65842a;
            int i = 0;
            for (int i2 = 0; i2 < c19680g.f65833a.m1615c(); i2++) {
                Map.Entry<C19689d, Object> m1617b = c19680g.f65833a.m1617b(i2);
                i += C19680g.m1711c(m1617b.getKey(), m1617b.getValue());
            }
            for (Map.Entry<C19689d, Object> entry : c19680g.f65833a.m1612d()) {
                i += C19680g.m1711c(entry.getKey(), entry.getValue());
            }
            return i;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.h$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h$d.class */
    public static final class C19689d implements C19680g.AbstractC19682a<C19689d> {

        /* renamed from: a */
        final C19692j.AbstractC19694b<?> f65847a;

        /* renamed from: b */
        final int f65848b;

        /* renamed from: c */
        final C19728x.EnumC19730a f65849c;

        /* renamed from: d */
        final boolean f65850d;

        /* renamed from: e */
        final boolean f65851e;

        C19689d(C19692j.AbstractC19694b<?> abstractC19694b, int i, C19728x.EnumC19730a enumC19730a, boolean z, boolean z2) {
            this.f65847a = abstractC19694b;
            this.f65848b = i;
            this.f65849c = enumC19730a;
            this.f65850d = z;
            this.f65851e = z2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19680g.AbstractC19682a
        /* renamed from: a */
        public final int mo1683a() {
            return this.f65848b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19680g.AbstractC19682a
        /* renamed from: a */
        public final AbstractC19705p.AbstractC19706a mo1682a(AbstractC19705p.AbstractC19706a abstractC19706a, AbstractC19705p abstractC19705p) {
            return ((AbstractC19685a) abstractC19706a).mo1702a((AbstractC19685a) ((AbstractC19683h) abstractC19705p));
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19680g.AbstractC19682a
        /* renamed from: b */
        public final C19728x.EnumC19730a mo1681b() {
            return this.f65849c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19680g.AbstractC19682a
        /* renamed from: c */
        public final C19728x.EnumC19735b mo1680c() {
            return this.f65849c.getJavaType();
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return this.f65848b - ((C19689d) obj).f65848b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19680g.AbstractC19682a
        /* renamed from: d */
        public final boolean mo1679d() {
            return this.f65850d;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19680g.AbstractC19682a
        /* renamed from: e */
        public final boolean mo1678e() {
            return this.f65851e;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.h$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h$e.class */
    public static final class C19690e<ContainingType extends AbstractC19705p, Type> {

        /* renamed from: a */
        final ContainingType f65852a;

        /* renamed from: b */
        final Type f65853b;

        /* renamed from: c */
        final AbstractC19705p f65854c;

        /* renamed from: d */
        final C19689d f65855d;

        /* renamed from: e */
        final Class f65856e;

        /* renamed from: f */
        final Method f65857f;

        C19690e(ContainingType containingtype, Type type, AbstractC19705p abstractC19705p, C19689d c19689d, Class cls) {
            if (containingtype != null) {
                if (c19689d.f65849c == C19728x.EnumC19730a.MESSAGE && abstractC19705p == null) {
                    throw new IllegalArgumentException("Null messageDefaultInstance");
                }
                this.f65852a = containingtype;
                this.f65853b = type;
                this.f65854c = abstractC19705p;
                this.f65855d = c19689d;
                this.f65856e = cls;
                if (C19692j.AbstractC19693a.class.isAssignableFrom(cls)) {
                    this.f65857f = AbstractC19683h.m1708a(cls, "valueOf", Integer.TYPE);
                    return;
                } else {
                    this.f65857f = null;
                    return;
                }
            }
            throw new IllegalArgumentException("Null containingTypeDefaultInstance");
        }

        /* renamed from: a */
        final Object m1677a(Object obj) {
            if (this.f65855d.f65850d) {
                if (this.f65855d.f65849c.getJavaType() != C19728x.EnumC19735b.ENUM) {
                    return obj;
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : (List) obj) {
                    arrayList.add(m1676b(obj2));
                }
                return arrayList;
            }
            return m1676b(obj);
        }

        /* renamed from: b */
        final Object m1676b(Object obj) {
            Object obj2 = obj;
            if (this.f65855d.f65849c.getJavaType() == C19728x.EnumC19735b.ENUM) {
                obj2 = AbstractC19683h.m1707a(this.f65857f, (Integer) obj);
            }
            return obj2;
        }

        /* renamed from: c */
        final Object m1675c(Object obj) {
            Integer num = obj;
            if (this.f65855d.f65849c.getJavaType() == C19728x.EnumC19735b.ENUM) {
                num = Integer.valueOf(((C19692j.AbstractC19693a) obj).getNumber());
            }
            return num;
        }
    }

    public AbstractC19683h() {
    }

    public AbstractC19683h(AbstractC19685a abstractC19685a) {
    }

    /* renamed from: a */
    static Object m1707a(Method method, Object... objArr) {
        try {
            return method.invoke(null, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (!(cause instanceof Error)) {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((Error) cause);
        }
    }

    /* renamed from: a */
    static Method m1708a(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            String valueOf = String.valueOf(String.valueOf(cls.getName()));
            String valueOf2 = String.valueOf(String.valueOf(str));
            StringBuilder sb = new StringBuilder(valueOf.length() + 45 + valueOf2.length());
            sb.append("Generated message class \"");
            sb.append(valueOf);
            sb.append("\" missing method \"");
            sb.append(valueOf2);
            sb.append("\".");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* renamed from: a */
    public static <ContainingType extends AbstractC19705p, Type> C19690e<ContainingType, Type> m1705a(ContainingType containingtype, Type type, AbstractC19705p abstractC19705p, int i, C19728x.EnumC19730a enumC19730a, Class cls) {
        return new C19690e<>(containingtype, type, abstractC19705p, new C19689d(null, i, enumC19730a, false, false), cls);
    }

    /* renamed from: a */
    public static <ContainingType extends AbstractC19705p, Type> C19690e<ContainingType, Type> m1704a(ContainingType containingtype, AbstractC19705p abstractC19705p, int i, C19728x.EnumC19730a enumC19730a, Class cls) {
        return new C19690e<>(containingtype, Collections.emptyList(), abstractC19705p, new C19689d(null, i, enumC19730a, true, false), cls);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0089  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ boolean m1706a(kotlin.reflect.jvm.internal.impl.protobuf.C19680g r6, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p r7, kotlin.reflect.jvm.internal.impl.protobuf.C19676e r8, kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream r9, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r10, int r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 617
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.m1706a(kotlin.reflect.jvm.internal.impl.protobuf.g, kotlin.reflect.jvm.internal.impl.protobuf.p, kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream, kotlin.reflect.jvm.internal.impl.protobuf.f, int):boolean");
    }

    /* renamed from: a */
    public boolean mo1695a(C19676e c19676e, CodedOutputStream codedOutputStream, C19678f c19678f, int i) throws IOException {
        return c19676e.m1757a(i, codedOutputStream);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
    /* renamed from: b */
    public AbstractC19708r<? extends AbstractC19705p> mo1661b() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    /* renamed from: w */
    public void mo1688w() {
    }
}
