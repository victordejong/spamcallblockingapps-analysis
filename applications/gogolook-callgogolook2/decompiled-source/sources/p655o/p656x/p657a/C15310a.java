package p655o.p656x.p657a;

import com.google.gson.Gson;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import p081h.p203i.p384e.p390x.C10173a;
import p655o.AbstractC15246f;
import p655o.C15300s;
/* renamed from: o.x.a.a */
/* loaded from: classes3-dex2jar.jar:o/x/a/a.class */
public final class C15310a extends AbstractC15246f.AbstractC15247a {

    /* renamed from: a */
    public final Gson f33429a;

    public C15310a(Gson gson) {
        this.f33429a = gson;
    }

    /* renamed from: a */
    public static C15310a m46a() {
        return m45a(new Gson());
    }

    /* renamed from: a */
    public static C15310a m45a(Gson gson) {
        if (gson != null) {
            return new C15310a(gson);
        }
        throw new NullPointerException("gson == null");
    }

    @Override // p655o.AbstractC15246f.AbstractC15247a
    /* renamed from: a */
    public AbstractC15246f<ResponseBody, ?> mo44a(Type type, Annotation[] annotationArr, C15300s sVar) {
        return new C15312c(this.f33429a, this.f33429a.m30995a((C10173a) C10173a.m13278a(type)));
    }

    @Override // p655o.AbstractC15246f.AbstractC15247a
    /* renamed from: a */
    public AbstractC15246f<?, RequestBody> mo43a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, C15300s sVar) {
        return new C15311b(this.f33429a, this.f33429a.m30995a((C10173a) C10173a.m13278a(type)));
    }
}
