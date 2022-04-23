package okhttp3;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:okhttp3/CacheControl$Builder.class */
public final class CacheControl$Builder {
    boolean immutable;
    int maxAgeSeconds = -1;
    int maxStaleSeconds = -1;
    int minFreshSeconds = -1;
    boolean noCache;
    boolean noStore;
    boolean noTransform;
    boolean onlyIfCached;

    public CacheControl build() {
        return new CacheControl(this);
    }

    public CacheControl$Builder immutable() {
        this.immutable = true;
        return this;
    }

    public CacheControl$Builder maxAge(int i, TimeUnit timeUnit) {
        if (i >= 0) {
            long seconds = timeUnit.toSeconds(i);
            this.maxAgeSeconds = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }
        throw new IllegalArgumentException("maxAge < 0: " + i);
    }

    public CacheControl$Builder maxStale(int i, TimeUnit timeUnit) {
        if (i >= 0) {
            long seconds = timeUnit.toSeconds(i);
            this.maxStaleSeconds = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }
        throw new IllegalArgumentException("maxStale < 0: " + i);
    }

    public CacheControl$Builder minFresh(int i, TimeUnit timeUnit) {
        if (i >= 0) {
            long seconds = timeUnit.toSeconds(i);
            this.minFreshSeconds = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }
        throw new IllegalArgumentException("minFresh < 0: " + i);
    }

    public CacheControl$Builder noCache() {
        this.noCache = true;
        return this;
    }

    public CacheControl$Builder noStore() {
        this.noStore = true;
        return this;
    }

    public CacheControl$Builder noTransform() {
        this.noTransform = true;
        return this;
    }

    public CacheControl$Builder onlyIfCached() {
        this.onlyIfCached = true;
        return this;
    }
}
