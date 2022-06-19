package com.bytedance.sdk.openadsdk.multipro.p191c;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.AbstractC5068a;
import com.bytedance.sdk.openadsdk.multipro.C5097c;
import com.bytedance.sdk.openadsdk.multipro.C5109e;
import com.bytedance.sdk.openadsdk.p164d.C4805a;
import com.bytedance.sdk.openadsdk.p164d.C4807c;
import com.bytedance.sdk.openadsdk.p164d.C4814g;
import com.bytedance.sdk.openadsdk.p164d.C4829m;
import com.bytedance.sdk.openadsdk.p164d.C4831o;
import com.bytedance.sdk.openadsdk.p164d.HandlerThreadC4815h;
import com.bytedance.sdk.openadsdk.p164d.HandlerThreadC4832p;
import com.bytedance.sdk.openadsdk.p171i.p172a.AbstractC4930a;
import com.bytedance.sdk.openadsdk.p171i.p173b.C4934c;
import com.bytedance.sdk.openadsdk.p186m.AbstractC5057a;
import com.bytedance.sdk.openadsdk.p186m.C5058b;
import com.bytedance.sdk.openadsdk.p186m.C5067h;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.c.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/c/a.class */
public class C5098a implements AbstractC5068a {

    /* renamed from: a */
    private Context f18366a;

    /* renamed from: com.bytedance.sdk.openadsdk.multipro.c.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/c/a$a.class */
    static class C5099a implements AbstractC4930a {

        /* renamed from: a */
        JSONObject f18367a;

        private C5099a(String str) {
            try {
                this.f18367a = new JSONObject(str);
            } catch (Throwable th) {
            }
        }

        /* renamed from: b */
        public static C5099a m33066b(String str) {
            return new C5099a(str);
        }

