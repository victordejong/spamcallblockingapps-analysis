package retrofit2;

import java.io.IOException;
import okhttp3.Request;
/* loaded from: classes5-dex2jar.jar:retrofit2/Call.class */
public interface Call<T> extends Cloneable {
    Response<T> a() throws IOException;

    void a(c<T> cVar);

    void b();

    boolean c();

    Call<T> d();

    Request e();
}
