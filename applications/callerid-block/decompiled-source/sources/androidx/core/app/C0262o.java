package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.core.content.C0265a;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.core.app.o */
/* loaded from: classes-dex2jar.jar:androidx/core/app/o.class */
public final class C0262o implements Iterable<Intent> {

    /* renamed from: b */
    private final ArrayList<Intent> f1662b = new ArrayList<>();

    /* renamed from: c */
    private final Context f1663c;

    /* renamed from: androidx.core.app.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/o$a.class */
    public interface AbstractC0263a {
        /* renamed from: i */
        Intent m13566i();
    }

    private C0262o(Context context) {
        this.f1663c = context;
    }

    /* renamed from: p */
    public static C0262o m13569p(Context context) {
        return new C0262o(context);
    }

    /* renamed from: a */
    public C0262o m13572a(Intent intent) {
        this.f1662b.add(intent);
        return this;
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f1662b.iterator();
    }

    /* renamed from: j */
    public C0262o m13571j(Activity activity) {
        Intent i = activity instanceof AbstractC0263a ? ((AbstractC0263a) activity).m13566i() : null;
        Intent intent = i;
        if (i == null) {
            intent = C0251g.m13645a(activity);
        }
        if (intent != null) {
            ComponentName component = intent.getComponent();
            ComponentName componentName = component;
            if (component == null) {
                componentName = intent.resolveActivity(this.f1663c.getPackageManager());
            }
            m13570k(componentName);
            m13572a(intent);
        }
        return this;
    }

    /* renamed from: k */
    public C0262o m13570k(ComponentName componentName) {
        int size = this.f1662b.size();
        try {
            Context context = this.f1663c;
            ComponentName componentName2 = componentName;
            while (true) {
                Intent b = C0251g.m13644b(context, componentName2);
                if (b == null) {
                    return this;
                }
                this.f1662b.add(size, b);
                context = this.f1663c;
                componentName2 = b.getComponent();
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: r */
    public void m13568r() {
        m13567u(null);
    }

    /* renamed from: u */
    public void m13567u(Bundle bundle) {
        if (!this.f1662b.isEmpty()) {
            ArrayList<Intent> arrayList = this.f1662b;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (!C0265a.m13547j(this.f1663c, intentArr, bundle)) {
                Intent intent = new Intent(intentArr[intentArr.length - 1]);
                intent.addFlags(268435456);
                this.f1663c.startActivity(intent);
                return;
            }
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }
}
