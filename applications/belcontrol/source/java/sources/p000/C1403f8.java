package p000;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: f8 */
/* loaded from: classes-dex2jar.jar:f8.class */
public final class C1403f8 implements Iterable<Intent> {

    /* renamed from: a */
    public final ArrayList<Intent> f6545a = new ArrayList<>();

    /* renamed from: b */
    public final Context f6546b;

    /* renamed from: f8$a */
    /* loaded from: classes-dex2jar.jar:f8$a.class */
    public interface AbstractC1404a {
        /* renamed from: d */
        Intent m1921d();
    }

    public C1403f8(Context context) {
        this.f6546b = context;
    }

    /* renamed from: d */
    public static C1403f8 m1924d(Context context) {
        return new C1403f8(context);
    }

    /* renamed from: a */
    public C1403f8 m1927a(Intent intent) {
        this.f6545a.add(intent);
        return this;
    }

    /* renamed from: b */
    public C1403f8 m1926b(Activity activity) {
        Intent m1921d = activity instanceof AbstractC1404a ? ((AbstractC1404a) activity).m1921d() : null;
        Intent intent = m1921d;
        if (m1921d == null) {
            intent = x7.a(activity);
        }
        if (intent != null) {
            ComponentName component = intent.getComponent();
            ComponentName componentName = component;
            if (component == null) {
                componentName = intent.resolveActivity(this.f6546b.getPackageManager());
            }
            m1925c(componentName);
            m1927a(intent);
        }
        return this;
    }

    /* renamed from: c */
    public C1403f8 m1925c(ComponentName componentName) {
        int size = this.f6545a.size();
        try {
            ComponentName componentName2 = componentName;
            Context context = this.f6546b;
            while (true) {
                Intent b = x7.b(context, componentName2);
                if (b == null) {
                    return this;
                }
                this.f6545a.add(size, b);
                context = this.f6546b;
                componentName2 = b.getComponent();
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: e */
    public void m1923e() {
        m1922f(null);
    }

    /* renamed from: f */
    public void m1922f(Bundle bundle) {
        if (!this.f6545a.isEmpty()) {
            ArrayList<Intent> arrayList = this.f6545a;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (g8.m(this.f6546b, intentArr, bundle)) {
                return;
            }
            Intent intent = new Intent(intentArr[intentArr.length - 1]);
            intent.addFlags(268435456);
            this.f6546b.startActivity(intent);
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f6545a.iterator();
    }
}
