package retrofit2.a.a;

import c.f;
import com.google.api.client.json.Json;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.e;
/* loaded from: classes5-dex2jar.jar:retrofit2/a/a/b.class */
final class b<T> implements e<T, RequestBody> {

    /* renamed from: a  reason: collision with root package name */
    private static final MediaType f39422a = MediaType.parse(Json.MEDIA_TYPE);

    /* renamed from: b  reason: collision with root package name */
    private static final Charset f39423b = Charset.forName("UTF-8");

    /* renamed from: c  reason: collision with root package name */
    private final f f39424c;

    /* renamed from: d  reason: collision with root package name */
    private final j<T> f39425d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(f fVar, j<T> jVar) {
        this.f39424c = fVar;
        this.f39425d = jVar;
    }

    @Override // retrofit2.e
    public final /* synthetic */ RequestBody a(Object obj) throws IOException {
        c.f fVar = new c.f();
        JsonWriter a2 = this.f39424c.a((Writer) new OutputStreamWriter(new f.c(), f39423b));
        this.f39425d.write(a2, obj);
        a2.close();
        return RequestBody.create(f39422a, fVar.q());
    }
}
