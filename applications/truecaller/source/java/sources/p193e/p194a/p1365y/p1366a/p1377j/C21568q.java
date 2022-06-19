package p193e.p194a.p1365y.p1366a.p1377j;

import com.truecaller.flashsdk.p166ui.send.SendActivity;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21593a;
import p193e.p194a.p1365y.p1381b.C21595b;
import s1.z.c.l;
/* renamed from: e.a.y.a.j.q */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/j/q.class */
public final class C21568q implements Object<AbstractC21593a> {

    /* renamed from: a */
    public final C21567p f60165a;

    /* renamed from: b */
    public final Provider<SendActivity> f60166b;

    public C21568q(C21567p c21567p, Provider<SendActivity> provider) {
        this.f60165a = c21567p;
        this.f60166b = provider;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [android.content.Context, com.truecaller.flashsdk.ui.send.SendActivity, java.lang.Object] */
    public Object get() {
        C21567p c21567p = this.f60165a;
        ?? r0 = (SendActivity) this.f60166b.get();
        Objects.requireNonNull(c21567p);
        l.e((Object) r0, "activity");
        return new C21595b(r0);
    }
}
