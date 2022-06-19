package p000;

import android.os.IBinder;
import androidx.browser.customtabs.CustomTabsService;
/* renamed from: b3 */
/* loaded from: classes-dex2jar.jar:b3.class */
public final /* synthetic */ class C0230b3 implements IBinder.DeathRecipient {

    /* renamed from: a */
    public final /* synthetic */ CustomTabsService.a f1746a;

    /* renamed from: b */
    public final /* synthetic */ i3 f1747b;

    public /* synthetic */ C0230b3(CustomTabsService.a aVar, i3 i3Var) {
        this.f1746a = aVar;
        this.f1747b = i3Var;
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        this.f1746a.d(this.f1747b);
    }
}
