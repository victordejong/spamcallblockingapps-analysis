package com.facebook.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.login.EnumC2531a;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import p081h.p154f.C6131k;
import p081h.p154f.C6134m;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.internal.a0 */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/a0.class */
public final class C2372a0 {

    /* renamed from: a */
    public static final String f2943a = "com.facebook.internal.a0";

    /* renamed from: b */
    public static final List<AbstractC2378f> f2944b = m34947e();

    /* renamed from: c */
    public static final List<AbstractC2378f> f2945c = m34949d();

    /* renamed from: d */
    public static final Map<String, List<AbstractC2378f>> f2946d = m34952c();

    /* renamed from: e */
    public static final AtomicBoolean f2947e = new AtomicBoolean(false);

    /* renamed from: f */
    public static final List<Integer> f2948f = Arrays.asList(20170417, 20160327, 20141218, 20141107, 20141028, 20141001, 20140701, 20140324, 20140204, 20131107, 20130618, 20130502, 20121101);

    /* renamed from: com.facebook.internal.a0$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/a0$a.class */
    public static final class RunnableC2373a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            try {
                for (AbstractC2378f fVar : C2372a0.f2944b) {
                    fVar.m34939a(true);
                }
            } finally {
                C2372a0.f2947e.set(false);
            }
        }
    }

    /* renamed from: com.facebook.internal.a0$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/a0$b.class */
    public static class C2374b extends AbstractC2378f {
        public C2374b() {
            super(null);
        }

        public /* synthetic */ C2374b(RunnableC2373a aVar) {
            this();
        }

        @Override // com.facebook.internal.C2372a0.AbstractC2378f
        /* renamed from: b */
        public String mo34933b() {
            return null;
        }

        @Override // com.facebook.internal.C2372a0.AbstractC2378f
        /* renamed from: c */
        public String mo34932c() {
            return "com.facebook.arstudio.player";
        }
    }

    /* renamed from: com.facebook.internal.a0$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/a0$c.class */
    public static class C2375c extends AbstractC2378f {
        public C2375c() {
            super(null);
        }

        public /* synthetic */ C2375c(RunnableC2373a aVar) {
            this();
        }

        @Override // com.facebook.internal.C2372a0.AbstractC2378f
        /* renamed from: b */
        public String mo34933b() {
            return "com.facebook.lite.platform.LoginGDPDialogActivity";
        }

        @Override // com.facebook.internal.C2372a0.AbstractC2378f
        /* renamed from: c */
        public String mo34932c() {
            return "com.facebook.lite";
        }
    }

    /* renamed from: com.facebook.internal.a0$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/a0$d.class */
    public static class C2376d extends AbstractC2378f {
        public C2376d() {
            super(null);
        }

        public /* synthetic */ C2376d(RunnableC2373a aVar) {
            this();
        }

        @Override // com.facebook.internal.C2372a0.AbstractC2378f
        /* renamed from: b */
        public String mo34933b() {
            return "com.facebook.katana.ProxyAuth";
        }

        @Override // com.facebook.internal.C2372a0.AbstractC2378f
        /* renamed from: c */
        public String mo34932c() {
            return "com.facebook.katana";
        }
    }

    /* renamed from: com.facebook.internal.a0$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/a0$e.class */
    public static class C2377e extends AbstractC2378f {
        public C2377e() {
            super(null);
        }

        public /* synthetic */ C2377e(RunnableC2373a aVar) {
            this();
        }

        @Override // com.facebook.internal.C2372a0.AbstractC2378f
        /* renamed from: b */
        public String mo34933b() {
            return null;
        }

        @Override // com.facebook.internal.C2372a0.AbstractC2378f
        /* renamed from: c */
        public String mo34932c() {
            return "com.facebook.orca";
        }
    }

    /* renamed from: com.facebook.internal.a0$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/a0$f.class */
    public static abstract class AbstractC2378f {

        /* renamed from: a */
        public TreeSet<Integer> f2949a;

        public AbstractC2378f() {
        }

        public /* synthetic */ AbstractC2378f(RunnableC2373a aVar) {
            this();
        }

        /* renamed from: a */
        public TreeSet<Integer> m34941a() {
            TreeSet<Integer> treeSet = this.f2949a;
            if (treeSet == null || treeSet.isEmpty()) {
                m34939a(false);
            }
            return this.f2949a;
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
            if (r3.f2949a.isEmpty() == false) goto L_0x001f;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m34939a(boolean r4) {
            /*
                r3 = this;
                r0 = r3
                monitor-enter(r0)
                r0 = r4
                if (r0 != 0) goto L_0x0017
                r0 = r3
                java.util.TreeSet<java.lang.Integer> r0 = r0.f2949a     // Catch: all -> 0x0022
                if (r0 == 0) goto L_0x0017
                r0 = r3
                java.util.TreeSet<java.lang.Integer> r0 = r0.f2949a     // Catch: all -> 0x0022
                boolean r0 = r0.isEmpty()     // Catch: all -> 0x0022
                if (r0 == 0) goto L_0x001f
            L_0x0017:
                r0 = r3
                r1 = r3
                java.util.TreeSet r1 = com.facebook.internal.C2372a0.m34964a(r1)     // Catch: all -> 0x0022
                r0.f2949a = r1     // Catch: all -> 0x0022
            L_0x001f:
                r0 = r3
                monitor-exit(r0)
                return
            L_0x0022:
                r5 = move-exception
                r0 = r3
                monitor-exit(r0)
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C2372a0.AbstractC2378f.m34939a(boolean):void");
        }

        /* renamed from: b */
        public abstract String mo34933b();

        /* renamed from: c */
        public abstract String mo34932c();
    }

    /* renamed from: com.facebook.internal.a0$g */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/a0$g.class */
    public static class C2379g {

        /* renamed from: a */
        public AbstractC2378f f2950a;

        /* renamed from: b */
        public int f2951b;

        /* renamed from: a */
        public static C2379g m34937a(AbstractC2378f fVar, int i) {
            C2379g gVar = new C2379g();
            gVar.f2950a = fVar;
            gVar.f2951b = i;
            return gVar;
        }

        /* renamed from: b */
        public static C2379g m34935b() {
            C2379g gVar = new C2379g();
            gVar.f2951b = -1;
            return gVar;
        }

        /* renamed from: a */
        public int m34938a() {
            return this.f2951b;
        }
    }

    /* renamed from: com.facebook.internal.a0$h */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/a0$h.class */
    public static class C2380h extends AbstractC2378f {
        public C2380h() {
            super(null);
        }

        public /* synthetic */ C2380h(RunnableC2373a aVar) {
            this();
        }

        @Override // com.facebook.internal.C2372a0.AbstractC2378f
        /* renamed from: b */
        public String mo34933b() {
            return "com.facebook.katana.ProxyAuth";
        }

        @Override // com.facebook.internal.C2372a0.AbstractC2378f
        /* renamed from: c */
        public String mo34932c() {
            return "com.facebook.wakizashi";
        }
    }

    /* renamed from: a */
    public static int m34973a(int i) {
        return m34960a(f2944b, new int[]{i}).m34938a();
    }

    /* renamed from: a */
    public static int m34959a(TreeSet<Integer> treeSet, int i, int[] iArr) {
        int i2;
        int length = iArr.length;
        Iterator<Integer> descendingIterator = treeSet.descendingIterator();
        int i3 = length - 1;
        int i4 = -1;
        while (true) {
            i2 = -1;
            if (!descendingIterator.hasNext()) {
                break;
            }
            int intValue = descendingIterator.next().intValue();
            int max = Math.max(i4, intValue);
            while (i3 >= 0 && iArr[i3] > intValue) {
                i3--;
            }
            if (i3 < 0) {
                return -1;
            }
            i4 = max;
            i3 = i3;
            if (iArr[i3] == intValue) {
                i2 = -1;
                if (i3 % 2 == 0) {
                    i2 = Math.min(max, i);
                }
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static Intent m34972a(Context context) {
        for (AbstractC2378f fVar : f2944b) {
            Intent b = m34956b(context, new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage(fVar.mo34932c()).addCategory("android.intent.category.DEFAULT"), fVar);
            if (b != null) {
                return b;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static Intent m34971a(Context context, Intent intent, AbstractC2378f fVar) {
        ResolveInfo resolveActivity;
        if (intent == null || (resolveActivity = context.getPackageManager().resolveActivity(intent, 0)) == null || !C2438k.m34719a(context, resolveActivity.activityInfo.packageName)) {
            return null;
        }
        return intent;
    }

    /* renamed from: a */
    public static Intent m34970a(Context context, String str, String str2, C2379g gVar, Bundle bundle) {
        AbstractC2378f fVar;
        Intent a;
        if (gVar == null || (fVar = gVar.f2950a) == null || (a = m34971a(context, new Intent().setAction("com.facebook.platform.PLATFORM_ACTIVITY").setPackage(fVar.mo34932c()).addCategory("android.intent.category.DEFAULT"), fVar)) == null) {
            return null;
        }
        m34966a(a, str, str2, gVar.f2951b, bundle);
        return a;
    }

    /* renamed from: a */
    public static Intent m34969a(Context context, String str, Collection<String> collection, String str2, boolean z, boolean z2, EnumC2531a aVar, String str3, String str4) {
        C2375c cVar = new C2375c(null);
        return m34971a(context, m34963a(cVar, str, collection, str2, z, z2, aVar, str3, str4), cVar);
    }

    /* renamed from: a */
    public static Intent m34967a(Intent intent, Bundle bundle, C6131k kVar) {
        UUID b = m34954b(intent);
        if (b == null) {
            return null;
        }
        Intent intent2 = new Intent();
        intent2.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", m34946e(intent));
        Bundle bundle2 = new Bundle();
        bundle2.putString("action_id", b.toString());
        if (kVar != null) {
            bundle2.putBundle("error", m34962a(kVar));
        }
        intent2.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle2);
        if (bundle != null) {
            intent2.putExtra("com.facebook.platform.protocol.RESULT_ARGS", bundle);
        }
        return intent2;
    }

    /* renamed from: a */
    public static Intent m34963a(AbstractC2378f fVar, String str, Collection<String> collection, String str2, boolean z, boolean z2, EnumC2531a aVar, String str3, String str4) {
        String b = fVar.mo34933b();
        if (b == null) {
            return null;
        }
        Intent putExtra = new Intent().setClassName(fVar.mo34932c(), b).putExtra("client_id", str);
        putExtra.putExtra("facebook_sdk_version", C6135n.m23733r());
        if (!C2408g0.m34845a(collection)) {
            putExtra.putExtra("scope", TextUtils.join(",", collection));
        }
        if (!C2408g0.m34816d(str2)) {
            putExtra.putExtra("e2e", str2);
        }
        putExtra.putExtra(IapProductRealmObject.STATE, str3);
        putExtra.putExtra("response_type", "token,signed_request");
        putExtra.putExtra("return_scopes", "true");
        if (z2) {
            putExtra.putExtra("default_audience", aVar.m34399a());
        }
        putExtra.putExtra("legacy_override", C6135n.m23735p());
        putExtra.putExtra("auth_type", str4);
        return putExtra;
    }

    /* renamed from: a */
    public static Bundle m34968a(Intent intent) {
        if (!m34957b(m34946e(intent))) {
            return null;
        }
        return intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
    }

    /* renamed from: a */
    public static Bundle m34962a(C6131k kVar) {
        if (kVar == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("error_description", kVar.toString());
        if (kVar instanceof C6134m) {
            bundle.putString("error_type", "UserCanceled");
        }
        return bundle;
    }

    /* renamed from: a */
    public static C2379g m34961a(String str, int[] iArr) {
        return m34960a(f2946d.get(str), iArr);
    }

    /* renamed from: a */
    public static C2379g m34960a(List<AbstractC2378f> list, int[] iArr) {
        m34943g();
        if (list == null) {
            return C2379g.m34935b();
        }
        for (AbstractC2378f fVar : list) {
            int a = m34959a(fVar.m34941a(), m34945f(), iArr);
            if (a != -1) {
                return C2379g.m34937a(fVar, a);
            }
        }
        return C2379g.m34935b();
    }

    /* renamed from: a */
    public static C6131k m34965a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        String string = bundle.getString("error_type");
        String str = string;
        if (string == null) {
            str = bundle.getString("com.facebook.platform.status.ERROR_TYPE");
        }
        String string2 = bundle.getString("error_description");
        String str2 = string2;
        if (string2 == null) {
            str2 = bundle.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
        }
        return (str == null || !str.equalsIgnoreCase("UserCanceled")) ? new C6131k(str2) : new C6134m(str2);
    }

    /* renamed from: a */
    public static void m34966a(Intent intent, String str, String str2, int i, Bundle bundle) {
        String f = C6135n.m23745f();
        String g = C6135n.m23744g();
        intent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", i).putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", str2).putExtra("com.facebook.platform.extra.APPLICATION_ID", f);
        if (m34957b(i)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("action_id", str);
            C2408g0.m34868a(bundle2, "app_name", g);
            intent.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle2);
            Bundle bundle3 = bundle;
            if (bundle == null) {
                bundle3 = new Bundle();
            }
            intent.putExtra("com.facebook.platform.protocol.METHOD_ARGS", bundle3);
            return;
        }
        intent.putExtra("com.facebook.platform.protocol.CALL_ID", str);
        if (!C2408g0.m34816d(g)) {
            intent.putExtra("com.facebook.platform.extra.APPLICATION_NAME", g);
        }
        intent.putExtras(bundle);
    }

    /* renamed from: b */
    public static Intent m34956b(Context context, Intent intent, AbstractC2378f fVar) {
        ResolveInfo resolveService;
        if (intent == null || (resolveService = context.getPackageManager().resolveService(intent, 0)) == null || !C2438k.m34719a(context, resolveService.serviceInfo.packageName)) {
            return null;
        }
        return intent;
    }

    /* renamed from: b */
    public static Intent m34955b(Context context, String str, Collection<String> collection, String str2, boolean z, boolean z2, EnumC2531a aVar, String str3, String str4) {
        for (AbstractC2378f fVar : f2944b) {
            Intent a = m34971a(context, m34963a(fVar, str, collection, str2, z, z2, aVar, str3, str4), fVar);
            if (a != null) {
                return a;
            }
        }
        return null;
    }

    /* renamed from: b */
    public static Uri m34953b(AbstractC2378f fVar) {
        return Uri.parse("content://" + fVar.mo34932c() + ".provider.PlatformProvider/versions");
    }

    /* renamed from: b */
    public static UUID m34954b(Intent intent) {
        String str;
        if (intent == null) {
            return null;
        }
        if (m34957b(m34946e(intent))) {
            Bundle bundleExtra = intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
            str = bundleExtra != null ? bundleExtra.getString("action_id") : null;
        } else {
            str = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        }
        UUID uuid = null;
        if (str != null) {
            try {
                uuid = UUID.fromString(str);
            } catch (IllegalArgumentException e) {
                uuid = null;
            }
        }
        return uuid;
    }

    /* renamed from: b */
    public static boolean m34957b(int i) {
        return f2948f.contains(Integer.valueOf(i)) && i >= 20140701;
    }

    /* renamed from: c */
    public static Bundle m34951c(Intent intent) {
        if (!m34942g(intent)) {
            return null;
        }
        Bundle a = m34968a(intent);
        return a != null ? a.getBundle("error") : intent.getExtras();
    }

    /* renamed from: c */
    public static Map<String, List<AbstractC2378f>> m34952c() {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C2377e(null));
        hashMap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", f2944b);
        hashMap.put("com.facebook.platform.action.request.FEED_DIALOG", f2944b);
        hashMap.put("com.facebook.platform.action.request.LIKE_DIALOG", f2944b);
        hashMap.put("com.facebook.platform.action.request.APPINVITES_DIALOG", f2944b);
        hashMap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arrayList);
        hashMap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arrayList);
        hashMap.put("com.facebook.platform.action.request.CAMERA_EFFECT", f2945c);
        hashMap.put("com.facebook.platform.action.request.SHARE_STORY", f2944b);
        return hashMap;
    }

    /* renamed from: c */
    public static TreeSet<Integer> m34950c(AbstractC2378f fVar) {
        ProviderInfo providerInfo;
        TreeSet<Integer> treeSet = new TreeSet<>();
        ContentResolver contentResolver = C6135n.m23746e().getContentResolver();
        Uri b = m34953b(fVar);
        Cursor cursor = null;
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            PackageManager packageManager = C6135n.m23746e().getPackageManager();
            StringBuilder sb = new StringBuilder();
            sb.append(fVar.mo34932c());
            sb.append(".provider.PlatformProvider");
            cursor3 = null;
            try {
                providerInfo = packageManager.resolveContentProvider(sb.toString(), 0);
            } catch (RuntimeException e) {
                Log.e(f2943a, "Failed to query content resolver.", e);
                providerInfo = null;
            }
            if (providerInfo != null) {
                cursor3 = null;
                try {
                    cursor2 = contentResolver.query(b, new String[]{"version"}, null, null, null);
                } catch (IllegalArgumentException | NullPointerException | SecurityException e2) {
                    Log.e(f2943a, "Failed to query content resolver.");
                }
                cursor = cursor2;
                if (cursor2 != null) {
                    while (true) {
                        cursor = cursor2;
                        cursor3 = cursor2;
                        if (!cursor2.moveToNext()) {
                            break;
                        }
                        treeSet.add(Integer.valueOf(cursor2.getInt(cursor2.getColumnIndex("version"))));
                    }
                }
            }
            return treeSet;
        } finally {
            if (cursor3 != null) {
                cursor3.close();
            }
        }
    }

    /* renamed from: d */
    public static Bundle m34948d(Intent intent) {
        return !m34957b(m34946e(intent)) ? intent.getExtras() : intent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
    }

    /* renamed from: d */
    public static List<AbstractC2378f> m34949d() {
        ArrayList arrayList = new ArrayList(m34947e());
        arrayList.add(0, new C2374b(null));
        return arrayList;
    }

    /* renamed from: e */
    public static int m34946e(Intent intent) {
        return intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
    }

    /* renamed from: e */
    public static List<AbstractC2378f> m34947e() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C2376d(null));
        arrayList.add(new C2380h(null));
        return arrayList;
    }

    /* renamed from: f */
    public static final int m34945f() {
        return f2948f.get(0).intValue();
    }

    /* renamed from: f */
    public static Bundle m34944f(Intent intent) {
        int e = m34946e(intent);
        Bundle extras = intent.getExtras();
        Bundle bundle = extras;
        if (m34957b(e)) {
            bundle = extras == null ? extras : extras.getBundle("com.facebook.platform.protocol.RESULT_ARGS");
        }
        return bundle;
    }

    /* renamed from: g */
    public static void m34943g() {
        if (f2947e.compareAndSet(false, true)) {
            C6135n.m23737n().execute(new RunnableC2373a());
        }
    }

    /* renamed from: g */
    public static boolean m34942g(Intent intent) {
        Bundle a = m34968a(intent);
        return a != null ? a.containsKey("error") : intent.hasExtra("com.facebook.platform.status.ERROR_TYPE");
    }
}
