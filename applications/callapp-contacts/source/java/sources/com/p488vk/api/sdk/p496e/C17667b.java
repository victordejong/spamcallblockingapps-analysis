package com.p488vk.api.sdk.p496e;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0016\u0018�� \u001c2\u00020\u0001:\u0001\u001cB-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0006H\u0002J\b\u0010\u001b\u001a\u00020\u0014H\u0007R\u001e\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\r@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, m4298d2 = {"Lcom/vk/api/sdk/utils/ExponentialBackoff;", "", "minDelayMs", "", "maxDelayMs", "factor", "", "jitter", "(JJFF)V", "<set-?>", "delayMs", "getDelayMs", "()J", "", "errorsCount", "getErrorsCount", "()I", "random", "Ljava/util/Random;", "increase", "", "onError", "reset", "shouldWait", "", "variance", "std", "waitIfNeeded", "Companion", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.e.b */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/b.class */
public final class C17667b {

    /* renamed from: d */
    public static final C17668a f62471d = new C17668a(null);

    /* renamed from: a */
    public volatile long f62472a;

    /* renamed from: b */
    public volatile int f62473b;

    /* renamed from: c */
    public final long f62474c;

    /* renamed from: e */
    private final Random f62475e;

    /* renamed from: f */
    private final long f62476f;

    /* renamed from: g */
    private final float f62477g;

    /* renamed from: h */
    private final float f62478h;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, m4298d2 = {"Lcom/vk/api/sdk/utils/ExponentialBackoff$Companion;", "", "()V", "forNetworkWait", "Lcom/vk/api/sdk/utils/ExponentialBackoff;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e.b$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/b$a.class */
    public static final class C17668a {
        private C17668a() {
        }

        public /* synthetic */ C17668a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C17667b() {
        this(0L, 0L, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 15, null);
    }

    public C17667b(long j, long j2, float f, float f2) {
        this.f62474c = j;
        this.f62476f = j2;
        this.f62477g = f;
        this.f62478h = f2;
        this.f62475e = new Random(System.currentTimeMillis());
        this.f62472a = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public /* synthetic */ C17667b(long j, long j2, float f, float f2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? TimeUnit.MILLISECONDS.toMillis(100L) : j, (i & 2) != 0 ? TimeUnit.MINUTES.toMillis(5L) : j2, (i & 4) != 0 ? 2.0f : f, (i & 8) != 0 ? 0.1f : f2);
    }

    /* renamed from: a */
    private final long m4845a(float f) {
        return (long) (this.f62475e.nextGaussian() * f);
    }

    /* renamed from: a */
    public final boolean m4846a() {
        return this.f62473b > 0;
    }

    /* renamed from: b */
    public final void m4844b() {
        this.f62472a = Math.min(((float) this.f62472a) * this.f62477g, (float) this.f62476f);
        this.f62472a += m4845a(((float) this.f62472a) * this.f62478h);
        this.f62473b++;
    }
}
