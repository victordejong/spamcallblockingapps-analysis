package androidx.core.app;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.core.app.o */
/* loaded from: classes-dex2jar.jar:androidx/core/app/o.class */
public final class C0768o implements Iterable<Intent> {

    /* renamed from: a */
    public final ArrayList<Intent> f3427a = new ArrayList<>();

    /* renamed from: b */
    public final Context f3428b;

    /* renamed from: androidx.core.app.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/o$a.class */
    public interface AbstractC0769a {
        Intent getSupportParentActivityIntent();
    }

    private C0768o(Context context) {
        this.f3428b = context;
    }

    /* renamed from: a */
    public static C0768o m44526a(Context context) {
        return new C0768o(context);
    }

    /* renamed from: a */
    public final PendingIntent m44528a(int i, int i2) {
        if (!this.f3427a.isEmpty()) {
            ArrayList<Intent> arrayList = this.f3427a;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            return Build.VERSION.SDK_INT >= 16 ? PendingIntent.getActivities(this.f3428b, i, intentArr, 134217728, null) : PendingIntent.getActivities(this.f3428b, i, intentArr, 134217728);
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
    }

    /* renamed from: a */
    public final C0768o m44527a(ComponentName componentName) {
        int size = this.f3427a.size();
        try {
            Intent m44590a = C0743e.m44590a(this.f3428b, componentName);
            while (m44590a != null) {
                this.f3427a.add(size, m44590a);
                m44590a = C0743e.m44590a(this.f3428b, m44590a.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    public final C0768o m44525a(Intent intent) {
        this.f3427a.add(intent);
        return this;
    }

    /* renamed from: a */
    public final C0768o m44524a(Class<?> cls) {
        return m44527a(new ComponentName(this.f3428b, cls));
    }

    /* renamed from: b */
    public final C0768o m44523b(Intent intent) {
        ComponentName component = intent.getComponent();
        ComponentName componentName = component;
        if (component == null) {
            componentName = intent.resolveActivity(this.f3428b.getPackageManager());
        }
        if (componentName != null) {
            m44527a(componentName);
        }
        m44525a(intent);
        return this;
    }

    @Override // java.lang.Iterable
    @Deprecated
    public final Iterator<Intent> iterator() {
        return this.f3427a.iterator();
    }
}
