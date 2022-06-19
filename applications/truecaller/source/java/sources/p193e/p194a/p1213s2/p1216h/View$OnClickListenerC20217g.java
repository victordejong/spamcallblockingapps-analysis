package p193e.p194a.p1213s2.p1216h;

import android.content.Intent;
import android.view.View;
import java.util.Objects;
/* renamed from: e.a.s2.h.g */
/* loaded from: classes5-dex2jar.jar:e/a/s2/h/g.class */
public final class View$OnClickListenerC20217g implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C20218h f56957a;

    public View$OnClickListenerC20217g(C20218h c20218h) {
        this.f56957a = c20218h;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C20218h c20218h = this.f56957a;
        int i = C20218h.f56958k;
        Objects.requireNonNull(c20218h);
        Intent intent = new Intent();
        intent.setAction("com.android.settings.TTS_SETTINGS");
        intent.setFlags(268435456);
        c20218h.startActivity(intent);
    }
}
