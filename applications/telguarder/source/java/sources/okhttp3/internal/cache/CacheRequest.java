package okhttp3.internal.cache;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.io.IOException;
import kotlin.Metadata;
import okio.Sink;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m400d2 = {"Lokhttp3/internal/cache/CacheRequest;", "", "abort", "", SDKConstants.PARAM_A2U_BODY, "Lokio/Sink;", "okhttp"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okhttp3/internal/cache/CacheRequest.class */
public interface CacheRequest {
    void abort();

    Sink body() throws IOException;
}
