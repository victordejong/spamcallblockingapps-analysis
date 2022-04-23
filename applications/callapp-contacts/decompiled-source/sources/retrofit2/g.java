package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Objects;
import kotlin.c.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.v;
import kotlinx.coroutines.o;
import okhttp3.Call;
import okhttp3.ResponseBody;
import retrofit2.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:retrofit2/g.class */
public abstract class g<ResponseT, ReturnT> extends p<ReturnT> {

    /* renamed from: a  reason: collision with root package name */
    private final o f39449a;

    /* renamed from: b  reason: collision with root package name */
    private final Call.Factory f39450b;

    /* renamed from: c  reason: collision with root package name */
    private final e<ResponseBody, ResponseT> f39451c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:retrofit2/g$a.class */
    public static final class a<ResponseT, ReturnT> extends g<ResponseT, ReturnT> {

        /* renamed from: a  reason: collision with root package name */
        private final retrofit2.b<ResponseT, ReturnT> f39452a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(o oVar, Call.Factory factory, e<ResponseBody, ResponseT> eVar, retrofit2.b<ResponseT, ReturnT> bVar) {
            super(oVar, factory, eVar);
            this.f39452a = bVar;
        }

        @Override // retrofit2.g
        protected final ReturnT a(Call<ResponseT> call, Object[] objArr) {
            return this.f39452a.a(call);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:retrofit2/g$b.class */
    public static final class b<ResponseT> extends g<ResponseT, Object> {

        /* renamed from: a  reason: collision with root package name */
        private final retrofit2.b<ResponseT, Call<ResponseT>> f39453a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f39454b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(o oVar, Call.Factory factory, e<ResponseBody, ResponseT> eVar, retrofit2.b<ResponseT, Call<ResponseT>> bVar, boolean z) {
            super(oVar, factory, eVar);
            this.f39453a = bVar;
            this.f39454b = z;
        }

        @Override // retrofit2.g
        protected final Object a(Call<ResponseT> call, Object[] objArr) {
            Call<ResponseT> a2 = this.f39453a.a(call);
            d frame = (d) objArr[objArr.length - 1];
            try {
                if (this.f39454b) {
                    o oVar = new o(kotlin.c.a.b.a(frame), 1);
                    o oVar2 = oVar;
                    oVar2.a((Function1<? super Throwable, v>) new i.b(a2));
                    a2.a(new i.d(oVar2));
                    Object g = oVar.g();
                    if (g == kotlin.c.a.a.COROUTINE_SUSPENDED) {
                        p.d(frame, "frame");
                    }
                    return g;
                }
                o oVar3 = new o(kotlin.c.a.b.a(frame), 1);
                o oVar4 = oVar3;
                oVar4.a((Function1<? super Throwable, v>) new i.a(a2));
                a2.a(new i.c(oVar4));
                Object g2 = oVar3.g();
                if (g2 == kotlin.c.a.a.COROUTINE_SUSPENDED) {
                    p.d(frame, "frame");
                }
                return g2;
            } catch (Exception e) {
                return i.a(e, frame);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:retrofit2/g$c.class */
    public static final class c<ResponseT> extends g<ResponseT, Object> {

        /* renamed from: a  reason: collision with root package name */
        private final retrofit2.b<ResponseT, Call<ResponseT>> f39455a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(o oVar, Call.Factory factory, e<ResponseBody, ResponseT> eVar, retrofit2.b<ResponseT, Call<ResponseT>> bVar) {
            super(oVar, factory, eVar);
            this.f39455a = bVar;
        }

        @Override // retrofit2.g
        protected final Object a(Call<ResponseT> call, Object[] objArr) {
            Call<ResponseT> a2 = this.f39455a.a(call);
            d frame = (d) objArr[objArr.length - 1];
            try {
                o oVar = new o(kotlin.c.a.b.a(frame), 1);
                o oVar2 = oVar;
                oVar2.a((Function1<? super Throwable, v>) new i.e(a2));
                a2.a(new i.f(oVar2));
                Object g = oVar.g();
                if (g == kotlin.c.a.a.COROUTINE_SUSPENDED) {
                    p.d(frame, "frame");
                }
                return g;
            } catch (Exception e) {
                return i.a(e, frame);
            }
        }
    }

    g(o oVar, Call.Factory factory, e<ResponseBody, ResponseT> eVar) {
        this.f39449a = oVar;
        this.f39450b = factory;
        this.f39451c = eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <ResponseT, ReturnT> retrofit2.b<ResponseT, ReturnT> a(Retrofit retrofit, Method method, Type type, Annotation[] annotationArr) {
        try {
            Objects.requireNonNull(type, "returnType == null");
            Objects.requireNonNull(annotationArr, "annotations == null");
            int indexOf = retrofit.f39410d.indexOf(null) + 1;
            int size = retrofit.f39410d.size();
            for (int i = indexOf; i < size; i++) {
                retrofit2.b<ResponseT, ReturnT> bVar = (retrofit2.b<ResponseT, ReturnT>) retrofit.f39410d.get(i).a(type, annotationArr);
                if (bVar != null) {
                    return bVar;
                }
            }
            StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
            sb.append(type);
            sb.append(".\n");
            sb.append("  Tried:");
            int size2 = retrofit.f39410d.size();
            while (indexOf < size2) {
                sb.append("\n   * ");
                sb.append(retrofit.f39410d.get(indexOf).getClass().getName());
                indexOf++;
            }
            throw new IllegalArgumentException(sb.toString());
        } catch (RuntimeException e) {
            throw s.a(method, e, "Unable to create call adapter for %s", type);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <ResponseT> e<ResponseBody, ResponseT> a(Retrofit retrofit, Method method, Type type) {
        try {
            return retrofit.b(type, method.getAnnotations());
        } catch (RuntimeException e) {
            throw s.a(method, e, "Unable to create converter for %s", type);
        }
    }

    protected abstract ReturnT a(Call<ResponseT> call, Object[] objArr);

    @Override // retrofit2.p
    final ReturnT a(Object[] objArr) {
        return a(new j(this.f39449a, objArr, this.f39450b, this.f39451c), objArr);
    }
}
