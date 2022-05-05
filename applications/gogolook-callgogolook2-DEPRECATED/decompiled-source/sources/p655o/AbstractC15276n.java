package p655o;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Map;
import javax.annotation.Nullable;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
/* renamed from: o.n */
/* loaded from: classes3-dex2jar.jar:o/n.class */
public abstract class AbstractC15276n<T> {

    /* renamed from: o.n$a */
    /* loaded from: classes3-dex2jar.jar:o/n$a.class */
    public class C15277a extends AbstractC15276n<Iterable<T>> {
        public C15277a() {
        }

        /* renamed from: a */
        public void m133a(C15295p pVar, @Nullable Iterable<T> iterable) throws IOException {
            if (iterable != null) {
                for (T t : iterable) {
                    AbstractC15276n.this.mo128a(pVar, t);
                }
            }
        }

        @Override // p655o.AbstractC15276n
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo128a(C15295p pVar, @Nullable Object obj) throws IOException {
            m133a(pVar, (Iterable) ((Iterable) obj));
        }
    }

    /* renamed from: o.n$b */
    /* loaded from: classes3-dex2jar.jar:o/n$b.class */
    public class C15278b extends AbstractC15276n<Object> {
        public C15278b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p655o.AbstractC15276n
        /* renamed from: a */
        public void mo128a(C15295p pVar, @Nullable Object obj) throws IOException {
            if (obj != null) {
                int length = Array.getLength(obj);
                for (int i = 0; i < length; i++) {
                    AbstractC15276n.this.mo128a(pVar, Array.get(obj, i));
                }
            }
        }
    }

    /* renamed from: o.n$c */
    /* loaded from: classes3-dex2jar.jar:o/n$c.class */
    public static final class C15279c<T> extends AbstractC15276n<T> {

        /* renamed from: a */
        public final Method f33310a;

        /* renamed from: b */
        public final int f33311b;

        /* renamed from: c */
        public final AbstractC15246f<T, RequestBody> f33312c;

        public C15279c(Method method, int i, AbstractC15246f<T, RequestBody> fVar) {
            this.f33310a = method;
            this.f33311b = i;
            this.f33312c = fVar;
        }

        @Override // p655o.AbstractC15276n
        /* renamed from: a */
        public void mo128a(C15295p pVar, @Nullable T t) {
            if (t != null) {
                try {
                    pVar.m110a(this.f33312c.convert(t));
                } catch (IOException e) {
                    Method method = this.f33310a;
                    int i = this.f33311b;
                    throw C15306w.m62a(method, e, i, "Unable to convert " + t + " to RequestBody", new Object[0]);
                }
            } else {
                throw C15306w.m64a(this.f33310a, this.f33311b, "Body parameter value must not be null.", new Object[0]);
            }
        }
    }

    /* renamed from: o.n$d */
    /* loaded from: classes3-dex2jar.jar:o/n$d.class */
    public static final class C15280d<T> extends AbstractC15276n<T> {

        /* renamed from: a */
        public final String f33313a;

        /* renamed from: b */
        public final AbstractC15246f<T, String> f33314b;

        /* renamed from: c */
        public final boolean f33315c;

        public C15280d(String str, AbstractC15246f<T, String> fVar, boolean z) {
            C15306w.m66a(str, "name == null");
            this.f33313a = str;
            this.f33314b = fVar;
            this.f33315c = z;
        }

        @Override // p655o.AbstractC15276n
        /* renamed from: a */
        public void mo128a(C15295p pVar, @Nullable T t) throws IOException {
            String convert;
            if (t != null && (convert = this.f33314b.convert(t)) != null) {
                pVar.m115a(this.f33313a, convert, this.f33315c);
            }
        }
    }

    /* renamed from: o.n$e */
    /* loaded from: classes3-dex2jar.jar:o/n$e.class */
    public static final class C15281e<T> extends AbstractC15276n<Map<String, T>> {

        /* renamed from: a */
        public final Method f33316a;

        /* renamed from: b */
        public final int f33317b;

        /* renamed from: c */
        public final AbstractC15246f<T, String> f33318c;

        /* renamed from: d */
        public final boolean f33319d;

        public C15281e(Method method, int i, AbstractC15246f<T, String> fVar, boolean z) {
            this.f33316a = method;
            this.f33317b = i;
            this.f33318c = fVar;
            this.f33319d = z;
        }

        @Override // p655o.AbstractC15276n
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo128a(C15295p pVar, @Nullable Object obj) throws IOException {
            m132a(pVar, (Map) ((Map) obj));
        }

        /* renamed from: a */
        public void m132a(C15295p pVar, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            String convert = this.f33318c.convert(value);
                            if (convert != null) {
                                pVar.m115a(key, convert, this.f33319d);
                            } else {
                                Method method = this.f33316a;
                                int i = this.f33317b;
                                throw C15306w.m64a(method, i, "Field map value '" + value + "' converted to null by " + this.f33318c.getClass().getName() + " for key '" + key + "'.", new Object[0]);
                            }
                        } else {
                            Method method2 = this.f33316a;
                            int i2 = this.f33317b;
                            throw C15306w.m64a(method2, i2, "Field map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw C15306w.m64a(this.f33316a, this.f33317b, "Field map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw C15306w.m64a(this.f33316a, this.f33317b, "Field map was null.", new Object[0]);
        }
    }

