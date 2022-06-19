package retrofit2.p604a.p605a;

import com.google.gson.C15965f;
import com.google.gson.p399a.C15950a;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Objects;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.AbstractC21074e;
import retrofit2.Retrofit;
/* renamed from: retrofit2.a.a.a */
/* loaded from: classes5-dex2jar.jar:retrofit2/a/a/a.class */
public final class C21037a extends AbstractC21074e.AbstractC21075a {

    /* renamed from: a */
    private final C15965f f67666a;

    private C21037a(C15965f c15965f) {
        this.f67666a = c15965f;
    }

    /* renamed from: a */
    public static C21037a m94a(C15965f c15965f) {
        Objects.requireNonNull(c15965f, "gson == null");
        return new C21037a(c15965f);
    }

    @Override // retrofit2.AbstractC21074e.AbstractC21075a
    /* renamed from: a */
    public final AbstractC21074e<ResponseBody, ?> mo45a(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new C21039c(this.f67666a, this.f67666a.m7977a((C15950a) C15950a.get(type)));
    }

    @Override // retrofit2.AbstractC21074e.AbstractC21075a
    /* renamed from: a */
    public final AbstractC21074e<?, RequestBody> mo68a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new C21038b(this.f67666a, this.f67666a.m7977a((C15950a) C15950a.get(type)));
    }
}
