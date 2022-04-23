package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import kotlin.v;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.b.w;
import retrofit2.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:retrofit2/a.class */
public final class a extends e.a {

    /* renamed from: a  reason: collision with root package name */
    private boolean f39419a = true;

    /* renamed from: retrofit2.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:retrofit2/a$a.class */
    static final class C0756a implements retrofit2.e<ResponseBody, ResponseBody> {

        /* renamed from: a  reason: collision with root package name */
        static final C0756a f39420a = new C0756a();

        C0756a() {
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        private static ResponseBody a2(ResponseBody responseBody) throws IOException {
            try {
                return s.a(responseBody);
            } finally {
                responseBody.close();
            }
        }

        @Override // retrofit2.e
        public final /* bridge */ /* synthetic */ ResponseBody a(ResponseBody responseBody) throws IOException {
            return a2(responseBody);
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/a$b.class */
    static final class b implements retrofit2.e<RequestBody, RequestBody> {

        /* renamed from: a  reason: collision with root package name */
        static final b f39428a = new b();

        b() {
        }

        @Override // retrofit2.e
        public final /* bridge */ /* synthetic */ RequestBody a(RequestBody requestBody) throws IOException {
            return requestBody;
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/a$c.class */
    static final class c implements retrofit2.e<ResponseBody, ResponseBody> {

        /* renamed from: a  reason: collision with root package name */
        static final c f39429a = new c();

        c() {
        }

        @Override // retrofit2.e
        public final /* bridge */ /* synthetic */ ResponseBody a(ResponseBody responseBody) throws IOException {
            return responseBody;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:retrofit2/a$d.class */
    public static final class d implements retrofit2.e<Object, String> {

        /* renamed from: a  reason: collision with root package name */
        static final d f39430a = new d();

        d() {
        }

        @Override // retrofit2.e
        public final /* synthetic */ String a(Object obj) throws IOException {
            return obj.toString();
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/a$e.class */
    static final class e implements retrofit2.e<ResponseBody, v> {

        /* renamed from: a  reason: collision with root package name */
        static final e f39431a = new e();

        e() {
        }

        @Override // retrofit2.e
        public final /* synthetic */ v a(ResponseBody responseBody) throws IOException {
            responseBody.close();
            return v.f38654a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/a$f.class */
    static final class f implements retrofit2.e<ResponseBody, Void> {

        /* renamed from: a  reason: collision with root package name */
        static final f f39432a = new f();

        f() {
        }

        @Override // retrofit2.e
        public final /* synthetic */ Void a(ResponseBody responseBody) throws IOException {
            responseBody.close();
            return null;
        }
    }

    @Override // retrofit2.e.a
    public final retrofit2.e<ResponseBody, ?> a(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (type == ResponseBody.class) {
            return s.a(annotationArr, w.class) ? c.f39429a : C0756a.f39420a;
        }
        if (type == Void.class) {
            return f.f39432a;
        }
        if (!this.f39419a || type != v.class) {
            return null;
        }
        try {
            return e.f39431a;
        } catch (NoClassDefFoundError e2) {
            this.f39419a = false;
            return null;
        }
    }

    @Override // retrofit2.e.a
    public final retrofit2.e<?, RequestBody> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        if (RequestBody.class.isAssignableFrom(s.a(type))) {
            return b.f39428a;
        }
        return null;
    }
}