    /* renamed from: o.n$f */
    /* loaded from: classes3-dex2jar.jar:o/n$f.class */
    public static final class C15282f<T> extends AbstractC15276n<T> {

        /* renamed from: a */
        public final String f33320a;

        /* renamed from: b */
        public final AbstractC15246f<T, String> f33321b;

        public C15282f(String str, AbstractC15246f<T, String> fVar) {
            C15306w.m66a(str, "name == null");
            this.f33320a = str;
            this.f33321b = fVar;
        }

        @Override // p655o.AbstractC15276n
        /* renamed from: a */
        public void mo128a(C15295p pVar, @Nullable T t) throws IOException {
            String convert;
            if (t != null && (convert = this.f33321b.convert(t)) != null) {
                pVar.m116a(this.f33320a, convert);
            }
        }
    }

    /* renamed from: o.n$g */
    /* loaded from: classes3-dex2jar.jar:o/n$g.class */
    public static final class C15283g<T> extends AbstractC15276n<T> {

        /* renamed from: a */
        public final Method f33322a;

        /* renamed from: b */
        public final int f33323b;

        /* renamed from: c */
        public final Headers f33324c;

        /* renamed from: d */
        public final AbstractC15246f<T, RequestBody> f33325d;

        public C15283g(Method method, int i, Headers headers, AbstractC15246f<T, RequestBody> fVar) {
            this.f33322a = method;
            this.f33323b = i;
            this.f33324c = headers;
            this.f33325d = fVar;
        }

        @Override // p655o.AbstractC15276n
        /* renamed from: a */
        public void mo128a(C15295p pVar, @Nullable T t) {
            if (t != null) {
                try {
                    pVar.m112a(this.f33324c, this.f33325d.convert(t));
                } catch (IOException e) {
                    Method method = this.f33322a;
                    int i = this.f33323b;
                    throw C15306w.m64a(method, i, "Unable to convert " + t + " to RequestBody", e);
                }
            }
        }
    }

    /* renamed from: o.n$h */
    /* loaded from: classes3-dex2jar.jar:o/n$h.class */
    public static final class C15284h<T> extends AbstractC15276n<Map<String, T>> {

        /* renamed from: a */
        public final Method f33326a;

        /* renamed from: b */
        public final int f33327b;

        /* renamed from: c */
        public final AbstractC15246f<T, RequestBody> f33328c;

        /* renamed from: d */
        public final String f33329d;

        public C15284h(Method method, int i, AbstractC15246f<T, RequestBody> fVar, String str) {
            this.f33326a = method;
            this.f33327b = i;
            this.f33328c = fVar;
            this.f33329d = str;
        }

        @Override // p655o.AbstractC15276n
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo128a(C15295p pVar, @Nullable Object obj) throws IOException {
            m131a(pVar, (Map) ((Map) obj));
        }

        /* renamed from: a */
        public void m131a(C15295p pVar, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            pVar.m112a(Headers.m41of("Content-Disposition", "form-data; name=\"" + key + "\"", "Content-Transfer-Encoding", this.f33329d), this.f33328c.convert(value));
                        } else {
                            Method method = this.f33326a;
                            int i = this.f33327b;
                            throw C15306w.m64a(method, i, "Part map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw C15306w.m64a(this.f33326a, this.f33327b, "Part map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw C15306w.m64a(this.f33326a, this.f33327b, "Part map was null.", new Object[0]);
        }
    }

    /* renamed from: o.n$i */
    /* loaded from: classes3-dex2jar.jar:o/n$i.class */
    public static final class C15285i<T> extends AbstractC15276n<T> {

        /* renamed from: a */
        public final Method f33330a;

        /* renamed from: b */
        public final int f33331b;

        /* renamed from: c */
        public final String f33332c;

        /* renamed from: d */
        public final AbstractC15246f<T, String> f33333d;

        /* renamed from: e */
        public final boolean f33334e;

        public C15285i(Method method, int i, String str, AbstractC15246f<T, String> fVar, boolean z) {
            this.f33330a = method;
            this.f33331b = i;
            C15306w.m66a(str, "name == null");
            this.f33332c = str;
            this.f33333d = fVar;
            this.f33334e = z;
        }

        @Override // p655o.AbstractC15276n
        /* renamed from: a */
        public void mo128a(C15295p pVar, @Nullable T t) throws IOException {
            if (t != null) {
                pVar.m109b(this.f33332c, this.f33333d.convert(t), this.f33334e);
                return;
            }
            Method method = this.f33330a;
            int i = this.f33331b;
            throw C15306w.m64a(method, i, "Path parameter \"" + this.f33332c + "\" value must not be null.", new Object[0]);
        }
    }

