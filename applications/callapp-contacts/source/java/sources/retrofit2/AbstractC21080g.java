package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Objects;
import kotlin.C20128v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.p522a.C18308b;
import kotlin.p521c.p522a.EnumC18307a;
import kotlinx.coroutines.C20309o;
import okhttp3.Call;
import okhttp3.ResponseBody;
import retrofit2.C21085i;
/* renamed from: retrofit2.g */
/* loaded from: classes5-dex2jar.jar:retrofit2/g.class */
public abstract class AbstractC21080g<ResponseT, ReturnT> extends AbstractC21126p<ReturnT> {

    /* renamed from: a */
    private final C21124o f67689a;

    /* renamed from: b */
    private final Call.Factory f67690b;

    /* renamed from: c */
    private final AbstractC21074e<ResponseBody, ResponseT> f67691c;

    /* renamed from: retrofit2.g$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/g$a.class */
    public static final class C21081a<ResponseT, ReturnT> extends AbstractC21080g<ResponseT, ReturnT> {

        /* renamed from: a */
        private final AbstractC21040b<ResponseT, ReturnT> f67692a;

        public C21081a(C21124o c21124o, Call.Factory factory, AbstractC21074e<ResponseBody, ResponseT> abstractC21074e, AbstractC21040b<ResponseT, ReturnT> abstractC21040b) {
            super(c21124o, factory, abstractC21074e);
            this.f67692a = abstractC21040b;
        }

        @Override // retrofit2.AbstractC21080g
        /* renamed from: a */
        protected final ReturnT mo60a(Call<ResponseT> call, Object[] objArr) {
            return this.f67692a.mo65a(call);
        }
    }

    /* renamed from: retrofit2.g$b */
    /* loaded from: classes5-dex2jar.jar:retrofit2/g$b.class */
    public static final class C21082b<ResponseT> extends AbstractC21080g<ResponseT, Object> {

        /* renamed from: a */
        private final AbstractC21040b<ResponseT, Call<ResponseT>> f67693a;

        /* renamed from: b */
        private final boolean f67694b;

        public C21082b(C21124o c21124o, Call.Factory factory, AbstractC21074e<ResponseBody, ResponseT> abstractC21074e, AbstractC21040b<ResponseT, Call<ResponseT>> abstractC21040b, boolean z) {
            super(c21124o, factory, abstractC21074e);
            this.f67693a = abstractC21040b;
            this.f67694b = z;
        }

        @Override // retrofit2.AbstractC21080g
        /* renamed from: a */
        protected final Object mo60a(Call<ResponseT> call, Object[] objArr) {
            Call<ResponseT> mo65a = this.f67693a.mo65a(call);
            AbstractC18332d frame = (AbstractC18332d) objArr[objArr.length - 1];
            try {
                if (this.f67694b) {
                    C20309o c20309o = new C20309o(C18308b.m4100a(frame), 1);
                    C20309o c20309o2 = c20309o;
                    c20309o2.mo794a((Function1<? super Throwable, C20128v>) new C21085i.C21087b(mo65a));
                    mo65a.mo54a(new C21085i.C21089d(c20309o2));
                    Object m778g = c20309o.m778g();
                    if (m778g == EnumC18307a.COROUTINE_SUSPENDED) {
                        C18524p.m3840d(frame, "frame");
                    }
                    return m778g;
                }
                C20309o c20309o3 = new C20309o(C18308b.m4100a(frame), 1);
                C20309o c20309o4 = c20309o3;
                c20309o4.mo794a((Function1<? super Throwable, C20128v>) new C21085i.C21086a(mo65a));
                mo65a.mo54a(new C21085i.C21088c(c20309o4));
                Object m778g2 = c20309o3.m778g();
                if (m778g2 == EnumC18307a.COROUTINE_SUSPENDED) {
                    C18524p.m3840d(frame, "frame");
                }
                return m778g2;
            } catch (Exception e) {
                return C21085i.m58a(e, frame);
            }
        }
    }

