package androidx.browser.customtabs;

import android.os.IBinder;
import androidx.browser.customtabs.CustomTabsService;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService$a$a.class */
class CustomTabsService$a$a implements IBinder.DeathRecipient {

    /* renamed from: a */
    final /* synthetic */ C0169f f731a;

    /* renamed from: b */
    final /* synthetic */ CustomTabsService.a f732b;

    CustomTabsService$a$a(CustomTabsService.a aVar, C0169f fVar) {
        this.f732b = aVar;
        this.f731a = fVar;
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        this.f732b.b.m14400a(this.f731a);
    }
}
