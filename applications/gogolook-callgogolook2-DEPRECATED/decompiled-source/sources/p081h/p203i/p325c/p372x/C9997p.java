package p081h.p203i.p325c.p372x;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompatJellybean;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.messaging.FirebaseMessagingService;
import p081h.p203i.p204a.p206b.AbstractC6494c;
import p081h.p203i.p204a.p206b.AbstractC6497f;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
import p081h.p203i.p325c.p359q.AbstractC9838a;
import p081h.p203i.p325c.p359q.AbstractC9841d;
import p081h.p203i.p325c.p359q.C9840c;
import p081h.p203i.p325c.p359q.p361i.C9850d;
import p081h.p203i.p325c.p372x.C9991m;
/* renamed from: h.i.c.x.p */
/* loaded from: classes2-dex2jar.jar:h/i/c/x/p.class */
public class C9997p {

    /* renamed from: a */
    public static final AbstractC9838a f22601a;

    static {
        C9850d dVar = new C9850d();
        dVar.mo14107a(C9991m.C9993b.class, (AbstractC9841d) new C9991m.C9994c());
        dVar.mo14107a(C9991m.class, (AbstractC9841d) new C9991m.C9992a());
        f22601a = dVar.m14111a();
    }

    @NonNull
    /* renamed from: a */
    public static int m13741a(String str) {
        if ("high".equals(str)) {
            return 1;
        }
        return "normal".equals(str) ? 2 : 0;
    }

    @Nullable
    /* renamed from: a */
    public static String m13743a(Intent intent) {
        return intent.getStringExtra("collapse_key");
    }

