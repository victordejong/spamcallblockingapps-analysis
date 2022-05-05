package retrofit2.mock;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.annotation.Nullable;
import retrofit2.Retrofit;
/* loaded from: classes2-dex2jar.jar:retrofit2/mock/MockRetrofit.class */
public final class MockRetrofit {
    private final NetworkBehavior behavior;
    private final ExecutorService executor;
    private final Retrofit retrofit;

    /* loaded from: classes2-dex2jar.jar:retrofit2/mock/MockRetrofit$Builder.class */
    public static final class Builder {
        @Nullable
        private NetworkBehavior behavior;
        @Nullable
        private ExecutorService executor;
        private final Retrofit retrofit;

        public Builder(Retrofit retrofit) {
            if (retrofit != null) {
                this.retrofit = retrofit;
                return;
            }
            throw new NullPointerException("retrofit == null");
        }

        public Builder backgroundExecutor(ExecutorService executorService) {
            if (executorService != null) {
                this.executor = executorService;
                return this;
            }
            throw new NullPointerException("executor == null");
        }

        public MockRetrofit build() {
            if (this.behavior == null) {
                this.behavior = NetworkBehavior.create();
            }
            if (this.executor == null) {
                this.executor = Executors.newCachedThreadPool();
            }
            return new MockRetrofit(this.retrofit, this.behavior, this.executor);
        }

        public Builder networkBehavior(NetworkBehavior networkBehavior) {
            if (networkBehavior != null) {
                this.behavior = networkBehavior;
                return this;
            }
            throw new NullPointerException("behavior == null");
        }
    }

    MockRetrofit(Retrofit retrofit, NetworkBehavior networkBehavior, ExecutorService executorService) {
        this.retrofit = retrofit;
        this.behavior = networkBehavior;
        this.executor = executorService;
    }

    public Executor backgroundExecutor() {
        return this.executor;
    }

    public <T> BehaviorDelegate<T> create(Class<T> cls) {
        return new BehaviorDelegate<>(this.retrofit, this.behavior, this.executor, cls);
    }

    public NetworkBehavior networkBehavior() {
        return this.behavior;
    }

    public Retrofit retrofit() {
        return this.retrofit;
    }
}
