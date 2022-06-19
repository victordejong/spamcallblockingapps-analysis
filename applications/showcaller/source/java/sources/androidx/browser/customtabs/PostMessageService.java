package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import p000a.p001a.p002a.AbstractC0000a;
import p000a.p001a.p002a.AbstractC0006c;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/PostMessageService.class */
public class PostMessageService extends Service {

    /* renamed from: d */
    private AbstractC0006c.AbstractBinderC0007a f1447d = new BinderC0342a();

    /* renamed from: androidx.browser.customtabs.PostMessageService$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/PostMessageService$a.class */
    class BinderC0342a extends AbstractC0006c.AbstractBinderC0007a {
        BinderC0342a() {
            PostMessageService.this = r4;
        }

        @Override // p000a.p001a.p002a.AbstractC0006c
        /* renamed from: B2 */
        public void mo34664B2(AbstractC0000a abstractC0000a, Bundle bundle) {
            abstractC0000a.mo34658V5(bundle);
        }

        @Override // p000a.p001a.p002a.AbstractC0006c
        /* renamed from: q3 */
        public void mo34663q3(AbstractC0000a abstractC0000a, String str, Bundle bundle) {
            abstractC0000a.mo34659L5(str, bundle);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1447d;
    }
}
