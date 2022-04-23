package retrofit2;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:retrofit2/l.class */
public abstract class l<T> {

    /* loaded from: classes5-dex2jar.jar:retrofit2/l$a.class */
    static final class a<T> extends l<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f39485a;

        /* renamed from: b  reason: collision with root package name */
        private final int f39486b;

        /* renamed from: c  reason: collision with root package name */
        private final retrofit2.e<T, RequestBody> f39487c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Method method, int i, retrofit2.e<T, RequestBody> eVar) {
            this.f39485a = method;
            this.f39486b = i;
            this.f39487c = eVar;
        }

        @Override // retrofit2.l
        final void a(retrofit2.n nVar, T t) {
            if (t != null) {
                try {
                    nVar.f = this.f39487c.a(t);
                } catch (IOException e) {
                    Method method = this.f39485a;
                    int i = this.f39486b;
                    throw s.a(method, e, i, "Unable to convert " + t + " to RequestBody", new Object[0]);
                }
            } else {
                throw s.a(this.f39485a, this.f39486b, "Body parameter value must not be null.", new Object[0]);
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/l$b.class */
    static final class b<T> extends l<T> {

        /* renamed from: a  reason: collision with root package name */
        private final String f39488a;

        /* renamed from: b  reason: collision with root package name */
        private final retrofit2.e<T, String> f39489b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f39490c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(String str, retrofit2.e<T, String> eVar, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.f39488a = str;
            this.f39489b = eVar;
            this.f39490c = z;
        }

        @Override // retrofit2.l
        final void a(retrofit2.n nVar, T t) throws IOException {
            String a2;
            if (t != null && (a2 = this.f39489b.a(t)) != null) {
                nVar.b(this.f39488a, a2, this.f39490c);
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/l$c.class */
    static final class c<T> extends l<Map<String, T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f39491a;

        /* renamed from: b  reason: collision with root package name */
        private final int f39492b;

        /* renamed from: c  reason: collision with root package name */
        private final retrofit2.e<T, String> f39493c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f39494d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(Method method, int i, retrofit2.e<T, String> eVar, boolean z) {
            this.f39491a = method;
            this.f39492b = i;
            this.f39493c = eVar;
            this.f39494d = z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // retrofit2.l
        final /* synthetic */ void a(retrofit2.n nVar, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str != null) {
                        Object value = entry.getValue();
                        if (value != null) {
                            String str2 = (String) this.f39493c.a(value);
                            if (str2 != null) {
                                nVar.b(str, str2, this.f39494d);
                            } else {
                                Method method = this.f39491a;
                                int i = this.f39492b;
                                throw s.a(method, i, "Field map value '" + value + "' converted to null by " + this.f39493c.getClass().getName() + " for key '" + str + "'.", new Object[0]);
                            }
                        } else {
                            Method method2 = this.f39491a;
                            int i2 = this.f39492b;
                            throw s.a(method2, i2, "Field map contained null value for key '" + str + "'.", new Object[0]);
                        }
                    } else {
                        throw s.a(this.f39491a, this.f39492b, "Field map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw s.a(this.f39491a, this.f39492b, "Field map was null.", new Object[0]);
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/l$d.class */
    static final class d<T> extends l<T> {

        /* renamed from: a  reason: collision with root package name */
        private final String f39495a;

        /* renamed from: b  reason: collision with root package name */
        private final retrofit2.e<T, String> f39496b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(String str, retrofit2.e<T, String> eVar) {
            Objects.requireNonNull(str, "name == null");
            this.f39495a = str;
            this.f39496b = eVar;
        }

        @Override // retrofit2.l
        final void a(retrofit2.n nVar, T t) throws IOException {
            String a2;
            if (t != null && (a2 = this.f39496b.a(t)) != null) {
                nVar.a(this.f39495a, a2);
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/l$e.class */
    static final class e<T> extends l<Map<String, T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f39497a;

        /* renamed from: b  reason: collision with root package name */
        private final int f39498b;

        /* renamed from: c  reason: collision with root package name */
        private final retrofit2.e<T, String> f39499c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public e(Method method, int i, retrofit2.e<T, String> eVar) {
            this.f39497a = method;
            this.f39498b = i;
            this.f39499c = eVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // retrofit2.l
        final /* synthetic */ void a(retrofit2.n nVar, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str != null) {
                        Object value = entry.getValue();
                        if (value != null) {
                            nVar.a(str, (String) this.f39499c.a(value));
                        } else {
                            Method method = this.f39497a;
                            int i = this.f39498b;
                            throw s.a(method, i, "Header map contained null value for key '" + str + "'.", new Object[0]);
                        }
                    } else {
                        throw s.a(this.f39497a, this.f39498b, "Header map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw s.a(this.f39497a, this.f39498b, "Header map was null.", new Object[0]);
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/l$f.class */
    static final class f extends l<Headers> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f39500a;

        /* renamed from: b  reason: collision with root package name */
        private final int f39501b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public f(Method method, int i) {
            this.f39500a = method;
            this.f39501b = i;
        }

        @Override // retrofit2.l
        final /* synthetic */ void a(retrofit2.n nVar, Headers headers) throws IOException {
            Headers headers2 = headers;
            if (headers2 != null) {
                nVar.f39534d.addAll(headers2);
                return;
            }
            throw s.a(this.f39500a, this.f39501b, "Headers parameter must not be null.", new Object[0]);
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/l$g.class */
    static final class g<T> extends l<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f39502a;

        /* renamed from: b  reason: collision with root package name */
        private final int f39503b;

        /* renamed from: c  reason: collision with root package name */
        private final Headers f39504c;

        /* renamed from: d  reason: collision with root package name */
        private final retrofit2.e<T, RequestBody> f39505d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public g(Method method, int i, Headers headers, retrofit2.e<T, RequestBody> eVar) {
            this.f39502a = method;
            this.f39503b = i;
            this.f39504c = headers;
            this.f39505d = eVar;
        }

        @Override // retrofit2.l
        final void a(retrofit2.n nVar, T t) {
            if (t != null) {
                try {
                    nVar.a(this.f39504c, this.f39505d.a(t));
                } catch (IOException e) {
                    Method method = this.f39502a;
                    int i = this.f39503b;
                    throw s.a(method, i, "Unable to convert " + t + " to RequestBody", e);
                }
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/l$h.class */
    static final class h<T> extends l<Map<String, T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f39506a;

        /* renamed from: b  reason: collision with root package name */
        private final int f39507b;

        /* renamed from: c  reason: collision with root package name */
        private final retrofit2.e<T, RequestBody> f39508c;

        /* renamed from: d  reason: collision with root package name */
        private final String f39509d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public h(Method method, int i, retrofit2.e<T, RequestBody> eVar, String str) {
            this.f39506a = method;
            this.f39507b = i;
            this.f39508c = eVar;
            this.f39509d = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // retrofit2.l
        final /* synthetic */ void a(retrofit2.n nVar, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str != null) {
                        Object value = entry.getValue();
                        if (value != null) {
                            nVar.a(Headers.of("Content-Disposition", "form-data; name=\"" + str + "\"", "Content-Transfer-Encoding", this.f39509d), (RequestBody) this.f39508c.a(value));
                        } else {
                            Method method = this.f39506a;
                            int i = this.f39507b;
                            throw s.a(method, i, "Part map contained null value for key '" + str + "'.", new Object[0]);
                        }
                    } else {
                        throw s.a(this.f39506a, this.f39507b, "Part map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw s.a(this.f39506a, this.f39507b, "Part map was null.", new Object[0]);
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/l$i.class */
    static final class i<T> extends l<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f39510a;

        /* renamed from: b  reason: collision with root package name */
        private final int f39511b;

        /* renamed from: c  reason: collision with root package name */
        private final String f39512c;

        /* renamed from: d  reason: collision with root package name */
        private final retrofit2.e<T, String> f39513d;
        private final boolean e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public i(Method method, int i, String str, retrofit2.e<T, String> eVar, boolean z) {
            this.f39510a = method;
            this.f39511b = i;
            Objects.requireNonNull(str, "name == null");
            this.f39512c = str;
            this.f39513d = eVar;
            this.e = z;
        }

        @Override // retrofit2.l
        final void a(retrofit2.n nVar, T t) throws IOException {
            if (t != null) {
                String str = this.f39512c;
                String a2 = this.f39513d.a(t);
                boolean z = this.e;
                if (nVar.f39532b != null) {
                    String a3 = retrofit2.n.a(a2, z);
                    String str2 = nVar.f39532b;
                    String replace = str2.replace("{" + str + "}", a3);
                    if (!retrofit2.n.f39531a.matcher(replace).matches()) {
                        nVar.f39532b = replace;
                        return;
                    }
                    throw new IllegalArgumentException("@Path parameters shouldn't perform path traversal ('.' or '..'): ".concat(String.valueOf(a2)));
                }
                throw new AssertionError();
            }
            Method method = this.f39510a;
            int i = this.f39511b;
            throw s.a(method, i, "Path parameter \"" + this.f39512c + "\" value must not be null.", new Object[0]);
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/l$j.class */
    static final class j<T> extends l<T> {

        /* renamed from: a  reason: collision with root package name */
        private final String f39514a;

        /* renamed from: b  reason: collision with root package name */
        private final retrofit2.e<T, String> f39515b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f39516c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public j(String str, retrofit2.e<T, String> eVar, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.f39514a = str;
            this.f39515b = eVar;
            this.f39516c = z;
        }

        @Override // retrofit2.l
        final void a(retrofit2.n nVar, T t) throws IOException {
            String a2;
            if (t != null && (a2 = this.f39515b.a(t)) != null) {
                nVar.a(this.f39514a, a2, this.f39516c);
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/l$k.class */
    static final class k<T> extends l<Map<String, T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f39517a;

        /* renamed from: b  reason: collision with root package name */
        private final int f39518b;

        /* renamed from: c  reason: collision with root package name */
        private final retrofit2.e<T, String> f39519c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f39520d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public k(Method method, int i, retrofit2.e<T, String> eVar, boolean z) {
            this.f39517a = method;
            this.f39518b = i;
            this.f39519c = eVar;
            this.f39520d = z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // retrofit2.l
        final /* synthetic */ void a(retrofit2.n nVar, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str != null) {
                        Object value = entry.getValue();
                        if (value != null) {
                            String str2 = (String) this.f39519c.a(value);
                            if (str2 != null) {
                                nVar.a(str, str2, this.f39520d);
                            } else {
                                Method method = this.f39517a;
                                int i = this.f39518b;
                                throw s.a(method, i, "Query map value '" + value + "' converted to null by " + this.f39519c.getClass().getName() + " for key '" + str + "'.", new Object[0]);
                            }
                        } else {
                            Method method2 = this.f39517a;
                            int i2 = this.f39518b;
                            throw s.a(method2, i2, "Query map contained null value for key '" + str + "'.", new Object[0]);
                        }
                    } else {
                        throw s.a(this.f39517a, this.f39518b, "Query map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw s.a(this.f39517a, this.f39518b, "Query map was null", new Object[0]);
        }
    }

    /* renamed from: retrofit2.l$l  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:retrofit2/l$l.class */
    static final class C0757l<T> extends l<T> {

        /* renamed from: a  reason: collision with root package name */
        private final retrofit2.e<T, String> f39521a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f39522b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0757l(retrofit2.e<T, String> eVar, boolean z) {
            this.f39521a = eVar;
            this.f39522b = z;
        }

        @Override // retrofit2.l
        final void a(retrofit2.n nVar, T t) throws IOException {
            if (t != null) {
                nVar.a(this.f39521a.a(t), null, this.f39522b);
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/l$m.class */
    static final class m extends l<MultipartBody.Part> {

        /* renamed from: a  reason: collision with root package name */
        static final m f39523a = new m();

        private m() {
        }

        @Override // retrofit2.l
        final /* synthetic */ void a(retrofit2.n nVar, MultipartBody.Part part) throws IOException {
            MultipartBody.Part part2 = part;
            if (part2 != null) {
                nVar.e.addPart(part2);
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/l$n.class */
    static final class n extends l<Object> {

        /* renamed from: a  reason: collision with root package name */
        private final Method f39524a;

        /* renamed from: b  reason: collision with root package name */
        private final int f39525b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public n(Method method, int i) {
            this.f39524a = method;
            this.f39525b = i;
        }

        @Override // retrofit2.l
        final void a(retrofit2.n nVar, Object obj) {
            if (obj != null) {
                nVar.f39532b = obj.toString();
                return;
            }
            throw s.a(this.f39524a, this.f39525b, "@Url parameter is null.", new Object[0]);
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/l$o.class */
    static final class o<T> extends l<T> {

        /* renamed from: a  reason: collision with root package name */
        final Class<T> f39526a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public o(Class<T> cls) {
            this.f39526a = cls;
        }

        @Override // retrofit2.l
        final void a(retrofit2.n nVar, T t) {
            nVar.f39533c.tag(this.f39526a, t);
        }
    }

    l() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final l<Iterable<T>> a() {
        return new l<Iterable<T>>() { // from class: retrofit2.l.1
            @Override // retrofit2.l
            final /* synthetic */ void a(retrofit2.n nVar, Object obj) throws IOException {
                Iterable<T> iterable = (Iterable) obj;
                if (iterable != null) {
                    for (T t : iterable) {
                        l.this.a(nVar, t);
                    }
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(retrofit2.n nVar, T t) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final l<Object> b() {
        return new l<Object>() { // from class: retrofit2.l.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // retrofit2.l
            final void a(retrofit2.n nVar, Object obj) throws IOException {
                if (obj != null) {
                    int length = Array.getLength(obj);
                    for (int i2 = 0; i2 < length; i2++) {
                        l.this.a(nVar, Array.get(obj, i2));
                    }
                }
            }
        };
    }
}
