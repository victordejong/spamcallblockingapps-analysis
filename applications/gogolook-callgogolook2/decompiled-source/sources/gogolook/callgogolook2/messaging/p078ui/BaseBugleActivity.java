package gogolook.callgogolook2.messaging.p078ui;

import android.app.Activity;
import android.os.Bundle;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12163g;
/* renamed from: gogolook.callgogolook2.messaging.ui.BaseBugleActivity */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/BaseBugleActivity.class */
public class BaseBugleActivity extends Activity {
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        C12153d0.m6983d("MessagingApp", getLocalClassName() + ".onPause");
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        C12153d0.m6983d("MessagingApp", getLocalClassName() + ".onResume");
        C12163g.m6946b(this, this);
    }
}
