package p093f6;

import com.google.firebase.perf.config.RemoteConfigManager;
import java.util.Objects;
import p081e6.C2583a;
import p161l9.AbstractC3541a;
/* renamed from: f6.b */
/* loaded from: classes-dex2jar.jar:f6/b.class */
public final class C2764b implements AbstractC3541a {

    /* renamed from: a */
    public final /* synthetic */ int f9464a;

    /* renamed from: b */
    public final C2763a f9465b;

    public /* synthetic */ C2764b(C2763a c2763a, int i) {
        this.f9464a = i;
        this.f9465b = c2763a;
    }

    @Override // p161l9.AbstractC3541a
    public Object get() {
        switch (this.f9464a) {
            case 0:
                Objects.requireNonNull(this.f9465b);
                C2583a m3412e = C2583a.m3412e();
                Objects.requireNonNull(m3412e, "Cannot return null from a non-@Nullable @Provides method");
                return m3412e;
            default:
                Objects.requireNonNull(this.f9465b);
                RemoteConfigManager remoteConfigManager = RemoteConfigManager.getInstance();
                Objects.requireNonNull(remoteConfigManager, "Cannot return null from a non-@Nullable @Provides method");
                return remoteConfigManager;
        }
    }
}
