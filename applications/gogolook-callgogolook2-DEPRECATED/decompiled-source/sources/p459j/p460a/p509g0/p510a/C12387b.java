package p459j.p460a.p509g0.p510a;

import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import kotlin.Metadata;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\u0018�� \u00172\u00020\u0001:\u0001\u0017B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0002\u0010\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004H\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\t\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0018"}, m815d2 = {"Lgogolook/callgogolook2/network/strategy/IncrementalStrategy;", "Lgogolook/callgogolook2/network/strategy/IRetryStrategy;", "()V", "firstInterval", "", "increaseMillis", "maxRetries", "(III)V", "retryCount", "retryType", "getRetryType", "()I", NovaHomeBadger.TAG, "", "getTag", "()Ljava/lang/String;", "shouldRetry", "", "hasNetwork", IapProductRealmObject.STATE, "networkType", "millis", "", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.g0.a.b */
/* loaded from: classes3-dex2jar.jar:j/a/g0/a/b.class */
public final class C12387b implements AbstractC12385a {

    /* renamed from: a */
    public int f27956a;

    /* renamed from: b */
    public int f27957b;

    /* renamed from: c */
    public int f27958c;

    /* renamed from: d */
    public int f27959d;

    /* renamed from: j.a.g0.a.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/g0/a/b$a.class */
    public static final class C12388a {
        public C12388a() {
        }

        public /* synthetic */ C12388a(C15145g gVar) {
            this();
        }
    }

    static {
        new C12388a(null);
    }

    public C12387b(int i, int i2, int i3) {
        this.f27957b = i;
        this.f27958c = i2;
        this.f27959d = i3;
        if (this.f27959d <= 0) {
            throw new IllegalArgumentException("max retries must be larger than zero");
        }
    }

    @Override // p459j.p460a.p509g0.p510a.AbstractC12385a
    /* renamed from: a */
    public int mo6255a() {
        return 1;
    }

    @Override // p459j.p460a.p509g0.p510a.AbstractC12385a
    /* renamed from: a */
    public boolean mo6253a(int i, int i2) {
        return false;
    }

    @Override // p459j.p460a.p509g0.p510a.AbstractC12385a
    /* renamed from: a */
    public boolean mo6252a(long j) {
        int i = this.f27956a;
        boolean z = true;
        if (i < this.f27959d) {
            int i2 = this.f27957b;
            if (j > ((i2 + ((this.f27958c * i) + i2)) * (i + 1)) / 2) {
                this.f27956a = i + 1;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p459j.p460a.p509g0.p510a.AbstractC12385a
    /* renamed from: a */
    public boolean mo6251a(boolean z) {
        return false;
    }

    @Override // p459j.p460a.p509g0.p510a.AbstractC12385a
    public String getTag() {
        return "Incremental";
    }
}
