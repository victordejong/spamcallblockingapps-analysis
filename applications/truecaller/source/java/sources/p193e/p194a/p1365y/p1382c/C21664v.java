package p193e.p194a.p1365y.p1382c;

import android.media.AudioManager;
import java.util.Objects;
/* renamed from: e.a.y.c.v */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/v.class */
public final class C21664v implements Object<AudioManager> {

    /* renamed from: a */
    public final C21663u f60382a;

    public C21664v(C21663u c21663u) {
        this.f60382a = c21663u;
    }

    public Object get() {
        Object systemService = this.f60382a.f60381a.getApplicationContext().getSystemService("audio");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        return (AudioManager) systemService;
    }
}
