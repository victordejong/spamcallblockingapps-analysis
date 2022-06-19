package p286x5;

import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;
import p306z5.AbstractC5107d;
/* renamed from: x5.g */
/* loaded from: classes-dex2jar.jar:x5/g.class */
public class C4873g implements AbstractC4877k {

    /* renamed from: a */
    public final C4878l f14934a;

    /* renamed from: b */
    public final TaskCompletionSource<AbstractC4875i> f14935b;

    public C4873g(C4878l c4878l, TaskCompletionSource<AbstractC4875i> taskCompletionSource) {
        this.f14934a = c4878l;
        this.f14935b = taskCompletionSource;
    }

    @Override // p286x5.AbstractC4877k
    /* renamed from: a */
    public boolean mo324a(AbstractC5107d abstractC5107d) {
        if (!abstractC5107d.m21j() || this.f14934a.m319d(abstractC5107d)) {
            return false;
        }
        TaskCompletionSource<AbstractC4875i> taskCompletionSource = this.f14935b;
        String mo30a = abstractC5107d.mo30a();
        Objects.requireNonNull(mo30a, "Null token");
        Long valueOf = Long.valueOf(abstractC5107d.mo29b());
        Long valueOf2 = Long.valueOf(abstractC5107d.mo24g());
        String str = "";
        if (valueOf == null) {
            str = C1676a.m4789h("", " tokenExpirationTimestamp");
        }
        String str2 = str;
        if (valueOf2 == null) {
            str2 = C1676a.m4789h(str, " tokenCreationTimestamp");
        }
        if (!str2.isEmpty()) {
            throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str2));
        }
        taskCompletionSource.setResult(new C4865a(mo30a, valueOf.longValue(), valueOf2.longValue(), null));
        return true;
    }

    @Override // p286x5.AbstractC4877k
    /* renamed from: b */
    public boolean mo323b(Exception exc) {
        this.f14935b.trySetException(exc);
        return true;
    }
}
