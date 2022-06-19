package com.facebook.p094a;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.p040h.p041a.C0735a;
import com.facebook.C1803a;
import com.facebook.C1990i;
import com.facebook.C2095j;
import com.facebook.C2102k;
import com.facebook.C2194n;
import com.facebook.EnumC2197q;
import com.facebook.internal.C2048l;
import com.facebook.internal.C2050m;
import com.facebook.internal.C2063r;
import com.facebook.p094a.C1904g;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a.e */
/* loaded from: classes-dex2jar.jar:com/facebook/a/e.class */
public class C1879e {

    /* renamed from: d */
    private static ScheduledFuture f5695d;

    /* renamed from: a */
    private static final String f5692a = C1879e.class.getName();

    /* renamed from: b */
    private static volatile C1854d f5693b = new C1854d();

    /* renamed from: c */
    private static final ScheduledExecutorService f5694c = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: e */
    private static final Runnable f5696e = new Runnable() { // from class: com.facebook.a.e.1
        @Override // java.lang.Runnable
        public void run() {
            ScheduledFuture unused = C1879e.f5695d = null;
            if (C1904g.m15935a() != C1904g.EnumC1905a.EXPLICIT_ONLY) {
                C1879e.m15995b(EnumC1924j.TIMER);
            }
        }
    };

    C1879e() {
    }

    /* renamed from: a */
    private static C1926l m15999a(EnumC1924j enumC1924j, C1854d c1854d) {
        C1926l c1926l;
        C1926l c1926l2 = new C1926l();
        boolean m15368b = C2095j.m15368b(C2095j.m15360h());
        ArrayList<C2102k> arrayList = new ArrayList();
        for (C1806a c1806a : c1854d.m16095a()) {
            C2102k m16003a = m16003a(c1806a, c1854d.m16094a(c1806a), m15368b, c1926l2);
            if (m16003a != null) {
                arrayList.add(m16003a);
            }
        }
        if (arrayList.size() > 0) {
            C2063r.m15549a(EnumC2197q.APP_EVENTS, f5692a, "Flushing %d events due to %s.", Integer.valueOf(c1926l2.f5808a), enumC1924j.toString());
            for (C2102k c2102k : arrayList) {
                c2102k.m15293i();
            }
            c1926l = c1926l2;
        } else {
            c1926l = null;
        }
        return c1926l;
    }

    /* renamed from: a */
    private static C2102k m16003a(final C1806a c1806a, final C1931o c1931o, boolean z, final C1926l c1926l) {
        C2102k c2102k;
        String m16231b = c1806a.m16231b();
        C2048l m15584a = C2050m.m15584a(m16231b, false);
        final C2102k m15337a = C2102k.m15337a((C1803a) null, String.format("%s/activities", m16231b), (JSONObject) null, (C2102k.AbstractC2108b) null);
        Bundle m15302e = m15337a.m15302e();
        Bundle bundle = m15302e;
        if (m15302e == null) {
            bundle = new Bundle();
        }
        bundle.putString("access_token", c1806a.m16234a());
        String m15849d = C1927m.m15849d();
        if (m15849d != null) {
            bundle.putString("device_token", m15849d);
        }
        String m15866e = C1915h.m15866e();
        if (m15866e != null) {
            bundle.putString("install_referrer", m15866e);
        }
        m15337a.m15341a(bundle);
        int m15841a = c1931o.m15841a(m15337a, C2095j.m15360h(), m15584a != null ? m15584a.m15605a() : false, z);
        if (m15841a == 0) {
            c2102k = null;
        } else {
            c1926l.f5808a = m15841a + c1926l.f5808a;
            m15337a.m15336a(new C2102k.AbstractC2108b() { // from class: com.facebook.a.e.5
                @Override // com.facebook.C2102k.AbstractC2108b
                /* renamed from: a */
                public void mo15229a(C2194n c2194n) {
                    C1879e.m15996b(c1806a, m15337a, c2194n, c1931o, c1926l);
                }
            });
            c2102k = m15337a;
        }
        return c2102k;
    }

