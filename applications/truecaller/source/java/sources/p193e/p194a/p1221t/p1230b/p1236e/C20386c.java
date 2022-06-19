package p193e.p194a.p1221t.p1230b.p1236e;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* renamed from: e.a.t.b.e.c */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/e/c.class */
public class C20386c {

    /* renamed from: a */
    public static final List<AbstractC20388b> f57263a;

    /* renamed from: e.a.t.b.e.c$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t/b/e/c$b.class */
    public static abstract class AbstractC20388b {

        /* renamed from: a */
        public static final Set<String> f57264a;

        static {
            HashSet hashSet = new HashSet(2);
            hashSet.add("0ac1169ae6cead75264c725febd8e8d941f25e31");
            hashSet.add("8a03e08e354a73ac49509c8b708fbe15aee2fb2a");
            f57264a = hashSet;
        }

        /* renamed from: a */
        public abstract String mo11210a();
    }

    /* renamed from: e.a.t.b.e.c$c */
    /* loaded from: classes5-dex2jar.jar:e/a/t/b/e/c$c.class */
    public static class C20389c extends AbstractC20388b {
        public C20389c(C20387a c20387a) {
        }

        @Override // p193e.p194a.p1221t.p1230b.p1236e.C20386c.AbstractC20388b
        /* renamed from: a */
        public String mo11210a() {
            return "com.truecaller";
        }
    }

    /* renamed from: e.a.t.b.e.c$d */
    /* loaded from: classes5-dex2jar.jar:e/a/t/b/e/c$d.class */
    public static class C20390d extends AbstractC20388b {
        public C20390d(C20387a c20387a) {
        }

        @Override // p193e.p194a.p1221t.p1230b.p1236e.C20386c.AbstractC20388b
        /* renamed from: a */
        public String mo11210a() {
            return "com.truecaller.debug";
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        f57263a = arrayList;
        arrayList.add(new C20389c(null));
        arrayList.add(new C20390d(null));
    }

    /* renamed from: a */
    public static Intent m11211a(Context context) {
        Intent addCategory;
        boolean z;
        boolean z2;
        Iterator<AbstractC20388b> it = f57263a.iterator();
        do {
            PackageInfo packageInfo = null;
            if (!it.hasNext()) {
                return null;
            }
            addCategory = new Intent("com.truecaller.android.sdk.intent.action.v1.oAuth").setPackage(it.next().mo11210a()).addCategory("android.intent.category.DEFAULT");
            ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(addCategory, 0);
            z = false;
            if (resolveActivity != null) {
                try {
                    packageInfo = context.getPackageManager().getPackageInfo(resolveActivity.activityInfo.packageName, 64);
                } catch (PackageManager.NameNotFoundException e) {
                }
                if (packageInfo != null) {
                    for (Signature signature : packageInfo.signatures) {
                        String Z = n.Z(signature.toByteArray());
                        if (Z != null && AbstractC20388b.f57264a.contains(Z)) {
                            z2 = true;
                            break;
                        }
                    }
                }
                z2 = false;
                z = false;
                if (z2) {
                    z = true;
                }
            }
        } while (!z);
        return addCategory;
    }
}
