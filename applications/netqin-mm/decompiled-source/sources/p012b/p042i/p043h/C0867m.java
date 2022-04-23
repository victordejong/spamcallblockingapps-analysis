package p012b.p042i.p043h;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import p012b.p042i.p044i.C0869a;
/* renamed from: b.i.h.m */
/* loaded from: classes-dex2jar.jar:b/i/h/m.class */
public final class C0867m implements Iterable<Intent> {

    /* renamed from: a */
    public final ArrayList<Intent> f4056a = new ArrayList<>();

    /* renamed from: b */
    public final Context f4057b;

    /* renamed from: b.i.h.m$a */
    /* loaded from: classes-dex2jar.jar:b/i/h/m$a.class */
    public interface AbstractC0868a {
        /* renamed from: c */
        Intent mo35695c();
    }

    public C0867m(Context context) {
        this.f4057b = context;
    }

    /* renamed from: a */
    public static C0867m m35698a(Context context) {
        return new C0867m(context);
    }

    /* renamed from: a */
    public C0867m m35700a(Activity activity) {
        Intent c = activity instanceof AbstractC0868a ? ((AbstractC0868a) activity).mo35695c() : null;
        Intent intent = c;
        if (c == null) {
            intent = C0855f.m35774a(activity);
        }
        if (intent != null) {
            ComponentName component = intent.getComponent();
            ComponentName componentName = component;
            if (component == null) {
                componentName = intent.resolveActivity(this.f4057b.getPackageManager());
            }
            m35699a(componentName);
            m35697a(intent);
        }
        return this;
    }

    /* renamed from: a */
    public C0867m m35699a(ComponentName componentName) {
        int size = this.f4056a.size();
        try {
            Intent a = C0855f.m35772a(this.f4057b, componentName);
            while (a != null) {
                this.f4056a.add(size, a);
                a = C0855f.m35772a(this.f4057b, a.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    public C0867m m35697a(Intent intent) {
        this.f4056a.add(intent);
        return this;
    }

    /* renamed from: a */
    public void m35701a() {
        m35696a((Bundle) null);
    }

    /* renamed from: a */
    public void m35696a(Bundle bundle) {
        if (!this.f4056a.isEmpty()) {
            ArrayList<Intent> arrayList = this.f4056a;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (!C0869a.m35689a(this.f4057b, intentArr, bundle)) {
                Intent intent = new Intent(intentArr[intentArr.length - 1]);
                intent.addFlags(268435456);
                this.f4057b.startActivity(intent);
                return;
            }
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f4056a.iterator();
    }
}
