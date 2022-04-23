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
import kotlin.reflect.jvm.internal.impl.protobuf.a;
import kotlin.reflect.jvm.internal.impl.protobuf.g;
import kotlin.reflect.jvm.internal.impl.protobuf.j;
import kotlin.reflect.jvm.internal.impl.protobuf.k;
import kotlin.reflect.jvm.internal.impl.protobuf.p;
import kotlin.reflect.jvm.internal.impl.protobuf.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h.class */
public abstract class h extends kotlin.reflect.jvm.internal.impl.protobuf.a implements Serializable {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.h$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f38137a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[x.b.values().length];
            f38137a = iArr;
            try {
                iArr[x.b.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f38137a[x.b.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h$a.class */
    public static abstract class a<MessageType extends h, BuilderType extends a> extends a.AbstractC0701a<BuilderType> {

        /* renamed from: a  reason: collision with root package name */
        public kotlin.reflect.jvm.internal.impl.protobuf.d f38138a = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;

        public abstract BuilderType a(MessageType messagetype);

        /* renamed from: a */
        public abstract MessageType j();

        /* renamed from: b */
        public BuilderType clone() {
            throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h$b.class */
    public static abstract class b<MessageType extends c<MessageType>, BuilderType extends b<MessageType, BuilderType>> extends a<MessageType, BuilderType> implements i<MessageType> {

        /* renamed from: b  reason: collision with root package name */
        private g<d> f38139b = g.b();

        /* renamed from: c  reason: collision with root package name */
        private boolean f38140c;

        static /* synthetic */ g a(b bVar) {
            bVar.f38139b.c();
            bVar.f38140c = false;
            return bVar.f38139b;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void a(MessageType messagetype) {
            if (!this.f38140c) {
                this.f38139b = this.f38139b.clone();
                this.f38140c = true;
            }
            g<d> gVar = this.f38139b;
            g gVar2 = ((c) messagetype).f38141a;
            for (int i = 0; i < gVar2.f38132a.c(); i++) {
                gVar.a(gVar2.f38132a.b(i));
            }
            for (Map.Entry<d, Object> entry : gVar2.f38132a.d()) {
                gVar.a(entry);
            }
        }

        /* renamed from: f */
        public BuilderType clone() {
            throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final boolean k() {
            return this.f38139b.e();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h$c.class */
    public static abstract class c<MessageType extends c<MessageType>> extends h implements i<MessageType> {

        /* renamed from: a  reason: collision with root package name */
        private final g<d> f38141a;

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h$c$a.class */
        public final class a {

            /* renamed from: b  reason: collision with root package name */
            private final Iterator<Map.Entry<d, Object>> f38143b;

            /* renamed from: c  reason: collision with root package name */
            private Map.Entry<d, Object> f38144c;

            /* renamed from: d  reason: collision with root package name */
            private final boolean f38145d;

            private a(boolean z) {
                g gVar = c.this.f38141a;
                Iterator<Map.Entry<d, Object>> bVar = gVar.f38133b ? new k.b<>(gVar.f38132a.entrySet().iterator()) : gVar.f38132a.entrySet().iterator();
                this.f38143b = bVar;
                if (bVar.hasNext()) {
                    this.f38144c = bVar.next();
                }
                this.f38145d = z;
            }

            /* synthetic */ a(c cVar, boolean z, AnonymousClass1 r7) {
                this(z);
            }

            public final void a(int i, CodedOutputStream codedOutputStream) throws IOException {
                while (true) {
                    Map.Entry<d, Object> entry = this.f38144c;
                    if (entry != null && entry.getKey().f38147b < i) {
                        d key = this.f38144c.getKey();
                        if (!this.f38145d || key.f38148c.getJavaType() != x.b.MESSAGE || key.f38149d) {
                            g.a(key, this.f38144c.getValue(), codedOutputStream);
                        } else {
                            codedOutputStream.b(key.f38147b, (p) this.f38144c.getValue());
                        }
                        if (this.f38143b.hasNext()) {
                            this.f38144c = this.f38143b.next();
                        } else {
                            this.f38144c = null;
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        public c() {
            this.f38141a = g.a();
        }

        public c(b<MessageType, ?> bVar) {
            this.f38141a = b.a(bVar);
        }

        private void d(e<MessageType, ?> eVar) {
            if (eVar.f38150a != j()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        public final <Type> Type a(e<MessageType, List<Type>> eVar, int i) {
            d(eVar);
            return (Type) eVar.b(this.f38141a.a((g<d>) eVar.f38153d, i));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h
        public final boolean a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, CodedOutputStream codedOutputStream, f fVar, int i) throws IOException {
            return h.a(this.f38141a, j(), eVar, codedOutputStream, fVar, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <Type> boolean a(e<MessageType, Type> eVar) {
            d(eVar);
            return this.f38141a.a((g<d>) eVar.f38153d);
        }

        public final <Type> int b(e<MessageType, List<Type>> eVar) {
            d(eVar);
            return this.f38141a.c(eVar.f38153d);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <Type> Type c(e<MessageType, Type> eVar) {
            d(eVar);
            Object b2 = this.f38141a.b((g<d>) eVar.f38153d);
            return b2 == null ? eVar.f38151b : (Type) eVar.a(b2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h
        public final void w() {
            this.f38141a.c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final boolean x() {
            return this.f38141a.e();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final c<MessageType>.a y() {
            return new a(this, false, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final int z() {
            g<d> gVar = this.f38141a;
            int i = 0;
            for (int i2 = 0; i2 < gVar.f38132a.c(); i2++) {
                Map.Entry<d, Object> b2 = gVar.f38132a.b(i2);
                i += g.c(b2.getKey(), b2.getValue());
            }
            for (Map.Entry<d, Object> entry : gVar.f38132a.d()) {
                i += g.c(entry.getKey(), entry.getValue());
            }
            return i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h$d.class */
    public static final class d implements g.a<d> {

        /* renamed from: a  reason: collision with root package name */
        final j.b<?> f38146a;

        /* renamed from: b  reason: collision with root package name */
        final int f38147b;

        /* renamed from: c  reason: collision with root package name */
        final x.a f38148c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f38149d;
        final boolean e;

        d(j.b<?> bVar, int i, x.a aVar, boolean z, boolean z2) {
            this.f38146a = bVar;
            this.f38147b = i;
            this.f38148c = aVar;
            this.f38149d = z;
            this.e = z2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.g.a
        public final int a() {
            return this.f38147b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.g.a
        public final p.a a(p.a aVar, p pVar) {
            return ((a) aVar).a((a) ((h) pVar));
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.g.a
        public final x.a b() {
            return this.f38148c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.g.a
        public final x.b c() {
            return this.f38148c.getJavaType();
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return this.f38147b - ((d) obj).f38147b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.g.a
        public final boolean d() {
            return this.f38149d;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.g.a
        public final boolean e() {
            return this.e;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/h$e.class */
    public static final class e<ContainingType extends p, Type> {

        /* renamed from: a  reason: collision with root package name */
        final ContainingType f38150a;

        /* renamed from: b  reason: collision with root package name */
        final Type f38151b;

        /* renamed from: c  reason: collision with root package name */
        final p f38152c;

        /* renamed from: d  reason: collision with root package name */
        final d f38153d;
        final Class e;
        final Method f;

        e(ContainingType containingtype, Type type, p pVar, d dVar, Class cls) {
            if (containingtype == null) {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            } else if (dVar.f38148c == x.a.MESSAGE && pVar == null) {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            } else {
                this.f38150a = containingtype;
                this.f38151b = type;
                this.f38152c = pVar;
                this.f38153d = dVar;
                this.e = cls;
                if (j.a.class.isAssignableFrom(cls)) {
                    this.f = h.a(cls, "valueOf", Integer.TYPE);
                } else {
                    this.f = null;
                }
            }
        }

        final Object a(Object obj) {
            if (!this.f38153d.f38149d) {
                return b(obj);
            }
            if (this.f38153d.f38148c.getJavaType() != x.b.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : (List) obj) {
                arrayList.add(b(obj2));
            }
            return arrayList;
        }

        final Object b(Object obj) {
            Object obj2 = obj;
            if (this.f38153d.f38148c.getJavaType() == x.b.ENUM) {
                obj2 = h.a(this.f, (Integer) obj);
            }
            return obj2;
        }

        final Object c(Object obj) {
            Object obj2 = obj;
            if (this.f38153d.f38148c.getJavaType() == x.b.ENUM) {
                obj2 = Integer.valueOf(((j.a) obj).getNumber());
            }
            return obj2;
        }
    }

    public h() {
    }

    public h(a aVar) {
    }

    static Object a(Method method, Object... objArr) {
        try {
            return method.invoke(null, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else if (cause instanceof Error) {
                throw ((Error) cause);
            } else {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
        }
    }

    static Method a(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e2) {
            String valueOf = String.valueOf(String.valueOf(cls.getName()));
            String valueOf2 = String.valueOf(String.valueOf(str));
            StringBuilder sb = new StringBuilder(valueOf.length() + 45 + valueOf2.length());
            sb.append("Generated message class \"");
            sb.append(valueOf);
            sb.append("\" missing method \"");
            sb.append(valueOf2);
            sb.append("\".");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    public static <ContainingType extends p, Type> e<ContainingType, Type> a(ContainingType containingtype, Type type, p pVar, int i, x.a aVar, Class cls) {
        return new e<>(containingtype, type, pVar, new d(null, i, aVar, false, false), cls);
    }

    public static <ContainingType extends p, Type> e<ContainingType, Type> a(ContainingType containingtype, p pVar, int i, x.a aVar, Class cls) {
        return new e<>(containingtype, Collections.emptyList(), pVar, new d(null, i, aVar, true, false), cls);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ boolean a(kotlin.reflect.jvm.internal.impl.protobuf.g r6, kotlin.reflect.jvm.internal.impl.protobuf.p r7, kotlin.reflect.jvm.internal.impl.protobuf.e r8, kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream r9, kotlin.reflect.jvm.internal.impl.protobuf.f r10, int r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 617
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.h.a(kotlin.reflect.jvm.internal.impl.protobuf.g, kotlin.reflect.jvm.internal.impl.protobuf.p, kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream, kotlin.reflect.jvm.internal.impl.protobuf.f, int):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, CodedOutputStream codedOutputStream, f fVar, int i) throws IOException {
        return eVar.a(i, codedOutputStream);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
    public r<? extends p> b() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void w() {
    }
}
