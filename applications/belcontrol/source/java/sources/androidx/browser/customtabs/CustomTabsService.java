package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.support.customtabs.ICustomTabsService;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService.class */
public abstract class CustomTabsService extends Service {

    /* renamed from: a */
    public final h4<IBinder, IBinder.DeathRecipient> f618a = new h4<>();

    /* renamed from: b */
    public ICustomTabsService.Stub f619b = new a(this);

    /* renamed from: a */
    public boolean m6926a(i3 i3Var) {
        try {
            synchronized (this.f618a) {
                IBinder a = i3Var.a();
                if (a == null) {
                    return false;
                }
                a.unlinkToDeath((IBinder.DeathRecipient) this.f618a.get(a), 0);
                this.f618a.remove(a);
                return true;
            }
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    /* renamed from: b */
    public abstract Bundle m6925b(String str, Bundle bundle);

    /* renamed from: c */
    public abstract boolean m6924c(i3 i3Var, Uri uri, Bundle bundle, List<Bundle> list);

    /* renamed from: d */
    public abstract boolean m6923d(i3 i3Var);

    /* renamed from: e */
    public abstract int m6922e(i3 i3Var, String str, Bundle bundle);

    /* renamed from: f */
    public abstract boolean m6921f(i3 i3Var, Uri uri, int i, Bundle bundle);

    /* renamed from: g */
    public abstract boolean m6920g(i3 i3Var, Uri uri);

    /* renamed from: h */
    public abstract boolean m6919h(i3 i3Var, Bundle bundle);

    /* renamed from: i */
    public abstract boolean m6918i(i3 i3Var, int i, Uri uri, Bundle bundle);

    /* renamed from: j */
    public abstract boolean m6917j(long j);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f619b;
    }
}
