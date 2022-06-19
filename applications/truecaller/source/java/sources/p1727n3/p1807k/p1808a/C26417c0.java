package p1727n3.p1807k.p1808a;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.Iterator;
import p1727n3.p1807k.p1809b.C26467a;
/* renamed from: n3.k.a.c0 */
/* loaded from: classes-dex2jar.jar:n3/k/a/c0.class */
public final class C26417c0 implements Iterable<Intent> {

    /* renamed from: a */
    public final ArrayList<Intent> f74032a = new ArrayList<>();

    /* renamed from: b */
    public final Context f74033b;

    /* renamed from: n3.k.a.c0$a */
    /* loaded from: classes-dex2jar.jar:n3/k/a/c0$a.class */
    public interface AbstractC26418a {
        Intent getSupportParentActivityIntent();
    }

    public C26417c0(Context context) {
        this.f74033b = context;
    }

    /* renamed from: a */
    public C26417c0 m1893a(Intent intent) {
        ComponentName component = intent.getComponent();
        ComponentName componentName = component;
        if (component == null) {
            componentName = intent.resolveActivity(this.f74033b.getPackageManager());
        }
        if (componentName != null) {
            m1892b(componentName);
        }
        this.f74032a.add(intent);
        return this;
    }

    /* renamed from: b */
    public C26417c0 m1892b(ComponentName componentName) {
        int size = this.f74032a.size();
        try {
            Intent m43204r0 = MediaSessionCompat.m43204r0(this.f74033b, componentName);
            while (m43204r0 != null) {
                this.f74032a.add(size, m43204r0);
                m43204r0 = MediaSessionCompat.m43204r0(this.f74033b, m43204r0.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: c */
    public int m1891c() {
        return this.f74032a.size();
    }

    /* renamed from: d */
    public PendingIntent m1890d(int i, int i2) {
        if (!this.f74032a.isEmpty()) {
            ArrayList<Intent> arrayList = this.f74032a;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            return PendingIntent.getActivities(this.f74033b, i, intentArr, i2, null);
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
    }

    /* renamed from: e */
    public void m1889e() {
        if (!this.f74032a.isEmpty()) {
            ArrayList<Intent> arrayList = this.f74032a;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            Context context = this.f74033b;
            Object obj = C26467a.f74235a;
            C26467a.C26468a.m1795a(context, intentArr, null);
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f74032a.iterator();
    }
}
