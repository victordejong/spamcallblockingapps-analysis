package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import p011c.p014b.p015a.AbstractC0617c;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/PostMessageService.class */
public class PostMessageService extends Service {

    /* renamed from: b */
    private AbstractC0617c.a f733b = new a(this);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f733b;
    }
}