    /* renamed from: a */
    public static void m16005a() {
        f5694c.execute(new Runnable() { // from class: com.facebook.a.e.2
            @Override // java.lang.Runnable
            public void run() {
                C1899f.m15944a(C1879e.f5693b);
                C1854d unused = C1879e.f5693b = new C1854d();
            }
        });
    }

    /* renamed from: a */
    public static void m16004a(final C1806a c1806a, final C1848c c1848c) {
        f5694c.execute(new Runnable() { // from class: com.facebook.a.e.4
            @Override // java.lang.Runnable
            public void run() {
                C1879e.f5693b.m16093a(c1806a, c1848c);
                if (C1904g.m15935a() != C1904g.EnumC1905a.EXPLICIT_ONLY && C1879e.f5693b.m16091b() > 100) {
                    C1879e.m15995b(EnumC1924j.EVENT_THRESHOLD);
                } else if (C1879e.f5695d != null) {
                } else {
                    ScheduledFuture unused = C1879e.f5695d = C1879e.f5694c.schedule(C1879e.f5696e, 15L, TimeUnit.SECONDS);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m16000a(final EnumC1924j enumC1924j) {
        f5694c.execute(new Runnable() { // from class: com.facebook.a.e.3
            @Override // java.lang.Runnable
            public void run() {
                C1879e.m15995b(enumC1924j);
            }
        });
    }

    /* renamed from: b */
    public static Set<C1806a> m15997b() {
        return f5693b.m16095a();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00d2 -> B:11:0x004b). Please submit an issue!!! */
    /* renamed from: b */
    public static void m15996b(final C1806a c1806a, C2102k c2102k, C2194n c2194n, final C1931o c1931o, C1926l c1926l) {
        EnumC1925k enumC1925k;
        String str;
        C1990i m14987a = c2194n.m14987a();
        String str2 = "Success";
        EnumC1925k enumC1925k2 = EnumC1925k.SUCCESS;
        if (m14987a == null) {
            enumC1925k = enumC1925k2;
        } else if (m14987a.m15707b() == -1) {
            str2 = "Failed: No Connectivity";
            enumC1925k = EnumC1925k.NO_CONNECTIVITY;
        } else {
            str2 = String.format("Failed:\n  Response: %s\n  Error %s", c2194n.toString(), m14987a.toString());
            enumC1925k = EnumC1925k.SERVER_ERROR;
        }
        if (C2095j.m15370a(EnumC2197q.APP_EVENTS)) {
            try {
                str = new JSONArray((String) c2102k.m15294h()).toString(2);
            } catch (JSONException e) {
                str = "<Can't encode events for debug logging>";
            }
            C2063r.m15549a(EnumC2197q.APP_EVENTS, f5692a, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", c2102k.m15342a().toString(), str2, str);
        }
        c1931o.m15840a(m14987a != null);
        if (enumC1925k == EnumC1925k.NO_CONNECTIVITY) {
            C2095j.m15362f().execute(new Runnable() { // from class: com.facebook.a.e.6
                @Override // java.lang.Runnable
                public void run() {
                    C1899f.m15945a(c1806a, c1931o);
                }
            });
        }
        if (enumC1925k == EnumC1925k.SUCCESS || c1926l.f5809b == EnumC1925k.NO_CONNECTIVITY) {
            return;
        }
        c1926l.f5809b = enumC1925k;
    }

    /* renamed from: b */
    static void m15995b(EnumC1924j enumC1924j) {
        f5693b.m16092a(C1899f.m15946a());
        try {
            C1926l m15999a = m15999a(enumC1924j, f5693b);
            if (m15999a == null) {
                return;
            }
            Intent intent = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
            intent.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", m15999a.f5808a);
            intent.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", m15999a.f5809b);
            C0735a.m19534a(C2095j.m15360h()).m19533a(intent);
        } catch (Exception e) {
            Log.w(f5692a, "Caught unexpected exception while flushing app events: ", e);
        }
    }
}
