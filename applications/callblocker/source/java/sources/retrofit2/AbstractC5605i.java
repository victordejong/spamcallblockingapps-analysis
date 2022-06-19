package retrofit2;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Map;
import javax.annotation.Nullable;
import okhttp3.AbstractC5402ab;
import okhttp3.C5539s;
import okhttp3.C5547w;
/* renamed from: retrofit2.i */
/* loaded from: classes-dex2jar.jar:retrofit2/i.class */
public abstract class AbstractC5605i<T> {

    /* renamed from: retrofit2.i$a */
    /* loaded from: classes-dex2jar.jar:retrofit2/i$a.class */
    public static final class C5608a<T> extends AbstractC5605i<T> {

        /* renamed from: a */
        private final AbstractC5590e<T, AbstractC5402ab> f23281a;

        public C5608a(AbstractC5590e<T, AbstractC5402ab> abstractC5590e) {
            this.f23281a = abstractC5590e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC5605i
        /* renamed from: a */
        public void mo78a(C5625k c5625k, @Nullable T t) {
            if (t == null) {
                throw new IllegalArgumentException("Body parameter value must not be null.");
            }
            try {
                c5625k.m65a(this.f23281a.mo113a(t));
            } catch (IOException e) {
                throw new RuntimeException("Unable to convert " + t + " to RequestBody", e);
            }
        }
    }

    /* renamed from: retrofit2.i$b */
    /* loaded from: classes-dex2jar.jar:retrofit2/i$b.class */
    public static final class C5609b<T> extends AbstractC5605i<T> {

        /* renamed from: a */
        private final String f23282a;

        /* renamed from: b */
        private final AbstractC5590e<T, String> f23283b;

        /* renamed from: c */
        private final boolean f23284c;

        public C5609b(String str, AbstractC5590e<T, String> abstractC5590e, boolean z) {
            this.f23282a = (String) C5633o.m15a(str, "name == null");
            this.f23283b = abstractC5590e;
            this.f23284c = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC5605i
        /* renamed from: a */
        public void mo78a(C5625k c5625k, @Nullable T t) {
            String mo113a;
            if (t == null || (mo113a = this.f23283b.mo113a(t)) == null) {
                return;
            }
            c5625k.m61c(this.f23282a, mo113a, this.f23284c);
        }
    }

    /* renamed from: retrofit2.i$c */
    /* loaded from: classes-dex2jar.jar:retrofit2/i$c.class */
    public static final class C5610c<T> extends AbstractC5605i<Map<String, T>> {

        /* renamed from: a */
        private final AbstractC5590e<T, String> f23285a;

        /* renamed from: b */
        private final boolean f23286b;

        public C5610c(AbstractC5590e<T, String> abstractC5590e, boolean z) {
            this.f23285a = abstractC5590e;
            this.f23286b = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC5605i
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo78a(C5625k c5625k, @Nullable Object obj) {
            m83a(c5625k, (Map) ((Map) obj));
        }

        /* renamed from: a */
        void m83a(C5625k c5625k, @Nullable Map<String, T> map) {
            if (map == null) {
                throw new IllegalArgumentException("Field map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Field map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Field map contained null value for key '" + key + "'.");
                }
                String mo113a = this.f23285a.mo113a(value);
                if (mo113a == null) {
                    throw new IllegalArgumentException("Field map value '" + value + "' converted to null by " + this.f23285a.getClass().getName() + " for key '" + key + "'.");
                }
                c5625k.m61c(key, mo113a, this.f23286b);
            }
        }
    }

    /* renamed from: retrofit2.i$d */
    /* loaded from: classes-dex2jar.jar:retrofit2/i$d.class */
    public static final class C5611d<T> extends AbstractC5605i<T> {

        /* renamed from: a */
        private final String f23287a;

        /* renamed from: b */
        private final AbstractC5590e<T, String> f23288b;

        public C5611d(String str, AbstractC5590e<T, String> abstractC5590e) {
            this.f23287a = (String) C5633o.m15a(str, "name == null");
            this.f23288b = abstractC5590e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC5605i
        /* renamed from: a */
        public void mo78a(C5625k c5625k, @Nullable T t) {
            String mo113a;
            if (t == null || (mo113a = this.f23288b.mo113a(t)) == null) {
                return;
            }
            c5625k.m68a(this.f23287a, mo113a);
        }
    }

    /* renamed from: retrofit2.i$e */
    /* loaded from: classes-dex2jar.jar:retrofit2/i$e.class */
    public static final class C5612e<T> extends AbstractC5605i<Map<String, T>> {

