package retrofit2.mock;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import retrofit2.Retrofit;
/* loaded from: classes3-dex2jar.jar:retrofit2/mock/MockRetrofit.class */
public final class MockRetrofit {
    private final NetworkBehavior behavior;
    private final ExecutorService executor;
    private final Retrofit retrofit;

    /* loaded from: classes3-dex2jar.jar:retrofit2/mock/MockRetrofit$Builder.class */
    public static final class Builder {
        private NetworkBehavior behavior;
        private ExecutorService executor;
        private final Retrofit retrofit;

        public Builder(Retrofit retrofit) {
            if (retrofit == null) {
                throw new NullPointerException("retrofit == null");
            }
            this.retrofit = retrofit;
        }

        public Builder backgroundExecutor(ExecutorService executorService) {
            if (executorService == null) {
                throw new NullPointerException("executor == null");
            }
            this.executor = executorService;
            return this;
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
            if (networkBehavior == null) {
                throw new NullPointerException("behavior == null");
            }
            this.behavior = networkBehavior;
            return this;
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
