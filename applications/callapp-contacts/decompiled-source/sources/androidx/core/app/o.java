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
/* loaded from: classes-dex2jar.jar:androidx/core/app/o.class */
public final class o implements Iterable<Intent> {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList<Intent> f1783a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    public final Context f1784b;

    /* loaded from: classes-dex2jar.jar:androidx/core/app/o$a.class */
    public interface a {
        Intent getSupportParentActivityIntent();
    }

    private o(Context context) {
        this.f1784b = context;
    }

    public static o a(Context context) {
        return new o(context);
    }

    public final PendingIntent a(int i, int i2) {
        if (!this.f1783a.isEmpty()) {
            ArrayList<Intent> arrayList = this.f1783a;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            return Build.VERSION.SDK_INT >= 16 ? PendingIntent.getActivities(this.f1784b, i, intentArr, 134217728, null) : PendingIntent.getActivities(this.f1784b, i, intentArr, 134217728);
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
    }

    public final o a(ComponentName componentName) {
        int size = this.f1783a.size();
        try {
            Intent a2 = e.a(this.f1784b, componentName);
            while (a2 != null) {
                this.f1783a.add(size, a2);
                a2 = e.a(this.f1784b, a2.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    public final o a(Intent intent) {
        this.f1783a.add(intent);
        return this;
    }

    public final o a(Class<?> cls) {
        return a(new ComponentName(this.f1784b, cls));
    }

    public final o b(Intent intent) {
        ComponentName component = intent.getComponent();
        ComponentName componentName = component;
        if (component == null) {
            componentName = intent.resolveActivity(this.f1784b.getPackageManager());
        }
        if (componentName != null) {
            a(componentName);
        }
        a(intent);
        return this;
    }

    @Override // java.lang.Iterable
    @Deprecated
    public final Iterator<Intent> iterator() {
        return this.f1783a.iterator();
    }
}