        /* renamed from: a */
        private final AbstractC5590e<T, String> f23289a;

        public C5612e(AbstractC5590e<T, String> abstractC5590e) {
            this.f23289a = abstractC5590e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC5605i
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo78a(C5625k c5625k, @Nullable Object obj) {
            m82a(c5625k, (Map) ((Map) obj));
        }

        /* renamed from: a */
        void m82a(C5625k c5625k, @Nullable Map<String, T> map) {
            if (map == null) {
                throw new IllegalArgumentException("Header map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Header map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Header map contained null value for key '" + key + "'.");
                }
                c5625k.m68a(key, this.f23289a.mo113a(value));
            }
        }
    }

    /* renamed from: retrofit2.i$f */
    /* loaded from: classes-dex2jar.jar:retrofit2/i$f.class */
    public static final class C5613f<T> extends AbstractC5605i<T> {

        /* renamed from: a */
        private final C5539s f23290a;

        /* renamed from: b */
        private final AbstractC5590e<T, AbstractC5402ab> f23291b;

        public C5613f(C5539s c5539s, AbstractC5590e<T, AbstractC5402ab> abstractC5590e) {
            this.f23290a = c5539s;
            this.f23291b = abstractC5590e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC5605i
        /* renamed from: a */
        public void mo78a(C5625k c5625k, @Nullable T t) {
            if (t == null) {
                return;
            }
            try {
                c5625k.m64a(this.f23290a, this.f23291b.mo113a(t));
            } catch (IOException e) {
                throw new RuntimeException("Unable to convert " + t + " to RequestBody", e);
            }
        }
    }

    /* renamed from: retrofit2.i$g */
    /* loaded from: classes-dex2jar.jar:retrofit2/i$g.class */
    public static final class C5614g<T> extends AbstractC5605i<Map<String, T>> {

        /* renamed from: a */
        private final AbstractC5590e<T, AbstractC5402ab> f23292a;

        /* renamed from: b */
        private final String f23293b;

        public C5614g(AbstractC5590e<T, AbstractC5402ab> abstractC5590e, String str) {
            this.f23292a = abstractC5590e;
            this.f23293b = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC5605i
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo78a(C5625k c5625k, @Nullable Object obj) {
            m81a(c5625k, (Map) ((Map) obj));
        }

        /* renamed from: a */
        void m81a(C5625k c5625k, @Nullable Map<String, T> map) {
            if (map == null) {
                throw new IllegalArgumentException("Part map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Part map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Part map contained null value for key '" + key + "'.");
                }
                c5625k.m64a(C5539s.m281a("Content-Disposition", "form-data; name=\"" + key + "\"", "Content-Transfer-Encoding", this.f23293b), this.f23292a.mo113a(value));
            }
        }
    }

    /* renamed from: retrofit2.i$h */
    /* loaded from: classes-dex2jar.jar:retrofit2/i$h.class */
    public static final class C5615h<T> extends AbstractC5605i<T> {

        /* renamed from: a */
        private final String f23294a;

        /* renamed from: b */
        private final AbstractC5590e<T, String> f23295b;

        /* renamed from: c */
        private final boolean f23296c;

        public C5615h(String str, AbstractC5590e<T, String> abstractC5590e, boolean z) {
            this.f23294a = (String) C5633o.m15a(str, "name == null");
            this.f23295b = abstractC5590e;
            this.f23296c = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC5605i
        /* renamed from: a */
        public void mo78a(C5625k c5625k, @Nullable T t) {
            if (t == null) {
                throw new IllegalArgumentException("Path parameter \"" + this.f23294a + "\" value must not be null.");
            }
            c5625k.m67a(this.f23294a, this.f23295b.mo113a(t), this.f23296c);
        }
    }

    /* renamed from: retrofit2.i$i */
    /* loaded from: classes-dex2jar.jar:retrofit2/i$i.class */
    public static final class C5616i<T> extends AbstractC5605i<T> {

        /* renamed from: a */
        private final String f23297a;

        /* renamed from: b */
        private final AbstractC5590e<T, String> f23298b;

        /* renamed from: c */
        private final boolean f23299c;

        public C5616i(String str, AbstractC5590e<T, String> abstractC5590e, boolean z) {
            this.f23297a = (String) C5633o.m15a(str, "name == null");
            this.f23298b = abstractC5590e;
            this.f23299c = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC5605i
        /* renamed from: a */
        public void mo78a(C5625k c5625k, @Nullable T t) {
            String mo113a;
            if (t == null || (mo113a = this.f23298b.mo113a(t)) == null) {
                return;
            }
            c5625k.m62b(this.f23297a, mo113a, this.f23299c);
        }
    }

