package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import d.e.a;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import p011c.p014b.p015a.AbstractC0616b;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService.class */
public abstract class CustomTabsService extends Service {

    /* renamed from: b */
    final Map<IBinder, IBinder.DeathRecipient> f729b = new a();

    /* renamed from: c */
    private AbstractC0616b.a f730c = new a(this);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public boolean m14400a(C0169f fVar) {
        try {
            synchronized (this.f729b) {
                IBinder a = fVar.m14378a();
                a.unlinkToDeath(this.f729b.get(a), 0);
                this.f729b.remove(a);
            }
            return true;
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    /* renamed from: b */
    protected abstract Bundle m14399b(String str, Bundle bundle);

    /* renamed from: c */
    protected abstract boolean m14398c(C0169f fVar, Uri uri, Bundle bundle, List<Bundle> list);

    /* renamed from: d */
    protected abstract boolean m14397d(C0169f fVar);

    /* renamed from: e */
    protected abstract int m14396e(C0169f fVar, String str, Bundle bundle);

    /* renamed from: f */
    protected abstract boolean m14395f(C0169f fVar, Uri uri);

    /* renamed from: g */
    protected abstract boolean m14394g(C0169f fVar, Bundle bundle);

    /* renamed from: h */
    protected abstract boolean m14393h(C0169f fVar, int i, Uri uri, Bundle bundle);

    /* renamed from: i */
    protected abstract boolean m14392i(long j);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f730c;
    }
}
