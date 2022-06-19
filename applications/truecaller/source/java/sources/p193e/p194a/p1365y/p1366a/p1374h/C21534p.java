package p193e.p194a.p1365y.p1366a.p1374h;

import com.truecaller.flashsdk.p166ui.incoming.FlashActivity;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21593a;
import p193e.p194a.p1365y.p1381b.C21595b;
import s1.z.c.l;
/* renamed from: e.a.y.a.h.p */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/h/p.class */
public final class C21534p implements Object<AbstractC21593a> {

    /* renamed from: a */
    public final C21533o f60084a;

    /* renamed from: b */
    public final Provider<FlashActivity> f60085b;

    public C21534p(C21533o c21533o, Provider<FlashActivity> provider) {
        this.f60084a = c21533o;
        this.f60085b = provider;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [android.content.Context, com.truecaller.flashsdk.ui.incoming.FlashActivity, java.lang.Object] */
    public Object get() {
        C21533o c21533o = this.f60084a;
        ?? r0 = (FlashActivity) this.f60085b.get();
        Objects.requireNonNull(c21533o);
        l.e((Object) r0, "activity");
        return new C21595b(r0);
    }
}