    /* renamed from: a */
    public static void m13742a(Intent intent, @Nullable AbstractC6497f<String> fVar) {
        m13740a("_nr", intent);
        if (fVar != null) {
            m13739a("MESSAGE_DELIVERED", intent, fVar);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m13740a(String str, Intent intent) {
        Bundle bundle = new Bundle();
        String b = m13737b(intent);
        if (b != null) {
            bundle.putString("_nmid", b);
        }
        String c = m13735c(intent);
        if (c != null) {
            bundle.putString("_nmn", c);
        }
        String f = m13731f(intent);
        if (!TextUtils.isEmpty(f)) {
            bundle.putString(NotificationCompatJellybean.KEY_LABEL, f);
        }
        String d = m13733d(intent);
        if (!TextUtils.isEmpty(d)) {
            bundle.putString("message_channel", d);
        }
        String k = m13726k(intent);
        if (k != null) {
            bundle.putString("_nt", k);
        }
        String g = m13730g(intent);
        if (g != null) {
            try {
                bundle.putInt("_nmt", Integer.parseInt(g));
            } catch (NumberFormatException e) {
            }
        }
        String m = m13724m(intent);
        if (m != null) {
            try {
                bundle.putInt("_ndt", Integer.parseInt(m));
            } catch (NumberFormatException e2) {
            }
        }
        String i = m13728i(intent);
        if ("_nr".equals(str) || "_nf".equals(str)) {
            bundle.putString("_nmc", i);
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String valueOf = String.valueOf(bundle);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 37 + String.valueOf(valueOf).length());
            sb.append("Logging to scion event=");
            sb.append(str);
            sb.append(" scionPayload=");
            sb.append(valueOf);
            sb.toString();
        }
        AbstractC9452a aVar = (AbstractC9452a) C9435c.m15163j().m15176a(AbstractC9452a.class);
        if (aVar != null) {
            aVar.mo15115b("fcm", str, bundle);
        }
    }

    /* renamed from: a */
    public static void m13739a(String str, Intent intent, AbstractC6497f<String> fVar) {
        try {
            fVar.mo22285a(AbstractC6494c.m22465a(f22601a.mo14099a(new C9991m.C9993b(new C9991m(str, intent)))));
        } catch (C9840c e) {
        }
    }

    /* renamed from: a */
    public static boolean m13744a() {
        ApplicationInfo applicationInfo;
        C9435c.m15163j();
        Context b = C9435c.m15163j().m15173b();
        SharedPreferences sharedPreferences = b.getSharedPreferences("com.google.firebase.messaging", 0);
        if (sharedPreferences.contains("export_to_big_query")) {
            return sharedPreferences.getBoolean("export_to_big_query", false);
        }
        try {
            PackageManager packageManager = b.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(b.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
                return false;
            }
            return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
        } catch (PackageManager.NameNotFoundException | IllegalStateException e) {
            return false;
        }
    }

    @NonNull
    /* renamed from: b */
    public static String m13738b() {
        return FirebaseInstanceId.getInstance(C9435c.m15163j()).getId();
    }

    @Nullable
    /* renamed from: b */
    public static String m13737b(Intent intent) {
        return intent.getStringExtra("google.c.a.c_id");
    }

    @NonNull
    /* renamed from: c */
    public static String m13736c() {
        return C9435c.m15163j().m15173b().getPackageName();
    }

    @Nullable
    /* renamed from: c */
    public static String m13735c(Intent intent) {
        return intent.getStringExtra("google.c.a.c_l");
    }

    @Nullable
    /* renamed from: d */
    public static String m13734d() {
        C9435c j = C9435c.m15163j();
        String c = j.m15169d().m15148c();
        if (c != null) {
            return c;
        }
        String b = j.m15169d().m15149b();
        if (!b.startsWith("1:")) {
            return b;
        }
        String[] split = b.split(":");
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    @Nullable
    /* renamed from: d */
    public static String m13733d(Intent intent) {
        return intent.getStringExtra("google.c.a.m_c");
    }

    @Nullable
    /* renamed from: e */
    public static String m13732e(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        String str = stringExtra;
        if (stringExtra == null) {
            str = intent.getStringExtra("message_id");
        }
        return str;
    }

    @Nullable
    /* renamed from: f */
    public static String m13731f(Intent intent) {
        return intent.getStringExtra("google.c.a.m_l");
    }

    @Nullable
    /* renamed from: g */
    public static String m13730g(Intent intent) {
        return intent.getStringExtra("google.c.a.ts");
    }

    @NonNull
    /* renamed from: h */
    public static String m13729h(Intent intent) {
        return (intent.getExtras() == null || !C9998q.m13714a(intent.getExtras())) ? "DATA_MESSAGE" : "DISPLAY_NOTIFICATION";
    }

    @NonNull
    /* renamed from: i */
    public static String m13728i(Intent intent) {
        return (intent.getExtras() == null || !C9998q.m13714a(intent.getExtras())) ? "data" : "display";
    }

    @NonNull
    /* renamed from: j */
    public static int m13727j(Intent intent) {
        String stringExtra = intent.getStringExtra("google.delivered_priority");
        String str = stringExtra;
        if (stringExtra == null) {
            if ("1".equals(intent.getStringExtra("google.priority_reduced"))) {
                return 2;
            }
            str = intent.getStringExtra("google.priority");
        }
        return m13741a(str);
    }

    @Nullable
    /* renamed from: k */
    public static String m13726k(Intent intent) {
        String stringExtra = intent.getStringExtra("from");
        if (stringExtra == null || !stringExtra.startsWith("/topics/")) {
            return null;
        }
        return stringExtra;
    }

    @NonNull
    /* renamed from: l */
    public static int m13725l(Intent intent) {
        Object obj = intent.getExtras().get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
            sb.append("Invalid TTL: ");
            sb.append(valueOf);
            sb.toString();
            return 0;
        }
    }

    @Nullable
    /* renamed from: m */
    public static String m13724m(Intent intent) {
        if (intent.hasExtra("google.c.a.udt")) {
            return intent.getStringExtra("google.c.a.udt");
        }
        return null;
    }

    /* renamed from: n */
    public static boolean m13723n(Intent intent) {
        return FirebaseMessagingService.ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(intent.getAction());
    }

    /* renamed from: o */
    public static void m13722o(Intent intent) {
        m13740a("_nd", intent);
    }

    /* renamed from: p */
    public static void m13721p(Intent intent) {
        m13740a("_nf", intent);
    }

    /* renamed from: q */
    public static void m13720q(Intent intent) {
        m13719r(intent);
        m13740a("_no", intent);
    }

    /* renamed from: r */
    public static void m13719r(Intent intent) {
        if (intent != null) {
            if ("1".equals(intent.getStringExtra("google.c.a.tc"))) {
                AbstractC9452a aVar = (AbstractC9452a) C9435c.m15163j().m15176a(AbstractC9452a.class);
                Log.isLoggable("FirebaseMessaging", 3);
                if (aVar != null) {
                    String stringExtra = intent.getStringExtra("google.c.a.c_id");
                    aVar.mo15118a("fcm", "_ln", stringExtra);
                    Bundle bundle = new Bundle();
                    bundle.putString("source", "Firebase");
                    bundle.putString("medium", "notification");
                    bundle.putString("campaign", stringExtra);
                    aVar.mo15115b("fcm", "_cmp", bundle);
                    return;
                }
                return;
            }
            Log.isLoggable("FirebaseMessaging", 3);
        }
    }

    /* renamed from: s */
    public static boolean m13718s(Intent intent) {
        if (intent == null || m13723n(intent)) {
            return false;
        }
        return m13744a();
    }

    /* renamed from: t */
    public static boolean m13717t(Intent intent) {
        if (intent == null || m13723n(intent)) {
            return false;
        }
        return "1".equals(intent.getStringExtra("google.c.a.e"));
    }
}
