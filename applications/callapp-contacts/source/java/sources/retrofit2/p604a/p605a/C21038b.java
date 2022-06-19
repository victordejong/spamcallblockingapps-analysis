package retrofit2.p604a.p605a;

import com.google.api.client.json.Json;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import p092c.C3202f;
import retrofit2.AbstractC21074e;
/* renamed from: retrofit2.a.a.b */
/* loaded from: classes5-dex2jar.jar:retrofit2/a/a/b.class */
final class C21038b<T> implements AbstractC21074e<T, RequestBody> {

    /* renamed from: a */
    private static final MediaType f67667a = MediaType.parse(Json.MEDIA_TYPE);

    /* renamed from: b */
    private static final Charset f67668b = Charset.forName("UTF-8");

    /* renamed from: c */
    private final C15965f f67669c;

    /* renamed from: d */
    private final AbstractC16088j<T> f67670d;

    public C21038b(C15965f c15965f, AbstractC16088j<T> abstractC16088j) {
        this.f67669c = c15965f;
        this.f67670d = abstractC16088j;
    }

    @Override // retrofit2.AbstractC21074e
    /* renamed from: a */
    public final /* synthetic */ RequestBody mo44a(Object obj) throws IOException {
        C3202f c3202f = new C3202f();
        JsonWriter m7972a = this.f67669c.m7972a((Writer) new OutputStreamWriter(new C3202f.C3205c(), f67668b));
        this.f67670d.write(m7972a, obj);
        m7972a.close();
        return RequestBody.create(f67667a, c3202f.mo39107q());
    }
}
