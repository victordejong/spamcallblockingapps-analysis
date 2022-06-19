package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import kotlin.C20128v;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.AbstractC21074e;
import retrofit2.p606b.AbstractC21064w;
/* renamed from: retrofit2.a */
/* loaded from: classes5-dex2jar.jar:retrofit2/a.class */
public final class C21030a extends AbstractC21074e.AbstractC21075a {

    /* renamed from: a */
    private boolean f67659a = true;

    /* renamed from: retrofit2.a$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/a$a.class */
    static final class C21031a implements AbstractC21074e<ResponseBody, ResponseBody> {

        /* renamed from: a */
        static final C21031a f67660a = new C21031a();

        C21031a() {
        }

        /* renamed from: a */
        private static ResponseBody m95a(ResponseBody responseBody) throws IOException {
            try {
                return C21129s.m5a(responseBody);
            } finally {
                responseBody.close();
            }
        }

        @Override // retrofit2.AbstractC21074e
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ ResponseBody mo44a(ResponseBody responseBody) throws IOException {
            return m95a(responseBody);
        }
    }

    /* renamed from: retrofit2.a$b */
    /* loaded from: classes5-dex2jar.jar:retrofit2/a$b.class */
    static final class C21032b implements AbstractC21074e<RequestBody, RequestBody> {

        /* renamed from: a */
        static final C21032b f67661a = new C21032b();

        C21032b() {
        }

        @Override // retrofit2.AbstractC21074e
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ RequestBody mo44a(RequestBody requestBody) throws IOException {
            return requestBody;
        }
    }

    /* renamed from: retrofit2.a$c */
    /* loaded from: classes5-dex2jar.jar:retrofit2/a$c.class */
    static final class C21033c implements AbstractC21074e<ResponseBody, ResponseBody> {

        /* renamed from: a */
        static final C21033c f67662a = new C21033c();

        C21033c() {
        }

        @Override // retrofit2.AbstractC21074e
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ ResponseBody mo44a(ResponseBody responseBody) throws IOException {
            return responseBody;
        }
    }

    /* renamed from: retrofit2.a$d */
    /* loaded from: classes5-dex2jar.jar:retrofit2/a$d.class */
    public static final class C21034d implements AbstractC21074e<Object, String> {

        /* renamed from: a */
        static final C21034d f67663a = new C21034d();

        C21034d() {
        }

        @Override // retrofit2.AbstractC21074e
        /* renamed from: a */
        public final /* synthetic */ String mo44a(Object obj) throws IOException {
            return obj.toString();
        }
    }

    /* renamed from: retrofit2.a$e */
    /* loaded from: classes5-dex2jar.jar:retrofit2/a$e.class */
    static final class C21035e implements AbstractC21074e<ResponseBody, C20128v> {

        /* renamed from: a */
        static final C21035e f67664a = new C21035e();

        C21035e() {
        }

        @Override // retrofit2.AbstractC21074e
        /* renamed from: a */
        public final /* synthetic */ C20128v mo44a(ResponseBody responseBody) throws IOException {
            responseBody.close();
            return C20128v.f66529a;
        }
    }

    /* renamed from: retrofit2.a$f */
    /* loaded from: classes5-dex2jar.jar:retrofit2/a$f.class */
    static final class C21036f implements AbstractC21074e<ResponseBody, Void> {

        /* renamed from: a */
        static final C21036f f67665a = new C21036f();

        C21036f() {
        }

        @Override // retrofit2.AbstractC21074e
        /* renamed from: a */
        public final /* synthetic */ Void mo44a(ResponseBody responseBody) throws IOException {
            responseBody.close();
            return null;
        }
    }

    @Override // retrofit2.AbstractC21074e.AbstractC21075a
    /* renamed from: a */
    public final AbstractC21074e<ResponseBody, ?> mo45a(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (type == ResponseBody.class) {
            return C21129s.m4a(annotationArr, AbstractC21064w.class) ? C21033c.f67662a : C21031a.f67660a;
        } else if (type == Void.class) {
            return C21036f.f67665a;
        } else {
            if (!this.f67659a || type != C20128v.class) {
                return null;
            }
            try {
                return C21035e.f67664a;
            } catch (NoClassDefFoundError e) {
                this.f67659a = false;
                return null;
            }
        }
    }

    @Override // retrofit2.AbstractC21074e.AbstractC21075a
    /* renamed from: a */
    public final AbstractC21074e<?, RequestBody> mo68a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        if (RequestBody.class.isAssignableFrom(C21129s.m9a(type))) {
            return C21032b.f67661a;
        }
        return null;
    }
}
