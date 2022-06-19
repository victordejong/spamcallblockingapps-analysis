package com.facebook.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.C2095j;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.login.EnumC2118b;
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
/* renamed from: com.facebook.internal.s */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/s.class */
public final class C2064s {

    /* renamed from: a */
    private static final String f6089a = C2064s.class.getName();

    /* renamed from: b */
    private static final List<AbstractC2070e> f6090b = m15517e();

    /* renamed from: c */
    private static final List<AbstractC2070e> f6091c = m15516f();

    /* renamed from: d */
    private static final Map<String, List<AbstractC2070e>> f6092d = m15515g();

    /* renamed from: e */
    private static final AtomicBoolean f6093e = new AtomicBoolean(false);

    /* renamed from: f */
    private static final List<Integer> f6094f = Arrays.asList(20170417, 20160327, 20141218, 20141107, 20141028, 20141001, 20140701, 20140324, 20140204, 20131107, 20130618, 20130502, 20121101);

    /* renamed from: com.facebook.internal.s$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/s$a.class */
    public static class C2066a extends AbstractC2070e {
        private C2066a() {
            super();
        }

        @Override // com.facebook.internal.C2064s.AbstractC2070e
        /* renamed from: a */
        protected String mo15508a() {
            return "com.facebook.arstudio.player";
        }

        @Override // com.facebook.internal.C2064s.AbstractC2070e
        /* renamed from: b */
        protected String mo15507b() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.facebook.internal.s$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/s$b.class */
    public static class C2067b extends AbstractC2070e {
        private C2067b() {
            super();
        }

        @Override // com.facebook.internal.C2064s.AbstractC2070e
        /* renamed from: a */
        protected String mo15508a() {
            return "com.facebook.lite";
        }

        @Override // com.facebook.internal.C2064s.AbstractC2070e
        /* renamed from: b */
        protected String mo15507b() {
            return "com.facebook.lite.platform.LoginGDPDialogActivity";
        }
    }

    /* renamed from: com.facebook.internal.s$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/s$c.class */
    public static class C2068c extends AbstractC2070e {
        private C2068c() {
            super();
        }

        @Override // com.facebook.internal.C2064s.AbstractC2070e
        /* renamed from: a */
        protected String mo15508a() {
            return "com.facebook.katana";
        }

        @Override // com.facebook.internal.C2064s.AbstractC2070e
        /* renamed from: b */
        protected String mo15507b() {
            return "com.facebook.katana.ProxyAuth";
        }
    }

    /* renamed from: com.facebook.internal.s$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/s$d.class */
    public static class C2069d extends AbstractC2070e {
        private C2069d() {
            super();
        }

        @Override // com.facebook.internal.C2064s.AbstractC2070e
        /* renamed from: a */
        protected String mo15508a() {
            return "com.facebook.orca";
        }

        @Override // com.facebook.internal.C2064s.AbstractC2070e
        /* renamed from: b */
        protected String mo15507b() {
            return null;
        }
    }

    /* renamed from: com.facebook.internal.s$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/s$e.class */
    public static abstract class AbstractC2070e {

        /* renamed from: a */
        private TreeSet<Integer> f6095a;

        private AbstractC2070e() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
            if (r3.f6095a.isEmpty() == false) goto L12;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m15513a(boolean r4) {
            /*
                r3 = this;
                r0 = r3
                monitor-enter(r0)
                r0 = r4
                if (r0 != 0) goto L17
                r0 = r3
                java.util.TreeSet<java.lang.Integer> r0 = r0.f6095a     // Catch: java.lang.Throwable -> L22
                if (r0 == 0) goto L17
                r0 = r3
                java.util.TreeSet<java.lang.Integer> r0 = r0.f6095a     // Catch: java.lang.Throwable -> L22
                boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L22
                if (r0 == 0) goto L1f
            L17:
                r0 = r3
                r1 = r3
                java.util.TreeSet r1 = com.facebook.internal.C2064s.m15531a(r1)     // Catch: java.lang.Throwable -> L22
                r0.f6095a = r1     // Catch: java.lang.Throwable -> L22
            L1f:
                r0 = r3
                monitor-exit(r0)
                return
            L22:
                r5 = move-exception
                r0 = r3
                monitor-exit(r0)
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C2064s.AbstractC2070e.m15513a(boolean):void");
        }

        /* renamed from: a */
        protected abstract String mo15508a();

        /* renamed from: b */
        protected abstract String mo15507b();

        /* renamed from: c */
        public TreeSet<Integer> m15512c() {
            if (this.f6095a == null || this.f6095a.isEmpty()) {
                m15513a(false);
            }
            return this.f6095a;
        }
    }

