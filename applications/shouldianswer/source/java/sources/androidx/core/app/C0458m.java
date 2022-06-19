package androidx.core.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.core.p015a.C0409a;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.core.app.m */
/* loaded from: classes-dex2jar.jar:androidx/core/app/m.class */
public final class C0458m implements Iterable<Intent> {

    /* renamed from: a */
    private final ArrayList<Intent> f1706a = new ArrayList<>();

    /* renamed from: b */
    private final Context f1707b;

    /* renamed from: androidx.core.app.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/m$a.class */
    public interface AbstractC0459a {
        /* renamed from: f */
        Intent mo6551f();
    }

    private C0458m(Context context) {
        this.f1707b = context;
    }

    /* renamed from: a */
    public static C0458m m6555a(Context context) {
        return new C0458m(context);
    }

    /* renamed from: a */
    public PendingIntent m6559a(int i, int i2) {
        return m6558a(i, i2, null);
    }

    /* renamed from: a */
    public PendingIntent m6558a(int i, int i2, Bundle bundle) {
        if (!this.f1706a.isEmpty()) {
            ArrayList<Intent> arrayList = this.f1706a;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            return Build.VERSION.SDK_INT >= 16 ? PendingIntent.getActivities(this.f1707b, i, intentArr, i2, bundle) : PendingIntent.getActivities(this.f1707b, i, intentArr, i2);
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
    }

    /* renamed from: a */
    public C0458m m6557a(Activity activity) {
        Intent mo6551f = activity instanceof AbstractC0459a ? ((AbstractC0459a) activity).mo6551f() : null;
        Intent intent = mo6551f;
        if (mo6551f == null) {
            intent = C0443f.m6654a(activity);
        }
        if (intent != null) {
            ComponentName component = intent.getComponent();
            ComponentName componentName = component;
            if (component == null) {
                componentName = intent.resolveActivity(this.f1707b.getPackageManager());
            }
            m6556a(componentName);
            m6554a(intent);
        }
        return this;
    }

    /* renamed from: a */
    public C0458m m6556a(ComponentName componentName) {
        int size = this.f1706a.size();
        try {
            Intent m6652a = C0443f.m6652a(this.f1707b, componentName);
            while (m6652a != null) {
                this.f1706a.add(size, m6652a);
                m6652a = C0443f.m6652a(this.f1707b, m6652a.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    public C0458m m6554a(Intent intent) {
        this.f1706a.add(intent);
        return this;
    }

    /* renamed from: a */
    public C0458m m6552a(Class<?> cls) {
        return m6556a(new ComponentName(this.f1707b, cls));
    }

    /* renamed from: a */
    public void m6560a() {
        m6553a((Bundle) null);
    }

    /* renamed from: a */
    public void m6553a(Bundle bundle) {
        if (!this.f1706a.isEmpty()) {
            ArrayList<Intent> arrayList = this.f1706a;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (C0409a.m6751a(this.f1707b, intentArr, bundle)) {
                return;
            }
            Intent intent = new Intent(intentArr[intentArr.length - 1]);
            intent.addFlags(268435456);
            this.f1707b.startActivity(intent);
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f1706a.iterator();
    }
}