        @Override // com.bytedance.sdk.openadsdk.p171i.p172a.AbstractC4930a
        /* renamed from: a */
        public JSONObject mo33068a() {
            return this.f18367a;
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.multipro.c.a$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/c/a$b.class */
    static class C5100b {

        /* renamed from: a */
        private static volatile C4807c<C4805a> f18368a;

        /* renamed from: b */
        private static volatile C4807c<C4934c.C4936a> f18369b;

        /* renamed from: c */
        private static volatile C4807c<C4934c.C4936a> f18370c;

        /* renamed from: a */
        static C4807c<C4805a> m33065a() {
            if (f18368a == null) {
                synchronized (C4600n.class) {
                    try {
                        if (f18368a == null) {
                            f18368a = new C4807c<>(new C4814g(C4600n.m34815a()), C4600n.m34807f(), HandlerThreadC4815h.C4818b.m33828a(), m33061d());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f18368a;
        }

        /* renamed from: a */
        public static C4807c<C4934c.C4936a> m33064a(String str, String str2, boolean z) {
            HandlerThreadC4815h.C4818b c4818b;
            C4831o c4831o;
            if (z) {
                c4831o = new C4831o(C4600n.m34815a());
                c4818b = HandlerThreadC4815h.C4818b.m33828a();
            } else {
                c4818b = HandlerThreadC4815h.C4818b.m33827b();
                c4831o = new C4829m(C4600n.m34815a());
            }
            HandlerThreadC4815h.AbstractC4817a m33061d = m33061d();
            return new C4807c<>(c4831o, null, c4818b, m33061d, new HandlerThreadC4832p(str, str2, c4831o, null, c4818b, m33061d));
        }

        /* renamed from: b */
        public static C4807c<C4934c.C4936a> m33063b() {
            if (f18370c == null) {
                synchronized (C4600n.class) {
                    try {
                        if (f18370c == null) {
                            f18370c = m33064a("ttad_bk_batch_stats", "AdStatsEventBatchThread", false);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f18370c;
        }

        /* renamed from: c */
        public static C4807c<C4934c.C4936a> m33062c() {
            if (f18369b == null) {
                synchronized (C4600n.class) {
                    try {
                        if (f18369b == null) {
                            f18369b = m33064a("ttad_bk_stats", "AdStatsEventThread", true);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f18369b;
        }

        /* renamed from: d */
        private static HandlerThreadC4815h.AbstractC4817a m33061d() {
            return new HandlerThreadC4815h.AbstractC4817a() { // from class: com.bytedance.sdk.openadsdk.multipro.c.a.b.1
                @Override // com.bytedance.sdk.openadsdk.p164d.HandlerThreadC4815h.AbstractC4817a
                /* renamed from: a */
                public final boolean mo33060a() {
                    return C5482t.m32091a(C4600n.m34815a());
                }
            };
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.multipro.c.a$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/c/a$c.class */
    static class C5102c {

        /* renamed from: a */
        private static volatile C4934c f18371a;

        /* renamed from: a */
        public static C4934c m33059a() {
            if (f18371a == null) {
                synchronized (C4934c.class) {
                    try {
                        if (f18371a == null) {
                            f18371a = new C4934c();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f18371a;
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.multipro.c.a$d */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/c/a$d.class */
    static class C5103d {

        /* renamed from: a */
        private static volatile AbstractC5057a f18372a;

        /* renamed from: a */
        public static AbstractC5057a m33058a() {
            if (f18372a == null) {
                synchronized (AbstractC5057a.class) {
                    try {
                        if (f18372a == null) {
                            f18372a = new C5058b(C4600n.m34815a(), new C5067h(C4600n.m34815a()));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f18372a;
        }
    }

    /* renamed from: a */
    public static void m33078a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        C5478q.m32112b("AdEventProviderImpl", "dispatch event");
        try {
            ContentResolver m33070f = m33070f();
            if (m33070f == null) {
                return;
            }
            String m33080a = C5097c.m33080a(str);
            m33070f.getType(Uri.parse(m33069g() + "adEventDispatch?event=" + m33080a));
        } catch (Throwable th) {
            C5478q.m32106e("AdEventProviderImpl", "dispatch event Throwable:" + th.toString());
        }
    }

    /* renamed from: a */
    public static void m33077a(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentResolver m33070f = m33070f();
            if (m33070f == null) {
                return;
            }
            m33070f.getType(Uri.parse(m33069g() + "logStatusDispatch" + ("?event=" + C5097c.m33080a(str) + "&isRealTime=" + String.valueOf(z))));
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static void m33076a(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            StringBuilder sb = new StringBuilder();
            for (String str : list) {
                sb.append(C5097c.m33080a(str));
                sb.append(",");
            }
            String m33080a = C5097c.m33080a(sb.toString());
            String str2 = "?track=" + String.valueOf(m33080a);
            ContentResolver m33070f = m33070f();
            if (m33070f == null) {
                return;
            }
            m33070f.getType(Uri.parse(m33069g() + "trackUrl" + str2));
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static void m33075a(boolean z) {
        if (C4600n.m34815a() == null) {
            return;
        }
        try {
            ContentResolver m33070f = m33070f();
            if (m33070f == null) {
                return;
            }
            m33070f.getType(Uri.parse(m33069g() + "logStatusStart" + ("?isRealTime=" + String.valueOf(z))));
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public static void m33074b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentResolver m33070f = m33070f();
            if (m33070f == null) {
                return;
            }
            String m33080a = C5097c.m33080a(str);
            m33070f.getType(Uri.parse(m33069g() + "logStatusUpload?event=" + m33080a));
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public static void m33073c() {
        if (C4600n.m34815a() == null) {
            return;
        }
        try {
            ContentResolver m33070f = m33070f();
            if (m33070f == null) {
                return;
            }
            m33070f.getType(Uri.parse(m33069g() + "adEventStart"));
        } catch (Throwable th) {
        }
    }

    /* renamed from: d */
    public static void m33072d() {
        try {
            ContentResolver m33070f = m33070f();
            if (m33070f == null) {
                return;
            }
            m33070f.getType(Uri.parse(m33069g() + "trackFailed"));
        } catch (Throwable th) {
        }
    }

    /* renamed from: e */
    public static void m33071e() {
        try {
            ContentResolver m33070f = m33070f();
            if (m33070f == null) {
                return;
            }
            m33070f.getType(Uri.parse(m33069g() + "logStatusInit"));
        } catch (Throwable th) {
        }
    }

    /* renamed from: f */
    private static ContentResolver m33070f() {
        try {
            if (C4600n.m34815a() == null) {
                return null;
            }
            return C4600n.m34815a().getContentResolver();
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: g */
    private static String m33069g() {
        return C5109e.f18378b + "/t_event_ad_event/";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public int mo33008a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public int mo33007a(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public Cursor mo33006a(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public Uri mo33009a(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public String mo33012a() {
        return "t_event_ad_event";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public String mo33010a(Uri uri) {
        String str = uri.getPath().split("/")[2];
        if ("adEventStart".equals(str)) {
            C5478q.m32112b("AdEventProviderImpl", "====ad event function will be start====");
            C5100b.m33065a().mo33798a();
            return null;
        } else if ("logStatusStart".equals(str)) {
            C5478q.m32112b("AdEventProviderImpl", "====log stats function will be start====");
            if (Boolean.valueOf(uri.getQueryParameter("isRealTime")).booleanValue()) {
                C5100b.m33062c().mo33798a();
                return null;
            }
            C5100b.m33063b().mo33798a();
            return null;
        } else if ("adEventDispatch".equals(str)) {
            C5478q.m32112b("AdEventProviderImpl", "dispatch FUN_AD_EVENT_DISPATCH");
            C4805a m33896a = C4805a.m33896a(C5097c.m33079b(uri.getQueryParameter("event")));
            if (m33896a == null) {
                return null;
            }
            C5100b.m33065a().mo33797a(m33896a);
            return null;
        } else if ("logStatusDispatch".equals(str)) {
            Boolean valueOf = Boolean.valueOf(uri.getQueryParameter("isRealTime"));
            C4934c.C4936a m33497a = C4934c.C4936a.m33497a(C5097c.m33079b(uri.getQueryParameter("event")));
            if (m33497a == null) {
                return null;
            }
            if (valueOf.booleanValue()) {
                C5100b.m33062c().mo33797a(m33497a);
                return null;
            }
            C5100b.m33063b().mo33797a(m33497a);
            return null;
        } else if ("trackUrl".equals(str)) {
            try {
                String[] split = C5097c.m33079b(uri.getQueryParameter("track")).split(",");
                if (split.length <= 0) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                for (String str2 : split) {
                    String m33079b = C5097c.m33079b(str2);
                    if (!TextUtils.isEmpty(m33079b)) {
                        arrayList.add(m33079b);
                    }
                }
                C5103d.m33058a().mo33138a(arrayList);
                return null;
            } catch (Throwable th) {
                return null;
            }
        } else if ("trackFailed".equals(str)) {
            C5103d.m33058a().mo33139a();
            C5478q.m32112b("AdEventProviderImpl", "track failed: ");
            return null;
        } else if ("logStatusInit".equals(str)) {
            C5102c.m33059a().mo33495a();
            return null;
        } else if (!"logStatusUpload".equals(str)) {
            return null;
        } else {
            String m33079b2 = C5097c.m33079b(uri.getQueryParameter("event"));
            if (TextUtils.isEmpty(m33079b2)) {
                return null;
            }
            C5102c.m33059a().mo33494a(C5099a.m33066b(m33079b2));
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public void mo33011a(Context context) {
        this.f18366a = context;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: b */
    public void mo33005b() {
    }
}
