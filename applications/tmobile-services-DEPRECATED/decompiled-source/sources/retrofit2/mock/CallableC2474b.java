package retrofit2.mock;

import java.util.concurrent.Callable;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import retrofit2.Response;
/* renamed from: retrofit2.mock.b */
/* loaded from: classes2-dex2jar.jar:retrofit2/mock/b.class */
public final /* synthetic */ class CallableC2474b implements Callable {

    /* renamed from: f */
    public static final /* synthetic */ CallableC2474b f24244f = new CallableC2474b();

    private /* synthetic */ CallableC2474b() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Response error;
        error = Response.error(500, ResponseBody.create((MediaType) null, new byte[0]));
        return error;
    }
}
