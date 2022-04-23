package retrofit2.a.a;

import com.google.gson.f;
import com.google.gson.j;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.e;
/* loaded from: classes5-dex2jar.jar:retrofit2/a/a/c.class */
final class c<T> implements e<ResponseBody, T> {

    /* renamed from: a  reason: collision with root package name */
    private final f f39426a;

    /* renamed from: b  reason: collision with root package name */
    private final j<T> f39427b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(f fVar, j<T> jVar) {
        this.f39426a = fVar;
        this.f39427b = jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public T a(ResponseBody responseBody) throws IOException {
        try {
            return this.f39427b.read(this.f39426a.a(responseBody.charStream()));
        } finally {
            responseBody.close();
        }
    }
}