    /* renamed from: com.facebook.internal.s$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/s$f.class */
    public static class C2071f {

        /* renamed from: a */
        private AbstractC2070e f6096a;

        /* renamed from: b */
        private int f6097b;

        private C2071f() {
        }

        /* renamed from: a */
        public static C2071f m15511a() {
            C2071f c2071f = new C2071f();
            c2071f.f6097b = -1;
            return c2071f;
        }

        /* renamed from: a */
        public static C2071f m15510a(AbstractC2070e abstractC2070e, int i) {
            C2071f c2071f = new C2071f();
            c2071f.f6096a = abstractC2070e;
            c2071f.f6097b = i;
            return c2071f;
        }

        /* renamed from: b */
        public int m15509b() {
            return this.f6097b;
        }
    }

    /* renamed from: com.facebook.internal.s$g */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/s$g.class */
    public static class C2072g extends AbstractC2070e {
        private C2072g() {
            super();
        }

        @Override // com.facebook.internal.C2064s.AbstractC2070e
        /* renamed from: a */
        protected String mo15508a() {
            return "com.facebook.wakizashi";
        }

        @Override // com.facebook.internal.C2064s.AbstractC2070e
        /* renamed from: b */
        protected String mo15507b() {
            return "com.facebook.katana.ProxyAuth";
        }
    }

    /* renamed from: a */
    public static final int m15540a() {
        return f6094f.get(0).intValue();
    }

    /* renamed from: a */
    public static int m15535a(Intent intent) {
        return intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
    }

