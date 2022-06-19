package p193e.p194a.p1365y.p1366a.p1378k;

import android.app.Activity;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21593a;
import p193e.p194a.p1365y.p1381b.C21595b;
import s1.z.c.l;
/* renamed from: e.a.y.a.k.c */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/k/c.class */
public final class C21575c implements Object<AbstractC21593a> {

    /* renamed from: a */
    public final C21574b f60208a;

    /* renamed from: b */
    public final Provider<Activity> f60209b;

    public C21575c(C21574b c21574b, Provider<Activity> provider) {
        this.f60208a = c21574b;
        this.f60209b = provider;
    }

    public Object get() {
        C21574b c21574b = this.f60208a;
        Activity activity = (Activity) this.f60209b.get();
        Objects.requireNonNull(c21574b);
        l.e(activity, "activity");
        return new C21595b(activity);
    }
}
