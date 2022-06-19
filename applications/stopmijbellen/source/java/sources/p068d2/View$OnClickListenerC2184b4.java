package p068d2;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
/* renamed from: d2.b4 */
/* loaded from: classes-dex2jar.jar:d2/b4.class */
public class View$OnClickListenerC2184b4 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C2441x3 f7976a;

    public View$OnClickListenerC2184b4(C2441x3 c2441x3) {
        this.f7976a = c2441x3;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C2315i3.m3664g(new Intent("android.intent.action.VIEW", Uri.parse(this.f7976a.f8652i)));
        C2408t.m3591d().m3731c().m3755d(this.f7976a.f8648e);
    }
}
