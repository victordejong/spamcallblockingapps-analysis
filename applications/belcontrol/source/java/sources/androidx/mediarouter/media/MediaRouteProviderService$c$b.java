package androidx.mediarouter.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import androidx.mediarouter.media.MediaRouteProviderService;
import java.util.ArrayList;
import java.util.Collection;
import zy;
/* loaded from: classes-dex2jar.jar:androidx/mediarouter/media/MediaRouteProviderService$c$b.class */
public class MediaRouteProviderService$c$b implements IBinder.DeathRecipient {

    /* renamed from: a */
    public final Messenger f1300a;

    /* renamed from: b */
    public final int f1301b;

    /* renamed from: c */
    public final String f1302c;

    /* renamed from: d */
    public yy f1303d;

    /* renamed from: e */
    public final SparseArray<zy.e> f1304e = new SparseArray<>();

    /* renamed from: f */
    public final zy.b.d f1305f = new a(this);

    /* renamed from: g */
    public final /* synthetic */ MediaRouteProviderService.c f1306g;

    public MediaRouteProviderService$c$b(MediaRouteProviderService.c cVar, Messenger messenger, int i, String str) {
        this.f1306g = cVar;
        this.f1300a = messenger;
        this.f1301b = i;
        this.f1302c = str;
    }

    /* renamed from: a */
    public Bundle m6282a(C0225az c0225az) {
        return MediaRouteProviderService.m6290a(c0225az, this.f1301b);
    }

    /* renamed from: b */
    public Bundle m6281b(String str, int i) {
        zy.e s;
        if (this.f1304e.indexOfKey(i) >= 0 || (s = this.f1306g.a.m6287d().s(str)) == null) {
            return null;
        }
        s.q(g8.i(this.f1306g.a.getApplicationContext()), this.f1305f);
        this.f1304e.put(i, s);
        Bundle bundle = new Bundle();
        bundle.putString("groupableTitle", s.k());
        bundle.putString("transferableTitle", s.l());
        return bundle;
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        this.f1306g.a.f1294c.obtainMessage(1, this.f1300a).sendToTarget();
    }

    /* renamed from: c */
    public boolean m6280c(String str, String str2, int i) {
        if (this.f1304e.indexOfKey(i) < 0) {
            zy.e t = str2 == null ? this.f1306g.a.m6287d().t(str) : this.f1306g.a.m6287d().u(str, str2);
            if (t == null) {
                return false;
            }
            this.f1304e.put(i, t);
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public void m6279d() {
        int size = this.f1304e.size();
        for (int i = 0; i < size; i++) {
            this.f1304e.valueAt(i).e();
        }
        this.f1304e.clear();
        this.f1300a.getBinder().unlinkToDeath(this, 0);
        m6273j(null);
    }

    /* renamed from: e */
    public zy.e m6278e(int i) {
        return this.f1304e.get(i);
    }

    /* renamed from: f */
    public boolean m6277f(Messenger messenger) {
        return this.f1300a.getBinder() == messenger.getBinder();
    }

    /* renamed from: g */
    public boolean m6276g() {
        try {
            this.f1300a.getBinder().linkToDeath(this, 0);
            return true;
        } catch (RemoteException e) {
            binderDied();
            return false;
        }
    }

    /* renamed from: h */
    public boolean m6275h(int i) {
        zy.e eVar = this.f1304e.get(i);
        if (eVar != null) {
            this.f1304e.remove(i);
            eVar.e();
            return true;
        }
        return false;
    }

    /* renamed from: i */
    public void m6274i(zy.b bVar, xy xyVar, Collection<zy.b.c> collection) {
        int indexOfValue = this.f1304e.indexOfValue(bVar);
        if (indexOfValue < 0) {
            Log.w("MediaRouteProviderSrv", "Ignoring unknown dynamic group route controller: " + bVar);
            return;
        }
        int keyAt = this.f1304e.keyAt(indexOfValue);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (zy.b.c cVar : collection) {
            arrayList.add(cVar.g());
        }
        Bundle bundle = new Bundle();
        if (xyVar != null) {
            bundle.putParcelable("groupRoute", xyVar.a());
        }
        bundle.putParcelableArrayList("dynamicRoutes", arrayList);
        MediaRouteProviderService.m6283h(this.f1300a, 7, 0, keyAt, bundle, null);
    }

    /* renamed from: j */
    public boolean m6273j(yy yyVar) {
        if (!ja.a(this.f1303d, yyVar)) {
            this.f1303d = yyVar;
            return this.f1306g.x();
        }
        return false;
    }

    public String toString() {
        return MediaRouteProviderService.m6288c(this.f1300a);
    }
}
