package p193e.p194a.p1221t.p1230b;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.database.Cursor;
import android.net.Uri;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import p193e.p194a.p1221t.p1230b.p1231c.C20358c;
/* renamed from: e.a.t.b.b */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/b.class */
public class C20349b {

    /* renamed from: a */
    public static final List<AbstractC20351b> f57190a;

    /* renamed from: e.a.t.b.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t/b/b$b.class */
    public static abstract class AbstractC20351b {

        /* renamed from: a */
        public static final Set<String> f57191a;

        static {
            HashSet hashSet = new HashSet(2);
            hashSet.add("0ac1169ae6cead75264c725febd8e8d941f25e31");
            hashSet.add("8a03e08e354a73ac49509c8b708fbe15aee2fb2a");
            f57191a = hashSet;
        }

        /* renamed from: a */
        public abstract String mo11231a();
    }

    /* renamed from: e.a.t.b.b$c */
    /* loaded from: classes5-dex2jar.jar:e/a/t/b/b$c.class */
    public static class C20352c extends AbstractC20351b {
        public C20352c(C20350a c20350a) {
        }

        @Override // p193e.p194a.p1221t.p1230b.C20349b.AbstractC20351b
        /* renamed from: a */
        public String mo11231a() {
            return "com.truecaller";
        }
    }

    /* renamed from: e.a.t.b.b$d */
    /* loaded from: classes5-dex2jar.jar:e/a/t/b/b$d.class */
    public static class C20353d extends AbstractC20351b {
        public C20353d(C20350a c20350a) {
        }

        @Override // p193e.p194a.p1221t.p1230b.C20349b.AbstractC20351b
        /* renamed from: a */
        public String mo11231a() {
            return "com.truecaller.debug";
        }
    }

    /* renamed from: e.a.t.b.b$e */
    /* loaded from: classes5-dex2jar.jar:e/a/t/b/b$e.class */
    public static class C20354e extends AbstractC20351b {
        public C20354e(C20350a c20350a) {
        }

        @Override // p193e.p194a.p1221t.p1230b.C20349b.AbstractC20351b
        /* renamed from: a */
        public String mo11231a() {
            return "com.truecaller.messenger";
        }
    }

    /* renamed from: e.a.t.b.b$f */
    /* loaded from: classes5-dex2jar.jar:e/a/t/b/b$f.class */
    public static class C20355f extends AbstractC20351b {
        public C20355f(C20350a c20350a) {
        }

        @Override // p193e.p194a.p1221t.p1230b.C20349b.AbstractC20351b
        /* renamed from: a */
        public String mo11231a() {
            return "com.truecaller.messenger.debug";
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        f57190a = arrayList;
        arrayList.add(new C20352c(null));
        arrayList.add(new C20354e(null));
        arrayList.add(new C20353d(null));
        arrayList.add(new C20355f(null));
    }

    /* renamed from: a */
    public static Intent m11234a(Context context, String str) {
        AbstractC20351b next;
        Intent addCategory;
        boolean z;
        boolean z2;
        boolean z3;
        Iterator<AbstractC20351b> it = f57190a.iterator();
        do {
            PackageInfo packageInfo = null;
            if (!it.hasNext()) {
                return null;
            }
            next = it.next();
            addCategory = new Intent(str).setPackage(next.mo11231a()).addCategory("android.intent.category.DEFAULT");
            ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(addCategory, 0);
            if (resolveActivity != null) {
                try {
                    packageInfo = context.getPackageManager().getPackageInfo(resolveActivity.activityInfo.packageName, 64);
                } catch (PackageManager.NameNotFoundException e) {
                }
                if (packageInfo != null) {
                    for (Signature signature : packageInfo.signatures) {
                        String Y = n.Y(signature.toByteArray());
                        if (Y != null && AbstractC20351b.f57191a.contains(Y)) {
                            z3 = true;
                            break;
                        }
                    }
                }
                z3 = false;
                if (z3) {
                    z = true;
                }
            }
            z = false;
        } while (!z);
        if (str.equals("com.truecaller.android.sdk.intent.action.v3.SHARE_PROFILE")) {
            try {
                Cursor query = context.getContentResolver().query(Uri.parse("content://" + next.mo11231a() + ".TcInfoContentProvider/tcBottomSheet"), null, null, null, null);
                if (query == null || !query.moveToFirst()) {
                    z2 = true;
                    if (query != null) {
                        query.close();
                        z2 = true;
                    }
                } else {
                    z2 = false;
                    if (query.getInt(0) == 1) {
                        z2 = true;
                    }
                    query.close();
                }
            } catch (Exception e2) {
                z2 = true;
            }
            if (!z2) {
                addCategory.setAction("com.truecaller.android.sdk.intent.action.v1.SHARE_PROFILE");
            }
        }
        return addCategory;
    }

    /* renamed from: b */
    public static Intent m11233b(Context context, C20358c c20358c) {
        if (c20358c != null) {
            Intent intent = null;
            if (c20358c.m11229b(8)) {
                intent = m11234a(context, "com.truecaller.android.sdk.intent.action.v2.SHARE_PROFILE");
            } else if (c20358c.m11229b(128)) {
                intent = m11234a(context, "com.truecaller.android.sdk.intent.action.v3.SHARE_PROFILE");
            }
            if (intent != null) {
                return intent;
            }
        }
        return m11234a(context, "com.truecaller.android.sdk.intent.action.v1.SHARE_PROFILE");
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0158, code lost:
        if (r13 == false) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c3  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m11232c(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1221t.p1230b.C20349b.m11232c(android.content.Context):boolean");
    }
}
