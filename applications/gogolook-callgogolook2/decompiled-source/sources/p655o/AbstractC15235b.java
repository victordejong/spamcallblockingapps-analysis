package p655o;

import java.io.IOException;
import okhttp3.Request;
/* renamed from: o.b */
/* loaded from: classes3-dex2jar.jar:o/b.class */
public interface AbstractC15235b<T> extends Cloneable {
    /* renamed from: a */
    void mo140a(AbstractC15238d<T> dVar);

    void cancel();

    AbstractC15235b<T> clone();

    C15299r<T> execute() throws IOException;

    boolean isCanceled();

    Request request();
}
