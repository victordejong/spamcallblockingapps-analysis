package p655o;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import okhttp3.Call;
import okhttp3.Response;
import okhttp3.ResponseBody;
import p626l.p634w.AbstractC15044d;
import p655o.C15306w;
/* renamed from: o.i */
/* loaded from: classes3-dex2jar.jar:o/i.class */
public abstract class AbstractC15255i<ResponseT, ReturnT> extends AbstractC15303t<ReturnT> {

    /* renamed from: a */
    public final C15297q f33270a;

    /* renamed from: b */
    public final Call.Factory f33271b;

    /* renamed from: c */
    public final AbstractC15246f<ResponseBody, ResponseT> f33272c;

    /* renamed from: o.i$a */
    /* loaded from: classes3-dex2jar.jar:o/i$a.class */
    public static final class C15256a<ResponseT, ReturnT> extends AbstractC15255i<ResponseT, ReturnT> {

        /* renamed from: d */
        public final AbstractC15236c<ResponseT, ReturnT> f33273d;

        public C15256a(C15297q qVar, Call.Factory factory, AbstractC15246f<ResponseBody, ResponseT> fVar, AbstractC15236c<ResponseT, ReturnT> cVar) {
            super(qVar, factory, fVar);
            this.f33273d = cVar;
        }

        @Override // p655o.AbstractC15255i
        /* renamed from: a */
        public ReturnT mo147a(AbstractC15235b<ResponseT> bVar, Object[] objArr) {
            return this.f33273d.mo152a(bVar);
        }
    }

    /* renamed from: o.i$b */
    /* loaded from: classes3-dex2jar.jar:o/i$b.class */
    public static final class C15257b<ResponseT> extends AbstractC15255i<ResponseT, Object> {

        /* renamed from: d */
        public final AbstractC15236c<ResponseT, AbstractC15235b<ResponseT>> f33274d;

        /* renamed from: e */
        public final boolean f33275e;

        public C15257b(C15297q qVar, Call.Factory factory, AbstractC15246f<ResponseBody, ResponseT> fVar, AbstractC15236c<ResponseT, AbstractC15235b<ResponseT>> cVar, boolean z) {
            super(qVar, factory, fVar);
            this.f33274d = cVar;
            this.f33275e = z;
        }

        @Override // p655o.AbstractC15255i
        /* renamed from: a */
        public Object mo147a(AbstractC15235b<ResponseT> bVar, Object[] objArr) {
            AbstractC15235b<ResponseT> a = this.f33274d.mo152a(bVar);
            AbstractC15044d dVar = (AbstractC15044d) objArr[objArr.length - 1];
            try {
                return this.f33275e ? C15260k.m143b(a, dVar) : C15260k.m144a(a, dVar);
            } catch (Exception e) {
                return C15260k.m145a(e, dVar);
            }
        }
    }

    /* renamed from: o.i$c */
    /* loaded from: classes3-dex2jar.jar:o/i$c.class */
    public static final class C15258c<ResponseT> extends AbstractC15255i<ResponseT, Object> {

        /* renamed from: d */
        public final AbstractC15236c<ResponseT, AbstractC15235b<ResponseT>> f33276d;

        public C15258c(C15297q qVar, Call.Factory factory, AbstractC15246f<ResponseBody, ResponseT> fVar, AbstractC15236c<ResponseT, AbstractC15235b<ResponseT>> cVar) {
            super(qVar, factory, fVar);
            this.f33276d = cVar;
        }

        @Override // p655o.AbstractC15255i
        /* renamed from: a */
        public Object mo147a(AbstractC15235b<ResponseT> bVar, Object[] objArr) {
            AbstractC15235b<ResponseT> a = this.f33276d.mo152a(bVar);
            AbstractC15044d dVar = (AbstractC15044d) objArr[objArr.length - 1];
            try {
                return C15260k.m142c(a, dVar);
            } catch (Exception e) {
                return C15260k.m145a(e, dVar);
            }
        }
    }

    public AbstractC15255i(C15297q qVar, Call.Factory factory, AbstractC15246f<ResponseBody, ResponseT> fVar) {
        this.f33270a = qVar;
        this.f33271b = factory;
        this.f33272c = fVar;
    }

    /* renamed from: a */
    public static <ResponseT, ReturnT> AbstractC15236c<ResponseT, ReturnT> m149a(C15300s sVar, Method method, Type type, Annotation[] annotationArr) {
        try {
            return (AbstractC15236c<ResponseT, ReturnT>) sVar.m85a(type, annotationArr);
        } catch (RuntimeException e) {
            throw C15306w.m61a(method, e, "Unable to create call adapter for %s", type);
        }
    }

    /* renamed from: a */
    public static <ResponseT> AbstractC15246f<ResponseBody, ResponseT> m150a(C15300s sVar, Method method, Type type) {
        try {
            return sVar.m79b(type, method.getAnnotations());
        } catch (RuntimeException e) {
            throw C15306w.m61a(method, e, "Unable to create converter for %s", type);
        }
    }

    /* renamed from: a */
    public static <ResponseT, ReturnT> AbstractC15255i<ResponseT, ReturnT> m148a(C15300s sVar, Method method, C15297q qVar) {
        boolean z;
        Type type;
        boolean z2 = qVar.f33374k;
        Annotation[] annotations = method.getAnnotations();
        if (z2) {
            Type[] genericParameterTypes = method.getGenericParameterTypes();
            Type a = C15306w.m68a(0, (ParameterizedType) genericParameterTypes[genericParameterTypes.length - 1]);
            if (C15306w.m50b(a) != C15299r.class || !(a instanceof ParameterizedType)) {
                z = false;
            } else {
                a = C15306w.m51b(0, (ParameterizedType) a);
                z = true;
            }
            type = new C15306w.C15308b(null, AbstractC15235b.class, a);
            annotations = C15305v.m69a(annotations);
        } else {
            type = method.getGenericReturnType();
            z = false;
        }
        AbstractC15236c a2 = m149a(sVar, method, type, annotations);
        Type a3 = a2.mo153a();
        if (a3 == Response.class) {
            throw C15306w.m63a(method, "'" + C15306w.m50b(a3).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
        } else if (a3 == C15299r.class) {
            throw C15306w.m63a(method, "Response must include generic type (e.g., Response<String>)", new Object[0]);
        } else if (!qVar.f33366c.equals("HEAD") || Void.class.equals(a3)) {
            AbstractC15246f a4 = m150a(sVar, method, a3);
            Call.Factory factory = sVar.f33404b;
            return !z2 ? new C15256a(qVar, factory, a4, a2) : z ? new C15258c(qVar, factory, a4, a2) : new C15257b(qVar, factory, a4, a2, false);
        } else {
            throw C15306w.m63a(method, "HEAD method must use Void as response type.", new Object[0]);
        }
    }

    @Nullable
    /* renamed from: a */
    public abstract ReturnT mo147a(AbstractC15235b<ResponseT> bVar, Object[] objArr);

    @Override // p655o.AbstractC15303t
    @Nullable
    /* renamed from: a */
    public final ReturnT mo70a(Object[] objArr) {
        return mo147a(new C15269l(this.f33270a, objArr, this.f33271b, this.f33272c), objArr);
    }
}
