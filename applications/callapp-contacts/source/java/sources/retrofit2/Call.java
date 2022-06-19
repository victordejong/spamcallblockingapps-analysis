package retrofit2;

import java.io.IOException;
import okhttp3.Request;
/* loaded from: classes5-dex2jar.jar:retrofit2/Call.class */
public interface Call<T> extends Cloneable {
    /* renamed from: a */
    Response<T> mo56a() throws IOException;

    /* renamed from: a */
    void mo54a(AbstractC21067c<T> abstractC21067c);

    /* renamed from: b */
    void mo53b();

    /* renamed from: c */
    boolean mo52c();

    /* renamed from: d */
    Call<T> mo51d();

    /* renamed from: e */
    Request mo50e();
}