    /* renamed from: o.n$j */
    /* loaded from: classes3-dex2jar.jar:o/n$j.class */
    public static final class C15286j<T> extends AbstractC15276n<T> {

        /* renamed from: a */
        public final String f33335a;

        /* renamed from: b */
        public final AbstractC15246f<T, String> f33336b;

        /* renamed from: c */
        public final boolean f33337c;

        public C15286j(String str, AbstractC15246f<T, String> fVar, boolean z) {
            C15306w.m66a(str, "name == null");
            this.f33335a = str;
            this.f33336b = fVar;
            this.f33337c = z;
        }

        @Override // p655o.AbstractC15276n
        /* renamed from: a */
        public void mo128a(C15295p pVar, @Nullable T t) throws IOException {
            String convert;
            if (t != null && (convert = this.f33336b.convert(t)) != null) {
                pVar.m108c(this.f33335a, convert, this.f33337c);
            }
        }
    }

    /* renamed from: o.n$k */
    /* loaded from: classes3-dex2jar.jar:o/n$k.class */
    public static final class C15287k<T> extends AbstractC15276n<Map<String, T>> {

        /* renamed from: a */
        public final Method f33338a;

        /* renamed from: b */
        public final int f33339b;

        /* renamed from: c */
        public final AbstractC15246f<T, String> f33340c;

        /* renamed from: d */
        public final boolean f33341d;

        public C15287k(Method method, int i, AbstractC15246f<T, String> fVar, boolean z) {
            this.f33338a = method;
            this.f33339b = i;
            this.f33340c = fVar;
            this.f33341d = z;
        }

        @Override // p655o.AbstractC15276n
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo128a(C15295p pVar, @Nullable Object obj) throws IOException {
            m130a(pVar, (Map) ((Map) obj));
        }

        /* renamed from: a */
        public void m130a(C15295p pVar, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            String convert = this.f33340c.convert(value);
                            if (convert != null) {
                                pVar.m108c(key, convert, this.f33341d);
                            } else {
                                Method method = this.f33338a;
                                int i = this.f33339b;
                                throw C15306w.m64a(method, i, "Query map value '" + value + "' converted to null by " + this.f33340c.getClass().getName() + " for key '" + key + "'.", new Object[0]);
                            }
                        } else {
                            Method method2 = this.f33338a;
                            int i2 = this.f33339b;
                            throw C15306w.m64a(method2, i2, "Query map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw C15306w.m64a(this.f33338a, this.f33339b, "Query map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw C15306w.m64a(this.f33338a, this.f33339b, "Query map was null", new Object[0]);
        }
    }

    /* renamed from: o.n$l */
    /* loaded from: classes3-dex2jar.jar:o/n$l.class */
    public static final class C15288l<T> extends AbstractC15276n<T> {

        /* renamed from: a */
        public final AbstractC15246f<T, String> f33342a;

        /* renamed from: b */
        public final boolean f33343b;

        public C15288l(AbstractC15246f<T, String> fVar, boolean z) {
            this.f33342a = fVar;
            this.f33343b = z;
        }

        @Override // p655o.AbstractC15276n
        /* renamed from: a */
        public void mo128a(C15295p pVar, @Nullable T t) throws IOException {
            if (t != null) {
                pVar.m108c(this.f33342a.convert(t), null, this.f33343b);
            }
        }
    }

    /* renamed from: o.n$m */
    /* loaded from: classes3-dex2jar.jar:o/n$m.class */
    public static final class C15289m extends AbstractC15276n<MultipartBody.Part> {

        /* renamed from: a */
        public static final C15289m f33344a = new C15289m();

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo128a(C15295p pVar, @Nullable MultipartBody.Part part) {
            if (part != null) {
                pVar.m111a(part);
            }
        }
    }

    /* renamed from: o.n$n */
    /* loaded from: classes3-dex2jar.jar:o/n$n.class */
    public static final class C15290n extends AbstractC15276n<Object> {

        /* renamed from: a */
        public final Method f33345a;

        /* renamed from: b */
        public final int f33346b;

        public C15290n(Method method, int i) {
            this.f33345a = method;
            this.f33346b = i;
        }

        @Override // p655o.AbstractC15276n
        /* renamed from: a */
        public void mo128a(C15295p pVar, @Nullable Object obj) {
            if (obj != null) {
                pVar.m117a(obj);
                return;
            }
            throw C15306w.m64a(this.f33345a, this.f33346b, "@Url parameter is null.", new Object[0]);
        }
    }

    /* renamed from: a */
    public final AbstractC15276n<Object> m135a() {
        return new C15278b();
    }

    /* renamed from: a */
    public abstract void mo128a(C15295p pVar, @Nullable T t) throws IOException;

    /* renamed from: b */
    public final AbstractC15276n<Iterable<T>> m134b() {
        return new C15277a();
    }
}