    /* renamed from: retrofit2.g$c */
    /* loaded from: classes5-dex2jar.jar:retrofit2/g$c.class */
    public static final class C21083c<ResponseT> extends AbstractC21080g<ResponseT, Object> {

        /* renamed from: a */
        private final AbstractC21040b<ResponseT, Call<ResponseT>> f67695a;

        public C21083c(C21124o c21124o, Call.Factory factory, AbstractC21074e<ResponseBody, ResponseT> abstractC21074e, AbstractC21040b<ResponseT, Call<ResponseT>> abstractC21040b) {
            super(c21124o, factory, abstractC21074e);
            this.f67695a = abstractC21040b;
        }

        @Override // retrofit2.AbstractC21080g
        /* renamed from: a */
        protected final Object mo60a(Call<ResponseT> call, Object[] objArr) {
            Call<ResponseT> mo65a = this.f67695a.mo65a(call);
            AbstractC18332d frame = (AbstractC18332d) objArr[objArr.length - 1];
            try {
                C20309o c20309o = new C20309o(C18308b.m4100a(frame), 1);
                C20309o c20309o2 = c20309o;
                c20309o2.mo794a((Function1<? super Throwable, C20128v>) new C21085i.C21090e(mo65a));
                mo65a.mo54a(new C21085i.C21091f(c20309o2));
                Object m778g = c20309o.m778g();
                if (m778g == EnumC18307a.COROUTINE_SUSPENDED) {
                    C18524p.m3840d(frame, "frame");
                }
                return m778g;
            } catch (Exception e) {
                return C21085i.m58a(e, frame);
            }
        }
    }

    AbstractC21080g(C21124o c21124o, Call.Factory factory, AbstractC21074e<ResponseBody, ResponseT> abstractC21074e) {
        this.f67689a = c21124o;
        this.f67690b = factory;
        this.f67691c = abstractC21074e;
    }

    /* renamed from: a */
    public static <ResponseT, ReturnT> AbstractC21040b<ResponseT, ReturnT> m61a(Retrofit retrofit, Method method, Type type, Annotation[] annotationArr) {
        try {
            Objects.requireNonNull(type, "returnType == null");
            Objects.requireNonNull(annotationArr, "annotations == null");
            int indexOf = retrofit.f67644d.indexOf(null) + 1;
            int size = retrofit.f67644d.size();
            for (int i = indexOf; i < size; i++) {
                AbstractC21040b<ResponseT, ReturnT> abstractC21040b = (AbstractC21040b<ResponseT, ReturnT>) retrofit.f67644d.get(i).mo67a(type, annotationArr);
                if (abstractC21040b != null) {
                    return abstractC21040b;
                }
            }
            StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
            sb.append(type);
            sb.append(".\n");
            sb.append("  Tried:");
            int size2 = retrofit.f67644d.size();
            while (indexOf < size2) {
                sb.append("\n   * ");
                sb.append(retrofit.f67644d.get(indexOf).getClass().getName());
                indexOf++;
            }
            throw new IllegalArgumentException(sb.toString());
        } catch (RuntimeException e) {
            throw C21129s.m11a(method, e, "Unable to create call adapter for %s", type);
        }
    }

    /* renamed from: a */
    public static <ResponseT> AbstractC21074e<ResponseBody, ResponseT> m62a(Retrofit retrofit, Method method, Type type) {
        try {
            return retrofit.m104b(type, method.getAnnotations());
        } catch (RuntimeException e) {
            throw C21129s.m11a(method, e, "Unable to create converter for %s", type);
        }
    }

    /* renamed from: a */
    protected abstract ReturnT mo60a(Call<ResponseT> call, Object[] objArr);

    @Override // retrofit2.AbstractC21126p
    /* renamed from: a */
    public final ReturnT mo18a(Object[] objArr) {
        return mo60a(new C21094j(this.f67689a, objArr, this.f67690b, this.f67691c), objArr);
    }
}
