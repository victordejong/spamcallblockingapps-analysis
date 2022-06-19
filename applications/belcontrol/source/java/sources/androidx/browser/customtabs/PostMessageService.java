package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.support.customtabs.IPostMessageService;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/PostMessageService.class */
public class PostMessageService extends Service {

    /* renamed from: a */
    public IPostMessageService.Stub f620a = new a(this);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f620a;
    }
}
