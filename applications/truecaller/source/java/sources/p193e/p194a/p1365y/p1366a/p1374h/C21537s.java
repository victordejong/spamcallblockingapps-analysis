package p193e.p194a.p1365y.p1366a.p1374h;

import android.app.WallpaperManager;
import com.truecaller.flashsdk.p166ui.incoming.FlashActivity;
import java.util.Objects;
import javax.inject.Provider;
import s1.z.c.l;
/* renamed from: e.a.y.a.h.s */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/h/s.class */
public final class C21537s implements Object<WallpaperManager> {

    /* renamed from: a */
    public final C21533o f60103a;

    /* renamed from: b */
    public final Provider<FlashActivity> f60104b;

    public C21537s(C21533o c21533o, Provider<FlashActivity> provider) {
        this.f60103a = c21533o;
        this.f60104b = provider;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [android.content.Context, com.truecaller.flashsdk.ui.incoming.FlashActivity, java.lang.Object] */
    public Object get() {
        C21533o c21533o = this.f60103a;
        ?? r0 = (FlashActivity) this.f60104b.get();
        Objects.requireNonNull(c21533o);
        l.e((Object) r0, "activity");
        WallpaperManager wallpaperManager = WallpaperManager.getInstance(r0);
        l.d(wallpaperManager, "WallpaperManager.getInstance(activity)");
        return wallpaperManager;
    }
}
