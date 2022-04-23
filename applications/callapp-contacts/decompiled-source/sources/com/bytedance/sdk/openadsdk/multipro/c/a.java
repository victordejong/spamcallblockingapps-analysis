package com.bytedance.sdk.openadsdk.multipro.c;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.d.f;
import com.bytedance.sdk.openadsdk.d.g;
import com.bytedance.sdk.openadsdk.d.h;
import com.bytedance.sdk.openadsdk.d.m;
import com.bytedance.sdk.openadsdk.d.o;
import com.bytedance.sdk.openadsdk.d.p;
import com.bytedance.sdk.openadsdk.i.b.c;
import com.bytedance.sdk.openadsdk.multipro.e;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/c/a.class */
public class a implements com.bytedance.sdk.openadsdk.multipro.a {

    /* renamed from: a  reason: collision with root package name */
    private Context f9892a;

    /* renamed from: com.bytedance.sdk.openadsdk.multipro.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/c/a$a.class */
    static class C0182a implements com.bytedance.sdk.openadsdk.i.a.a {

        /* renamed from: a  reason: collision with root package name */
        JSONObject f9893a;

        private C0182a(String str) {
            try {
                this.f9893a = new JSONObject(str);
            } catch (Throwable th) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static C0182a b(String str) {
            return new C0182a(str);
        }

        @Override // com.bytedance.sdk.openadsdk.i.a.a
        public JSONObject a() {
            return this.f9893a;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/c/a$b.class */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        private static volatile com.bytedance.sdk.openadsdk.d.c<com.bytedance.sdk.openadsdk.d.a> f9894a;

        /* renamed from: b  reason: collision with root package name */
        private static volatile com.bytedance.sdk.openadsdk.d.c<c.a> f9895b;

        /* renamed from: c  reason: collision with root package name */
        private static volatile com.bytedance.sdk.openadsdk.d.c<c.a> f9896c;

        static com.bytedance.sdk.openadsdk.d.c<com.bytedance.sdk.openadsdk.d.a> a() {
            if (f9894a == null) {
                synchronized (n.class) {
                    try {
                        if (f9894a == null) {
                            f9894a = new com.bytedance.sdk.openadsdk.d.c<>(new g(n.a()), n.f(), h.b.a(), d());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f9894a;
        }

        public static com.bytedance.sdk.openadsdk.d.c<c.a> a(String str, String str2, boolean z) {
            h.b bVar;
            f fVar;
            if (z) {
                fVar = new o(n.a());
                bVar = h.b.a();
            } else {
                bVar = h.b.b();
                fVar = new m(n.a());
            }
            h.a d2 = d();
            return new com.bytedance.sdk.openadsdk.d.c<>(fVar, null, bVar, d2, new p(str, str2, fVar, null, bVar, d2));
        }

        public static com.bytedance.sdk.openadsdk.d.c<c.a> b() {
            if (f9896c == null) {
                synchronized (n.class) {
                    try {
                        if (f9896c == null) {
                            f9896c = a("ttad_bk_batch_stats", "AdStatsEventBatchThread", false);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f9896c;
        }

        public static com.bytedance.sdk.openadsdk.d.c<c.a> c() {
            if (f9895b == null) {
                synchronized (n.class) {
                    try {
                        if (f9895b == null) {
                            f9895b = a("ttad_bk_stats", "AdStatsEventThread", true);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f9895b;
        }

        private static h.a d() {
            return new h.a() { // from class: com.bytedance.sdk.openadsdk.multipro.c.a.b.1
                @Override // com.bytedance.sdk.openadsdk.d.h.a
                public final boolean a() {
                    return t.a(n.a());
                }
            };
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/c/a$c.class */
    static class c {

        /* renamed from: a  reason: collision with root package name */
        private static volatile com.bytedance.sdk.openadsdk.i.b.c f9897a;

        public static com.bytedance.sdk.openadsdk.i.b.c a() {
            if (f9897a == null) {
                synchronized (com.bytedance.sdk.openadsdk.i.b.c.class) {
                    try {
                        if (f9897a == null) {
                            f9897a = new com.bytedance.sdk.openadsdk.i.b.c();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f9897a;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/c/a$d.class */
    static class d {

        /* renamed from: a  reason: collision with root package name */
        private static volatile com.bytedance.sdk.openadsdk.m.a f9898a;

        public static com.bytedance.sdk.openadsdk.m.a a() {
            if (f9898a == null) {
                synchronized (com.bytedance.sdk.openadsdk.m.a.class) {
                    try {
                        if (f9898a == null) {
                            f9898a = new com.bytedance.sdk.openadsdk.m.b(n.a(), new com.bytedance.sdk.openadsdk.m.h(n.a()));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f9898a;
        }
    }

    public static void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            q.b("AdEventProviderImpl", "dispatch event");
            try {
                ContentResolver f = f();
                if (f != null) {
                    String a2 = com.bytedance.sdk.openadsdk.multipro.c.a(str);
                    f.getType(Uri.parse(g() + "adEventDispatch?event=" + a2));
                }
            } catch (Throwable th) {
                q.e("AdEventProviderImpl", "dispatch event Throwable:" + th.toString());
            }
        }
    }

    public static void a(String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            try {
                ContentResolver f = f();
                if (f != null) {
                    f.getType(Uri.parse(g() + "logStatusDispatch" + ("?event=" + com.bytedance.sdk.openadsdk.multipro.c.a(str) + "&isRealTime=" + String.valueOf(z))));
                }
            } catch (Throwable th) {
            }
        }
    }

    public static void a(List<String> list) {
        if (list != null && !list.isEmpty()) {
            try {
                StringBuilder sb = new StringBuilder();
                for (String str : list) {
                    sb.append(com.bytedance.sdk.openadsdk.multipro.c.a(str));
                    sb.append(",");
                }
                String a2 = com.bytedance.sdk.openadsdk.multipro.c.a(sb.toString());
                String str2 = "?track=" + String.valueOf(a2);
                ContentResolver f = f();
                if (f != null) {
                    f.getType(Uri.parse(g() + "trackUrl" + str2));
                }
            } catch (Throwable th) {
            }
        }
    }

    public static void a(boolean z) {
        if (n.a() != null) {
            try {
                ContentResolver f = f();
                if (f != null) {
                    f.getType(Uri.parse(g() + "logStatusStart" + ("?isRealTime=" + String.valueOf(z))));
                }
            } catch (Throwable th) {
            }
        }
    }

    public static void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                ContentResolver f = f();
                if (f != null) {
                    String a2 = com.bytedance.sdk.openadsdk.multipro.c.a(str);
                    f.getType(Uri.parse(g() + "logStatusUpload?event=" + a2));
                }
            } catch (Throwable th) {
            }
        }
    }

    public static void c() {
        if (n.a() != null) {
            try {
                ContentResolver f = f();
                if (f != null) {
                    f.getType(Uri.parse(g() + "adEventStart"));
                }
            } catch (Throwable th) {
            }
        }
    }

    public static void d() {
        try {
            ContentResolver f = f();
            if (f != null) {
                f.getType(Uri.parse(g() + "trackFailed"));
            }
        } catch (Throwable th) {
        }
    }

    public static void e() {
        try {
            ContentResolver f = f();
            if (f != null) {
                f.getType(Uri.parse(g() + "logStatusInit"));
            }
        } catch (Throwable th) {
        }
    }

    private static ContentResolver f() {
        try {
            if (n.a() != null) {
                return n.a().getContentResolver();
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    private static String g() {
        return e.f9904b + "/t_event_ad_event/";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public int a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public int a(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public Cursor a(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public Uri a(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public String a() {
        return "t_event_ad_event";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public String a(Uri uri) {
        String str = uri.getPath().split("/")[2];
        if ("adEventStart".equals(str)) {
            q.b("AdEventProviderImpl", "====ad event function will be start====");
            b.a().a();
            return null;
        } else if ("logStatusStart".equals(str)) {
            q.b("AdEventProviderImpl", "====log stats function will be start====");
            if (Boolean.valueOf(uri.getQueryParameter("isRealTime")).booleanValue()) {
                b.c().a();
                return null;
            }
            b.b().a();
            return null;
        } else if ("adEventDispatch".equals(str)) {
            q.b("AdEventProviderImpl", "dispatch FUN_AD_EVENT_DISPATCH");
            com.bytedance.sdk.openadsdk.d.a a2 = com.bytedance.sdk.openadsdk.d.a.a(com.bytedance.sdk.openadsdk.multipro.c.b(uri.getQueryParameter("event")));
            if (a2 == null) {
                return null;
            }
            b.a().a(a2);
            return null;
        } else if ("logStatusDispatch".equals(str)) {
            Boolean valueOf = Boolean.valueOf(uri.getQueryParameter("isRealTime"));
            c.a a3 = c.a.a(com.bytedance.sdk.openadsdk.multipro.c.b(uri.getQueryParameter("event")));
            if (a3 == null) {
                return null;
            }
            if (valueOf.booleanValue()) {
                b.c().a(a3);
                return null;
            }
            b.b().a(a3);
            return null;
        } else if ("trackUrl".equals(str)) {
            try {
                String[] split = com.bytedance.sdk.openadsdk.multipro.c.b(uri.getQueryParameter("track")).split(",");
                if (split.length <= 0) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                for (String str2 : split) {
                    String b2 = com.bytedance.sdk.openadsdk.multipro.c.b(str2);
                    if (!TextUtils.isEmpty(b2)) {
                        arrayList.add(b2);
                    }
                }
                d.a().a(arrayList);
                return null;
            } catch (Throwable th) {
                return null;
            }
        } else if ("trackFailed".equals(str)) {
            d.a().a();
            q.b("AdEventProviderImpl", "track failed: ");
            return null;
        } else if ("logStatusInit".equals(str)) {
            c.a().a();
            return null;
        } else if (!"logStatusUpload".equals(str)) {
            return null;
        } else {
            String b3 = com.bytedance.sdk.openadsdk.multipro.c.b(uri.getQueryParameter("event"));
            if (TextUtils.isEmpty(b3)) {
                return null;
            }
            c.a().a(C0182a.b(b3));
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public void a(Context context) {
        this.f9892a = context;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public void b() {
    }
}
