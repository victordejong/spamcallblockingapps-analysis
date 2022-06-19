package retrofit2;

import java.util.Objects;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes5-dex2jar.jar:retrofit2/HttpException.class */
public class HttpException extends RuntimeException {

    /* renamed from: a */
    private final int f67635a;

    /* renamed from: b */
    private final String f67636b;

    /* renamed from: c */
    private final transient Response<?> f67637c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpException(Response<?> response) {
        super("HTTP " + response.f67638a.code() + StringUtils.SPACE + response.f67638a.message());
        Objects.requireNonNull(response, "response == null");
        this.f67635a = response.f67638a.code();
        this.f67636b = response.f67638a.message();
        this.f67637c = response;
    }
}
