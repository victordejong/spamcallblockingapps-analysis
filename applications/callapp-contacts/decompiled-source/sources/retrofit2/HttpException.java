package retrofit2;

import java.util.Objects;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes5-dex2jar.jar:retrofit2/HttpException.class */
public class HttpException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final int f39401a;

    /* renamed from: b  reason: collision with root package name */
    private final String f39402b;

    /* renamed from: c  reason: collision with root package name */
    private final transient Response<?> f39403c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpException(Response<?> response) {
        super("HTTP " + response.f39404a.code() + StringUtils.SPACE + response.f39404a.message());
        Objects.requireNonNull(response, "response == null");
        this.f39401a = response.f39404a.code();
        this.f39402b = response.f39404a.message();
        this.f39403c = response;
    }
}