    /* renamed from: a */
    public static int m15528a(TreeSet<Integer> treeSet, int i, int[] iArr) {
        int i2;
        int length = iArr.length;
        Iterator<Integer> descendingIterator = treeSet.descendingIterator();
        int i3 = -1;
        int i4 = length - 1;
        while (true) {
            i2 = -1;
            if (!descendingIterator.hasNext()) {
                break;
            }
            int intValue = descendingIterator.next().intValue();
            i3 = Math.max(i3, intValue);
            while (i4 >= 0 && iArr[i4] > intValue) {
                i4--;
            }
            if (i4 < 0) {
                i2 = -1;
                break;
            } else if (iArr[i4] == intValue) {
                i2 = -1;
                if (i4 % 2 == 0) {
                    i2 = Math.min(i3, i);
                }
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static Intent m15538a(Context context) {
        Intent intent;
        Iterator<AbstractC2070e> it = f6090b.iterator();
        while (true) {
            if (!it.hasNext()) {
                intent = null;
                break;
            }
            AbstractC2070e next = it.next();
            Intent m15525b = m15525b(context, new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage(next.mo15508a()).addCategory("android.intent.category.DEFAULT"), next);
            if (m15525b != null) {
                intent = m15525b;
                break;
            }
        }
        return intent;
    }

    /* renamed from: a */
    static Intent m15537a(Context context, Intent intent, AbstractC2070e abstractC2070e) {
        if (intent == null) {
            intent = null;
        } else {
            ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
            if (resolveActivity == null) {
                intent = null;
            } else if (!C2036h.m15628a(context, resolveActivity.activityInfo.packageName)) {
                intent = null;
            }
        }
        return intent;
    }

    /* renamed from: a */
    public static Intent m15536a(Context context, String str, Collection<String> collection, String str2, boolean z, boolean z2, EnumC2118b enumC2118b, String str3, String str4) {
        C2067b c2067b = new C2067b();
        return m15537a(context, m15530a(c2067b, str, collection, str2, z, z2, enumC2118b, str3, str4), c2067b);
    }

    /* renamed from: a */
    public static Intent m15534a(Intent intent, Bundle bundle, FacebookException facebookException) {
        Intent intent2;
        UUID m15523b = m15523b(intent);
        if (m15523b == null) {
            intent2 = null;
        } else {
            Intent intent3 = new Intent();
            intent3.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", m15535a(intent));
            Bundle bundle2 = new Bundle();
            bundle2.putString("action_id", m15523b.toString());
            if (facebookException != null) {
                bundle2.putBundle("error", m15532a(facebookException));
            }
            intent3.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle2);
            intent2 = intent3;
            if (bundle != null) {
                intent3.putExtra("com.facebook.platform.protocol.RESULT_ARGS", bundle);
                intent2 = intent3;
            }
        }
        return intent2;
    }

    /* renamed from: a */
    private static Intent m15530a(AbstractC2070e abstractC2070e, String str, Collection<String> collection, String str2, boolean z, boolean z2, EnumC2118b enumC2118b, String str3, String str4) {
        Intent putExtra;
        String mo15507b = abstractC2070e.mo15507b();
        if (mo15507b == null) {
            putExtra = null;
        } else {
            putExtra = new Intent().setClassName(abstractC2070e.mo15508a(), mo15507b).putExtra("client_id", str);
            putExtra.putExtra("facebook_sdk_version", C2095j.m15358j());
            if (!C2079x.m15462a(collection)) {
                putExtra.putExtra("scope", TextUtils.join(",", collection));
            }
            if (!C2079x.m15472a(str2)) {
                putExtra.putExtra("e2e", str2);
            }
            putExtra.putExtra("state", str3);
            putExtra.putExtra("response_type", "token,signed_request,graph_domain");
            putExtra.putExtra("return_scopes", "true");
            if (z2) {
                putExtra.putExtra("default_audience", enumC2118b.m15255a());
            }
            putExtra.putExtra("legacy_override", C2095j.m15359i());
            putExtra.putExtra("auth_type", str4);
        }
        return putExtra;
    }

    /* renamed from: a */
    public static Bundle m15532a(FacebookException facebookException) {
        Bundle bundle;
        if (facebookException == null) {
            bundle = null;
        } else {
            Bundle bundle2 = new Bundle();
            bundle2.putString("error_description", facebookException.toString());
            bundle = bundle2;
            if (facebookException instanceof FacebookOperationCanceledException) {
                bundle2.putString("error_type", "UserCanceled");
                bundle = bundle2;
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public static FacebookException m15533a(Bundle bundle) {
        FacebookOperationCanceledException facebookException;
        if (bundle == null) {
            facebookException = null;
        } else {
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
            facebookException = (str == null || !str.equalsIgnoreCase("UserCanceled")) ? new FacebookException(str2) : new FacebookOperationCanceledException(str2);
        }
        return facebookException;
    }

    /* renamed from: a */
    private static C2071f m15529a(List<AbstractC2070e> list, int[] iArr) {
        C2071f m15511a;
        m15527b();
        if (list != null) {
            Iterator<AbstractC2070e> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    m15511a = C2071f.m15511a();
                    break;
                }
                AbstractC2070e next = it.next();
                int m15528a = m15528a(next.m15512c(), m15540a(), iArr);
                if (m15528a != -1) {
                    m15511a = C2071f.m15510a(next, m15528a);
                    break;
                }
            }
        } else {
            m15511a = C2071f.m15511a();
        }
        return m15511a;
    }

    /* renamed from: a */
    public static boolean m15539a(int i) {
        return f6094f.contains(Integer.valueOf(i)) && i >= 20140701;
    }

    /* renamed from: b */
    public static int m15526b(int i) {
        return m15529a(f6090b, new int[]{i}).m15509b();
    }

    /* renamed from: b */
    static Intent m15525b(Context context, Intent intent, AbstractC2070e abstractC2070e) {
        if (intent == null) {
            intent = null;
        } else {
            ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
            if (resolveService == null) {
                intent = null;
            } else if (!C2036h.m15628a(context, resolveService.serviceInfo.packageName)) {
                intent = null;
            }
        }
        return intent;
    }

    /* renamed from: b */
    public static Intent m15524b(Context context, String str, Collection<String> collection, String str2, boolean z, boolean z2, EnumC2118b enumC2118b, String str3, String str4) {
        Intent intent;
        Iterator<AbstractC2070e> it = f6090b.iterator();
        while (true) {
            if (!it.hasNext()) {
                intent = null;
                break;
            }
            AbstractC2070e next = it.next();
            Intent m15537a = m15537a(context, m15530a(next, str, collection, str2, z, z2, enumC2118b, str3, str4), next);
            if (m15537a != null) {
                intent = m15537a;
                break;
            }
        }
        return intent;
    }

    /* renamed from: b */
    public static TreeSet<Integer> m15522b(AbstractC2070e abstractC2070e) {
        Cursor cursor;
        ProviderInfo providerInfo;
        Cursor cursor2;
        TreeSet<Integer> treeSet = new TreeSet<>();
        ContentResolver contentResolver = C2095j.m15360h().getContentResolver();
        Uri m15519c = m15519c(abstractC2070e);
        try {
            try {
                providerInfo = C2095j.m15360h().getPackageManager().resolveContentProvider(abstractC2070e.mo15508a() + ".provider.PlatformProvider", 0);
            } catch (RuntimeException e) {
                Log.e(f6089a, "Failed to query content resolver.", e);
                providerInfo = null;
            }
            if (providerInfo != null) {
                try {
                    cursor = contentResolver.query(m15519c, new String[]{"version"}, null, null, null);
                } catch (IllegalArgumentException | NullPointerException | SecurityException e2) {
                    Log.e(f6089a, "Failed to query content resolver.");
                    cursor = null;
                }
                cursor2 = cursor;
                if (cursor != null) {
                    while (true) {
                        cursor2 = cursor;
                        try {
                            if (!cursor.moveToNext()) {
                                break;
                            }
                            treeSet.add(Integer.valueOf(cursor.getInt(cursor.getColumnIndex("version"))));
                        } catch (Throwable th) {
                            th = th;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                }
            } else {
                cursor2 = null;
            }
            if (cursor2 != null) {
                cursor2.close();
            }
            return treeSet;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    /* renamed from: b */
    public static UUID m15523b(Intent intent) {
        String stringExtra;
        UUID uuid;
        if (intent == null) {
            uuid = null;
        } else {
            if (m15539a(m15535a(intent))) {
                Bundle bundleExtra = intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
                stringExtra = bundleExtra != null ? bundleExtra.getString("action_id") : null;
            } else {
                stringExtra = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
            }
            uuid = null;
            if (stringExtra != null) {
                try {
                    uuid = UUID.fromString(stringExtra);
                } catch (IllegalArgumentException e) {
                    uuid = null;
                }
            }
        }
        return uuid;
    }

    /* renamed from: b */
    public static void m15527b() {
        if (!f6093e.compareAndSet(false, true)) {
            return;
        }
        C2095j.m15362f().execute(new Runnable() { // from class: com.facebook.internal.s.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    for (AbstractC2070e abstractC2070e : C2064s.f6090b) {
                        abstractC2070e.m15513a(true);
                    }
                } finally {
                    C2064s.f6093e.set(false);
                }
            }
        });
    }

    /* renamed from: c */
    private static Uri m15519c(AbstractC2070e abstractC2070e) {
        return Uri.parse("content://" + abstractC2070e.mo15508a() + ".provider.PlatformProvider/versions");
    }

    /* renamed from: c */
    public static Bundle m15520c(Intent intent) {
        return !m15539a(m15535a(intent)) ? intent.getExtras() : intent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
    }

    /* renamed from: e */
    private static List<AbstractC2070e> m15517e() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C2068c());
        arrayList.add(new C2072g());
        return arrayList;
    }

    /* renamed from: f */
    private static List<AbstractC2070e> m15516f() {
        ArrayList arrayList = new ArrayList(m15517e());
        arrayList.add(0, new C2066a());
        return arrayList;
    }

    /* renamed from: g */
    private static Map<String, List<AbstractC2070e>> m15515g() {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C2069d());
        hashMap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", f6090b);
        hashMap.put("com.facebook.platform.action.request.FEED_DIALOG", f6090b);
        hashMap.put("com.facebook.platform.action.request.LIKE_DIALOG", f6090b);
        hashMap.put("com.facebook.platform.action.request.APPINVITES_DIALOG", f6090b);
        hashMap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arrayList);
        hashMap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arrayList);
        hashMap.put("com.facebook.platform.action.request.CAMERA_EFFECT", f6091c);
        hashMap.put("com.facebook.platform.action.request.SHARE_STORY", f6090b);
        return hashMap;
    }
}
