package retrofit2;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
/* renamed from: retrofit2.l */
/* loaded from: classes5-dex2jar.jar:retrofit2/l.class */
public abstract class AbstractC21101l<T> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$a.class */
    public static final class C21104a<T> extends AbstractC21101l<T> {

        /* renamed from: a */
        private final Method f67729a;

        /* renamed from: b */
        private final int f67730b;

        /* renamed from: c */
        private final AbstractC21074e<T, RequestBody> f67731c;

        public C21104a(Method method, int i, AbstractC21074e<T, RequestBody> abstractC21074e) {
            this.f67729a = method;
            this.f67730b = i;
            this.f67731c = abstractC21074e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final void mo41a(C21122n c21122n, T t) {
            if (t != null) {
                try {
                    c21122n.f67782f = this.f67731c.mo44a(t);
                    return;
                } catch (IOException e) {
                    Method method = this.f67729a;
                    int i = this.f67730b;
                    throw C21129s.m12a(method, e, i, "Unable to convert " + t + " to RequestBody", new Object[0]);
                }
            }
            throw C21129s.m14a(this.f67729a, this.f67730b, "Body parameter value must not be null.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$b */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$b.class */
    public static final class C21105b<T> extends AbstractC21101l<T> {

        /* renamed from: a */
        private final String f67732a;

        /* renamed from: b */
        private final AbstractC21074e<T, String> f67733b;

        /* renamed from: c */
        private final boolean f67734c;

        public C21105b(String str, AbstractC21074e<T, String> abstractC21074e, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.f67732a = str;
            this.f67733b = abstractC21074e;
            this.f67734c = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final void mo41a(C21122n c21122n, T t) throws IOException {
            String mo44a;
            if (t == null || (mo44a = this.f67733b.mo44a(t)) == null) {
                return;
            }
            c21122n.m27b(this.f67732a, mo44a, this.f67734c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$c */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$c.class */
    public static final class C21106c<T> extends AbstractC21101l<Map<String, T>> {

        /* renamed from: a */
        private final Method f67735a;

        /* renamed from: b */
        private final int f67736b;

        /* renamed from: c */
        private final AbstractC21074e<T, String> f67737c;

        /* renamed from: d */
        private final boolean f67738d;

        public C21106c(Method method, int i, AbstractC21074e<T, String> abstractC21074e, boolean z) {
            this.f67735a = method;
            this.f67736b = i;
            this.f67737c = abstractC21074e;
            this.f67738d = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final /* synthetic */ void mo41a(C21122n c21122n, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str == null) {
                        throw C21129s.m14a(this.f67735a, this.f67736b, "Field map contained null key.", new Object[0]);
                    }
                    Object value = entry.getValue();
                    if (value == null) {
                        Method method = this.f67735a;
                        int i = this.f67736b;
                        throw C21129s.m14a(method, i, "Field map contained null value for key '" + str + "'.", new Object[0]);
                    }
                    String str2 = (String) this.f67737c.mo44a(value);
                    if (str2 == null) {
                        Method method2 = this.f67735a;
                        int i2 = this.f67736b;
                        throw C21129s.m14a(method2, i2, "Field map value '" + value + "' converted to null by " + this.f67737c.getClass().getName() + " for key '" + str + "'.", new Object[0]);
                    }
                    c21122n.m27b(str, str2, this.f67738d);
                }
                return;
            }
            throw C21129s.m14a(this.f67735a, this.f67736b, "Field map was null.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$d */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$d.class */
    public static final class C21107d<T> extends AbstractC21101l<T> {

        /* renamed from: a */
        private final String f67739a;

        /* renamed from: b */
        private final AbstractC21074e<T, String> f67740b;

        public C21107d(String str, AbstractC21074e<T, String> abstractC21074e) {
            Objects.requireNonNull(str, "name == null");
            this.f67739a = str;
            this.f67740b = abstractC21074e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final void mo41a(C21122n c21122n, T t) throws IOException {
            String mo44a;
            if (t == null || (mo44a = this.f67740b.mo44a(t)) == null) {
                return;
            }
            c21122n.m31a(this.f67739a, mo44a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$e */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$e.class */
    public static final class C21108e<T> extends AbstractC21101l<Map<String, T>> {

        /* renamed from: a */
        private final Method f67741a;

        /* renamed from: b */
        private final int f67742b;

        /* renamed from: c */
        private final AbstractC21074e<T, String> f67743c;

        public C21108e(Method method, int i, AbstractC21074e<T, String> abstractC21074e) {
            this.f67741a = method;
            this.f67742b = i;
            this.f67743c = abstractC21074e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final /* synthetic */ void mo41a(C21122n c21122n, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str == null) {
                        throw C21129s.m14a(this.f67741a, this.f67742b, "Header map contained null key.", new Object[0]);
                    }
                    Object value = entry.getValue();
                    if (value == null) {
                        Method method = this.f67741a;
                        int i = this.f67742b;
                        throw C21129s.m14a(method, i, "Header map contained null value for key '" + str + "'.", new Object[0]);
                    }
                    c21122n.m31a(str, (String) this.f67743c.mo44a(value));
                }
                return;
            }
            throw C21129s.m14a(this.f67741a, this.f67742b, "Header map was null.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$f */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$f.class */
    public static final class C21109f extends AbstractC21101l<Headers> {

        /* renamed from: a */
        private final Method f67744a;

        /* renamed from: b */
        private final int f67745b;

        public C21109f(Method method, int i) {
            this.f67744a = method;
            this.f67745b = i;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final /* synthetic */ void mo41a(C21122n c21122n, Headers headers) throws IOException {
            Headers headers2 = headers;
            if (headers2 != null) {
                c21122n.f67780d.addAll(headers2);
                return;
            }
            throw C21129s.m14a(this.f67744a, this.f67745b, "Headers parameter must not be null.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$g */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$g.class */
    public static final class C21110g<T> extends AbstractC21101l<T> {

        /* renamed from: a */
        private final Method f67746a;

        /* renamed from: b */
        private final int f67747b;

        /* renamed from: c */
        private final Headers f67748c;

        /* renamed from: d */
        private final AbstractC21074e<T, RequestBody> f67749d;

        public C21110g(Method method, int i, Headers headers, AbstractC21074e<T, RequestBody> abstractC21074e) {
            this.f67746a = method;
            this.f67747b = i;
            this.f67748c = headers;
            this.f67749d = abstractC21074e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final void mo41a(C21122n c21122n, T t) {
            if (t == null) {
                return;
            }
            try {
                c21122n.m28a(this.f67748c, this.f67749d.mo44a(t));
            } catch (IOException e) {
                Method method = this.f67746a;
                int i = this.f67747b;
                throw C21129s.m14a(method, i, "Unable to convert " + t + " to RequestBody", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$h */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$h.class */
    public static final class C21111h<T> extends AbstractC21101l<Map<String, T>> {

        /* renamed from: a */
        private final Method f67750a;

        /* renamed from: b */
        private final int f67751b;

        /* renamed from: c */
        private final AbstractC21074e<T, RequestBody> f67752c;

        /* renamed from: d */
        private final String f67753d;

        public C21111h(Method method, int i, AbstractC21074e<T, RequestBody> abstractC21074e, String str) {
            this.f67750a = method;
            this.f67751b = i;
            this.f67752c = abstractC21074e;
            this.f67753d = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final /* synthetic */ void mo41a(C21122n c21122n, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str == null) {
                        throw C21129s.m14a(this.f67750a, this.f67751b, "Part map contained null key.", new Object[0]);
                    }
                    Object value = entry.getValue();
                    if (value == null) {
                        Method method = this.f67750a;
                        int i = this.f67751b;
                        throw C21129s.m14a(method, i, "Part map contained null value for key '" + str + "'.", new Object[0]);
                    }
                    c21122n.m28a(Headers.m617of("Content-Disposition", "form-data; name=\"" + str + "\"", "Content-Transfer-Encoding", this.f67753d), (RequestBody) this.f67752c.mo44a(value));
                }
                return;
            }
            throw C21129s.m14a(this.f67750a, this.f67751b, "Part map was null.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$i */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$i.class */
    public static final class C21112i<T> extends AbstractC21101l<T> {

        /* renamed from: a */
        private final Method f67754a;

        /* renamed from: b */
        private final int f67755b;

        /* renamed from: c */
        private final String f67756c;

        /* renamed from: d */
        private final AbstractC21074e<T, String> f67757d;

        /* renamed from: e */
        private final boolean f67758e;

        public C21112i(Method method, int i, String str, AbstractC21074e<T, String> abstractC21074e, boolean z) {
            this.f67754a = method;
            this.f67755b = i;
            Objects.requireNonNull(str, "name == null");
            this.f67756c = str;
            this.f67757d = abstractC21074e;
            this.f67758e = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final void mo41a(C21122n c21122n, T t) throws IOException {
            if (t == null) {
                Method method = this.f67754a;
                int i = this.f67755b;
                throw C21129s.m14a(method, i, "Path parameter \"" + this.f67756c + "\" value must not be null.", new Object[0]);
            }
            String str = this.f67756c;
            String mo44a = this.f67757d.mo44a(t);
            boolean z = this.f67758e;
            if (c21122n.f67778b == null) {
                throw new AssertionError();
            }
            String m29a = C21122n.m29a(mo44a, z);
            String str2 = c21122n.f67778b;
            String replace = str2.replace("{" + str + "}", m29a);
            if (C21122n.f67776a.matcher(replace).matches()) {
                throw new IllegalArgumentException("@Path parameters shouldn't perform path traversal ('.' or '..'): ".concat(String.valueOf(mo44a)));
            }
            c21122n.f67778b = replace;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$j */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$j.class */
    public static final class C21113j<T> extends AbstractC21101l<T> {

        /* renamed from: a */
        private final String f67759a;

        /* renamed from: b */
        private final AbstractC21074e<T, String> f67760b;

        /* renamed from: c */
        private final boolean f67761c;

        public C21113j(String str, AbstractC21074e<T, String> abstractC21074e, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.f67759a = str;
            this.f67760b = abstractC21074e;
            this.f67761c = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final void mo41a(C21122n c21122n, T t) throws IOException {
            String mo44a;
            if (t == null || (mo44a = this.f67760b.mo44a(t)) == null) {
                return;
            }
            c21122n.m30a(this.f67759a, mo44a, this.f67761c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$k */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$k.class */
    public static final class C21114k<T> extends AbstractC21101l<Map<String, T>> {

        /* renamed from: a */
        private final Method f67762a;

        /* renamed from: b */
        private final int f67763b;

        /* renamed from: c */
        private final AbstractC21074e<T, String> f67764c;

        /* renamed from: d */
        private final boolean f67765d;

        public C21114k(Method method, int i, AbstractC21074e<T, String> abstractC21074e, boolean z) {
            this.f67762a = method;
            this.f67763b = i;
            this.f67764c = abstractC21074e;
            this.f67765d = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final /* synthetic */ void mo41a(C21122n c21122n, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str == null) {
                        throw C21129s.m14a(this.f67762a, this.f67763b, "Query map contained null key.", new Object[0]);
                    }
                    Object value = entry.getValue();
                    if (value == null) {
                        Method method = this.f67762a;
                        int i = this.f67763b;
                        throw C21129s.m14a(method, i, "Query map contained null value for key '" + str + "'.", new Object[0]);
                    }
                    String str2 = (String) this.f67764c.mo44a(value);
                    if (str2 == null) {
                        Method method2 = this.f67762a;
                        int i2 = this.f67763b;
                        throw C21129s.m14a(method2, i2, "Query map value '" + value + "' converted to null by " + this.f67764c.getClass().getName() + " for key '" + str + "'.", new Object[0]);
                    }
                    c21122n.m30a(str, str2, this.f67765d);
                }
                return;
            }
            throw C21129s.m14a(this.f67762a, this.f67763b, "Query map was null", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$l */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$l.class */
    public static final class C21115l<T> extends AbstractC21101l<T> {

        /* renamed from: a */
        private final AbstractC21074e<T, String> f67766a;

        /* renamed from: b */
        private final boolean f67767b;

        public C21115l(AbstractC21074e<T, String> abstractC21074e, boolean z) {
            this.f67766a = abstractC21074e;
            this.f67767b = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final void mo41a(C21122n c21122n, T t) throws IOException {
            if (t == null) {
                return;
            }
            c21122n.m30a(this.f67766a.mo44a(t), null, this.f67767b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$m */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$m.class */
    public static final class C21116m extends AbstractC21101l<MultipartBody.Part> {

        /* renamed from: a */
        static final C21116m f67768a = new C21116m();

        private C21116m() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final /* synthetic */ void mo41a(C21122n c21122n, MultipartBody.Part part) throws IOException {
            MultipartBody.Part part2 = part;
            if (part2 != null) {
                c21122n.f67781e.addPart(part2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$n */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$n.class */
    public static final class C21117n extends AbstractC21101l<Object> {

        /* renamed from: a */
        private final Method f67769a;

        /* renamed from: b */
        private final int f67770b;

        public C21117n(Method method, int i) {
            this.f67769a = method;
            this.f67770b = i;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final void mo41a(C21122n c21122n, Object obj) {
            if (obj != null) {
                c21122n.f67778b = obj.toString();
                return;
            }
            throw C21129s.m14a(this.f67769a, this.f67770b, "@Url parameter is null.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.l$o */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$o.class */
    public static final class C21118o<T> extends AbstractC21101l<T> {

        /* renamed from: a */
        final Class<T> f67771a;

        public C21118o(Class<T> cls) {
            this.f67771a = cls;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.AbstractC21101l
        /* renamed from: a */
        public final void mo41a(C21122n c21122n, T t) {
            c21122n.f67779c.tag(this.f67771a, t);
        }
    }

    AbstractC21101l() {
    }

    /* renamed from: a */
    public final AbstractC21101l<Iterable<T>> m43a() {
        return new AbstractC21101l<Iterable<T>>() { // from class: retrofit2.l.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // retrofit2.AbstractC21101l
            /* renamed from: a */
            public final /* synthetic */ void mo41a(C21122n c21122n, Object obj) throws IOException {
                Iterable<T> iterable = (Iterable) obj;
                if (iterable != null) {
                    for (T t : iterable) {
                        AbstractC21101l.this.mo41a(c21122n, t);
                    }
                }
            }
        };
    }

    /* renamed from: a */
    public abstract void mo41a(C21122n c21122n, T t) throws IOException;

    /* renamed from: b */
    public final AbstractC21101l<Object> m42b() {
        return new AbstractC21101l<Object>() { // from class: retrofit2.l.2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: Multi-variable type inference failed */
            @Override // retrofit2.AbstractC21101l
            /* renamed from: a */
            public final void mo41a(C21122n c21122n, Object obj) throws IOException {
                if (obj == null) {
                    return;
                }
                int length = Array.getLength(obj);
                for (int i = 0; i < length; i++) {
                    AbstractC21101l.this.mo41a(c21122n, Array.get(obj, i));
                }
            }
        };
    }
}
