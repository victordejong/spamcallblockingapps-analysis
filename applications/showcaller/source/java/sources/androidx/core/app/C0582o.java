package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.core.content.C0586a;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.core.app.o */
/* loaded from: classes-dex2jar.jar:androidx/core/app/o.class */
public final class C0582o implements Iterable<Intent> {

    /* renamed from: d */
    private final ArrayList<Intent> f2943d = new ArrayList<>();

    /* renamed from: e */
    private final Context f2944e;

    /* renamed from: androidx.core.app.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/o$a.class */
    public interface AbstractC0583a {
        /* renamed from: o */
        Intent mo33364o();
    }

    private C0582o(Context context) {
        this.f2944e = context;
    }

    /* renamed from: h */
    public static C0582o m33367h(Context context) {
        return new C0582o(context);
    }

    /* renamed from: c */
    public C0582o m33370c(Intent intent) {
        this.f2943d.add(intent);
        return this;
    }

    /* renamed from: d */
    public C0582o m33369d(Activity activity) {
        Intent mo33364o = activity instanceof AbstractC0583a ? ((AbstractC0583a) activity).mo33364o() : null;
        Intent intent = mo33364o;
        if (mo33364o == null) {
            intent = C0563f.m33457a(activity);
        }
        if (intent != null) {
            ComponentName component = intent.getComponent();
            ComponentName componentName = component;
            if (component == null) {
                componentName = intent.resolveActivity(this.f2944e.getPackageManager());
            }
            m33368e(componentName);
            m33370c(intent);
        }
        return this;
    }

    /* renamed from: e */
    public C0582o m33368e(ComponentName componentName) {
        int size = this.f2943d.size();
        try {
            Intent m33456b = C0563f.m33456b(this.f2944e, componentName);
            while (m33456b != null) {
                this.f2943d.add(size, m33456b);
                m33456b = C0563f.m33456b(this.f2944e, m33456b.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: i */
    public void m33366i() {
        m33365j(null);
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f2943d.iterator();
    }

    /* renamed from: j */
    public void m33365j(Bundle bundle) {
        if (!this.f2943d.isEmpty()) {
            ArrayList<Intent> arrayList = this.f2943d;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (C0586a.m33344j(this.f2944e, intentArr, bundle)) {
                return;
            }
            Intent intent = new Intent(intentArr[intentArr.length - 1]);
            intent.addFlags(268435456);
            this.f2944e.startActivity(intent);
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }
}
