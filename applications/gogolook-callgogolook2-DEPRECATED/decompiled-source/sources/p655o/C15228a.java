package p655o;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import p626l.C14989s;
import p655o.AbstractC15246f;
import p655o.p658y.AbstractC15333u;
/* renamed from: o.a */
/* loaded from: classes3-dex2jar.jar:o/a.class */
public final class C15228a extends AbstractC15246f.AbstractC15247a {

    /* renamed from: a */
    public boolean f33245a = true;

    /* renamed from: o.a$a */
    /* loaded from: classes3-dex2jar.jar:o/a$a.class */
    public static final class C15229a implements AbstractC15246f<ResponseBody, ResponseBody> {

        /* renamed from: a */
        public static final C15229a f33246a = new C15229a();

        /* renamed from: a */
        public ResponseBody convert(ResponseBody responseBody) throws IOException {
            try {
                return C15306w.m54a(responseBody);
            } finally {
                responseBody.close();
            }
        }
    }

    /* renamed from: o.a$b */
    /* loaded from: classes3-dex2jar.jar:o/a$b.class */
    public static final class C15230b implements AbstractC15246f<RequestBody, RequestBody> {

        /* renamed from: a */
        public static final C15230b f33247a = new C15230b();

        /* renamed from: a */
        public RequestBody m163a(RequestBody requestBody) {
            return requestBody;
        }

        @Override // p655o.AbstractC15246f
        public /* bridge */ /* synthetic */ RequestBody convert(RequestBody requestBody) throws IOException {
            RequestBody requestBody2 = requestBody;
            m163a(requestBody2);
            return requestBody2;
        }
    }

    /* renamed from: o.a$c */
    /* loaded from: classes3-dex2jar.jar:o/a$c.class */
    public static final class C15231c implements AbstractC15246f<ResponseBody, ResponseBody> {

        /* renamed from: a */
        public static final C15231c f33248a = new C15231c();

        /* renamed from: a */
        public ResponseBody m162a(ResponseBody responseBody) {
            return responseBody;
        }

        @Override // p655o.AbstractC15246f
        public /* bridge */ /* synthetic */ ResponseBody convert(ResponseBody responseBody) throws IOException {
            ResponseBody responseBody2 = responseBody;
            m162a(responseBody2);
            return responseBody2;
        }
    }

    /* renamed from: o.a$d */
    /* loaded from: classes3-dex2jar.jar:o/a$d.class */
    public static final class C15232d implements AbstractC15246f<Object, String> {

        /* renamed from: a */
        public static final C15232d f33249a = new C15232d();

        @Override // p655o.AbstractC15246f
        public String convert(Object obj) {
            return obj.toString();
        }
    }

    /* renamed from: o.a$e */
    /* loaded from: classes3-dex2jar.jar:o/a$e.class */
    public static final class C15233e implements AbstractC15246f<ResponseBody, C14989s> {

        /* renamed from: a */
        public static final C15233e f33250a = new C15233e();

        /* renamed from: a */
        public C14989s convert(ResponseBody responseBody) {
            responseBody.close();
            return C14989s.f33022a;
        }
    }

    /* renamed from: o.a$f */
    /* loaded from: classes3-dex2jar.jar:o/a$f.class */
    public static final class C15234f implements AbstractC15246f<ResponseBody, Void> {

        /* renamed from: a */
        public static final C15234f f33251a = new C15234f();

        /* renamed from: a */
        public Void convert(ResponseBody responseBody) {
            responseBody.close();
            return null;
        }
    }

    @Override // p655o.AbstractC15246f.AbstractC15247a
    @Nullable
    /* renamed from: a */
    public AbstractC15246f<ResponseBody, ?> mo44a(Type type, Annotation[] annotationArr, C15300s sVar) {
        if (type == ResponseBody.class) {
            return C15306w.m52a(annotationArr, (Class<? extends Annotation>) AbstractC15333u.class) ? C15231c.f33248a : C15229a.f33246a;
        } else if (type == Void.class) {
            return C15234f.f33251a;
        } else {
            if (!this.f33245a || type != C14989s.class) {
                return null;
            }
            try {
                return C15233e.f33250a;
            } catch (NoClassDefFoundError e) {
                this.f33245a = false;
                return null;
            }
        }
    }

    @Override // p655o.AbstractC15246f.AbstractC15247a
    @Nullable
    /* renamed from: a */
    public AbstractC15246f<?, RequestBody> mo43a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, C15300s sVar) {
        if (RequestBody.class.isAssignableFrom(C15306w.m50b(type))) {
            return C15230b.f33247a;
        }
        return null;
    }
}
