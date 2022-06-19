package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.core.p017a.C0438a;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.core.app.m */
/* loaded from: classes-dex2jar.jar:androidx/core/app/m.class */
public final class C0481m implements Iterable<Intent> {

    /* renamed from: a */
    private final ArrayList<Intent> f1857a = new ArrayList<>();

    /* renamed from: b */
    private final Context f1858b;

    /* renamed from: androidx.core.app.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/m$a.class */
    public interface AbstractC0482a {
        /* renamed from: i */
        Intent mo20732i();
    }

    private C0481m(Context context) {
        this.f1858b = context;
    }

    /* renamed from: a */
    public static C0481m m20735a(Context context) {
        return new C0481m(context);
    }

    /* renamed from: a */
    public C0481m m20737a(Activity activity) {
        Intent intent = null;
        if (activity instanceof AbstractC0482a) {
            intent = ((AbstractC0482a) activity).mo20732i();
        }
        Intent m20801a = intent == null ? C0470f.m20801a(activity) : intent;
        if (m20801a != null) {
            ComponentName component = m20801a.getComponent();
            ComponentName componentName = component;
            if (component == null) {
                componentName = m20801a.resolveActivity(this.f1858b.getPackageManager());
            }
            m20736a(componentName);
            m20734a(m20801a);
        }
        return this;
    }

    /* renamed from: a */
    public C0481m m20736a(ComponentName componentName) {
        int size = this.f1857a.size();
        try {
            Intent m20799a = C0470f.m20799a(this.f1858b, componentName);
            while (m20799a != null) {
                this.f1857a.add(size, m20799a);
                m20799a = C0470f.m20799a(this.f1858b, m20799a.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    public C0481m m20734a(Intent intent) {
        this.f1857a.add(intent);
        return this;
    }

    /* renamed from: a */
    public void m20738a() {
        m20733a((Bundle) null);
    }

    /* renamed from: a */
    public void m20733a(Bundle bundle) {
        if (this.f1857a.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) this.f1857a.toArray(new Intent[this.f1857a.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (C0438a.m20897a(this.f1858b, intentArr, bundle)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(268435456);
        this.f1858b.startActivity(intent);
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f1857a.iterator();
    }
}
