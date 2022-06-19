package retrofit2.p604a.p605a;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.AbstractC21074e;
/* renamed from: retrofit2.a.a.c */
/* loaded from: classes5-dex2jar.jar:retrofit2/a/a/c.class */
final class C21039c<T> implements AbstractC21074e<ResponseBody, T> {

    /* renamed from: a */
    private final C15965f f67671a;

    /* renamed from: b */
    private final AbstractC16088j<T> f67672b;

    public C21039c(C15965f c15965f, AbstractC16088j<T> abstractC16088j) {
        this.f67671a = c15965f;
        this.f67672b = abstractC16088j;
    }

    /* renamed from: a */
    public T mo44a(ResponseBody responseBody) throws IOException {
        try {
            return this.f67672b.read(this.f67671a.m7974a(responseBody.charStream()));
        } finally {
            responseBody.close();
        }
    }
}
