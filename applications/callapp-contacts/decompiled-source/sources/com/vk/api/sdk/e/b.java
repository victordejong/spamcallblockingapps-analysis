package com.vk.api.sdk.e;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0016\u0018�� \u001c2\u00020\u0001:\u0001\u001cB-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0006H\u0002J\b\u0010\u001b\u001a\u00020\u0014H\u0007R\u001e\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\r@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, d2 = {"Lcom/vk/api/sdk/utils/ExponentialBackoff;", "", "minDelayMs", "", "maxDelayMs", "factor", "", "jitter", "(JJFF)V", "<set-?>", "delayMs", "getDelayMs", "()J", "", "errorsCount", "getErrorsCount", "()I", "random", "Ljava/util/Random;", "increase", "", "onError", "reset", "shouldWait", "", "variance", "std", "waitIfNeeded", "Companion", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/b.class */
public final class b {

    /* renamed from: d  reason: collision with root package name */
    public static final a f36054d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    public volatile long f36055a;

    /* renamed from: b  reason: collision with root package name */
    public volatile int f36056b;

    /* renamed from: c  reason: collision with root package name */
    public final long f36057c;
    private final Random e;
    private final long f;
    private final float g;
    private final float h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/utils/ExponentialBackoff$Companion;", "", "()V", "forNetworkWait", "Lcom/vk/api/sdk/utils/ExponentialBackoff;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/b$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b() {
        this(0L, 0L, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 15, null);
    }

    public b(long j, long j2, float f, float f2) {
        this.f36057c = j;
        this.f = j2;
        this.g = f;
        this.h = f2;
        this.e = new Random(System.currentTimeMillis());
        this.f36055a = j;
    }

    public /* synthetic */ b(long j, long j2, float f, float f2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? TimeUnit.MILLISECONDS.toMillis(100L) : j, (i & 2) != 0 ? TimeUnit.MINUTES.toMillis(5L) : j2, (i & 4) != 0 ? 2.0f : f, (i & 8) != 0 ? 0.1f : f2);
    }

    private final long a(float f) {
        return (long) (this.e.nextGaussian() * f);
    }

    public final boolean a() {
        return this.f36056b > 0;
    }

    public final void b() {
        this.f36055a = Math.min(((float) this.f36055a) * this.g, (float) this.f);
        this.f36055a += a(((float) this.f36055a) * this.h);
        this.f36056b++;
    }
}
