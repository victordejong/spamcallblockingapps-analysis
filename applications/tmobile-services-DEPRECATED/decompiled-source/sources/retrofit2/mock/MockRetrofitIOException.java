package retrofit2.mock;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:retrofit2/mock/MockRetrofitIOException.class */
final class MockRetrofitIOException extends IOException {
    /* JADX INFO: Access modifiers changed from: package-private */
    public MockRetrofitIOException() {
        super("Failure triggered by MockRetrofit's NetworkBehavior");
    }
}