    /* renamed from: retrofit2.i$j */
    /* loaded from: classes-dex2jar.jar:retrofit2/i$j.class */
    public static final class C5617j<T> extends AbstractC5605i<Map<String, T>> {

        /* renamed from: a */
        private final AbstractC5590e<T, String> f23300a;

        /* renamed from: b */
        private final boolean f23301b;

        public C5617j(AbstractC5590e<T, String> abstractC5590e, boolean z) {
            this.f23300a = abstractC5590e;
            this.f23301b = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC5605i
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo78a(C5625k c5625k, @Nullable Object obj) {
            m80a(c5625k, (Map) ((Map) obj));
        }

        /* renamed from: a */
        void m80a(C5625k c5625k, @Nullable Map<String, T> map) {
            if (map == null) {
                throw new IllegalArgumentException("Query map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Query map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Query map contained null value for key '" + key + "'.");
                }
                String mo113a = this.f23300a.mo113a(value);
                if (mo113a == null) {
                    throw new IllegalArgumentException("Query map value '" + value + "' converted to null by " + this.f23300a.getClass().getName() + " for key '" + key + "'.");
                }
                c5625k.m62b(key, mo113a, this.f23301b);
            }
        }
    }

    /* renamed from: retrofit2.i$k */
    /* loaded from: classes-dex2jar.jar:retrofit2/i$k.class */
    public static final class C5618k<T> extends AbstractC5605i<T> {

        /* renamed from: a */
        private final AbstractC5590e<T, String> f23302a;

        /* renamed from: b */
        private final boolean f23303b;

        public C5618k(AbstractC5590e<T, String> abstractC5590e, boolean z) {
            this.f23302a = abstractC5590e;
            this.f23303b = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC5605i
        /* renamed from: a */
        public void mo78a(C5625k c5625k, @Nullable T t) {
            if (t == null) {
                return;
            }
            c5625k.m62b(this.f23302a.mo113a(t), null, this.f23303b);
        }
    }

    /* renamed from: retrofit2.i$l */
    /* loaded from: classes-dex2jar.jar:retrofit2/i$l.class */
    public static final class C5619l extends AbstractC5605i<C5547w.C5549b> {

        /* renamed from: a */
        static final C5619l f23304a = new C5619l();

        private C5619l() {
        }

        /* renamed from: a */
        public void mo78a(C5625k c5625k, @Nullable C5547w.C5549b c5549b) {
            if (c5549b != null) {
                c5625k.m63a(c5549b);
            }
        }
    }

    /* renamed from: retrofit2.i$m */
    /* loaded from: classes-dex2jar.jar:retrofit2/i$m.class */
    public static final class C5620m extends AbstractC5605i<Object> {
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC5605i
        /* renamed from: a */
        public void mo78a(C5625k c5625k, @Nullable Object obj) {
            C5633o.m15a(obj, "@Url parameter is null.");
            c5625k.m69a(obj);
        }
    }

    AbstractC5605i() {
    }

    /* renamed from: a */
    public final AbstractC5605i<Iterable<T>> m86a() {
        return new AbstractC5605i<Iterable<T>>() { // from class: retrofit2.i.1
            /* renamed from: a */
            void m84a(C5625k c5625k, @Nullable Iterable<T> iterable) {
                if (iterable == null) {
                    return;
                }
                for (T t : iterable) {
                    AbstractC5605i.this.mo78a(c5625k, t);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // retrofit2.AbstractC5605i
            /* renamed from: a */
            public /* bridge */ /* synthetic */ void mo78a(C5625k c5625k, @Nullable Object obj) {
                m84a(c5625k, (Iterable) ((Iterable) obj));
            }
        };
    }

    /* renamed from: a */
    public abstract void mo78a(C5625k c5625k, @Nullable T t);

    /* renamed from: b */
    public final AbstractC5605i<Object> m85b() {
        return new AbstractC5605i<Object>() { // from class: retrofit2.i.2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: Multi-variable type inference failed */
            @Override // retrofit2.AbstractC5605i
            /* renamed from: a */
            public void mo78a(C5625k c5625k, @Nullable Object obj) {
                if (obj == null) {
                    return;
                }
                int length = Array.getLength(obj);
                for (int i = 0; i < length; i++) {
                    AbstractC5605i.this.mo78a(c5625k, Array.get(obj, i));
                }
            }
        };
    }
}
