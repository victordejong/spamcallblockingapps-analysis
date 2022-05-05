package p081h.p203i.p325c.p364t;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
import p081h.p203i.p204a.p224e.p293r.AbstractC9128a;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p326a0.AbstractC9393i;
import p081h.p203i.p325c.p363s.AbstractC9861d;
import p081h.p203i.p325c.p367v.AbstractC9941h;
import p081h.p203i.p325c.p367v.AbstractC9947m;
/* renamed from: h.i.c.t.r */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/r.class */
public class C9901r {

    /* renamed from: a */
    public final C9435c f22419a;

    /* renamed from: b */
    public final C9873e0 f22420b;

    /* renamed from: c */
    public final C9894o0 f22421c;

    /* renamed from: d */
    public final AbstractC9393i f22422d;

    /* renamed from: e */
    public final AbstractC9861d f22423e;

    /* renamed from: f */
    public final AbstractC9941h f22424f;

    public C9901r(C9435c cVar, C9873e0 e0Var, AbstractC9393i iVar, AbstractC9861d dVar, AbstractC9941h hVar) {
        this(cVar, e0Var, new C9894o0(cVar.m15173b(), e0Var), iVar, dVar, hVar);
    }

    @VisibleForTesting
    public C9901r(C9435c cVar, C9873e0 e0Var, C9894o0 o0Var, AbstractC9393i iVar, AbstractC9861d dVar, AbstractC9941h hVar) {
        this.f22419a = cVar;
        this.f22420b = e0Var;
        this.f22421c = o0Var;
        this.f22422d = iVar;
        this.f22423e = dVar;
        this.f22424f = hVar;
    }

    /* renamed from: a */
    public static String m13992a(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    /* renamed from: a */
    public static boolean m13995a(String str) {
        return "SERVICE_NOT_AVAILABLE".equals(str) || "INTERNAL_SERVER_ERROR".equals(str) || "InternalServerError".equals(str);
    }

    /* renamed from: a */
    public final Bundle m13993a(String str, String str2, String str3, Bundle bundle) {
        bundle.putString("scope", str3);
        bundle.putString(NotificationCompat.MessagingStyle.Message.KEY_SENDER, str2);
        bundle.putString("subtype", str2);
        bundle.putString(AppsFlyerProperties.APP_ID, str);
        bundle.putString("gmp_app_id", this.f22419a.m15169d().m15149b());
        bundle.putString("gmsv", Integer.toString(this.f22420b.m14061c()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f22420b.m14065a());
        bundle.putString("app_ver_name", this.f22420b.m14062b());
        bundle.putString("firebase-app-name-hash", m13998a());
        try {
            String a = ((AbstractC9947m) C9148k.m16003a((AbstractC9143h<Object>) this.f22424f.mo13898a(false))).mo13896a();
            if (!TextUtils.isEmpty(a)) {
                bundle.putString("Goog-Firebase-Installations-Auth", a);
            }
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseInstanceId", "Failed to get FIS auth token", e);
        }
        bundle.putString("cliv", "20.2.3".length() != 0 ? "fiid-".concat("20.2.3") : new String("fiid-"));
        AbstractC9861d.EnumC9862a a2 = this.f22423e.mo14070a("fire-iid");
        if (a2 != AbstractC9861d.EnumC9862a.NONE) {
            bundle.putString("Firebase-Client-Log-Type", Integer.toString(a2.m14069a()));
            bundle.putString("Firebase-Client", this.f22422d.mo15322a());
        }
        return bundle;
    }

    /* renamed from: a */
    public final AbstractC9143h<String> m13996a(AbstractC9143h<Bundle> hVar) {
        return hVar.mo16020a(C9878h.m14050a(), new AbstractC9128a(this) { // from class: h.i.c.t.q

            /* renamed from: a */
            public final C9901r f22411a;

            {
                this.f22411a = this;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9128a
            /* renamed from: a */
            public final Object mo14017a(AbstractC9143h hVar2) {
                return this.f22411a.m13991b(hVar2);
            }
        });
    }

    /* renamed from: a */
    public AbstractC9143h<?> m13994a(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        bundle.putString("delete", "1");
        return m13996a(m13989b(str, str2, str3, bundle));
    }

    /* renamed from: a */
    public final String m13998a() {
        try {
            return m13992a(MessageDigest.getInstance("SHA-1").digest(this.f22419a.m15170c().getBytes()));
        } catch (NoSuchAlgorithmException e) {
            return "[HASH-ERROR]";
        }
    }

    @AnyThread
    /* renamed from: a */
    public final String m13997a(Bundle bundle) throws IOException {
        if (bundle != null) {
            String string = bundle.getString("registration_id");
            if (string != null) {
                return string;
            }
            String string2 = bundle.getString("unregistered");
            if (string2 != null) {
                return string2;
            }
            String string3 = bundle.getString("error");
            if ("RST".equals(string3)) {
                throw new IOException("INSTANCE_ID_RESET");
            } else if (string3 != null) {
                throw new IOException(string3);
            } else {
                String valueOf = String.valueOf(bundle);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 21);
                sb.append("Unexpected response: ");
                sb.append(valueOf);
                sb.toString();
                new Throwable();
                throw new IOException("SERVICE_NOT_AVAILABLE");
            }
        } else {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
    }

    /* renamed from: b */
    public AbstractC9143h<String> m13990b(String str, String str2, String str3) {
        return m13996a(m13989b(str, str2, str3, new Bundle()));
    }

    /* renamed from: b */
    public final AbstractC9143h<Bundle> m13989b(String str, String str2, String str3, Bundle bundle) {
        m13993a(str, str2, str3, bundle);
        return this.f22421c.m14041a(bundle);
    }

    /* renamed from: b */
    public final /* synthetic */ String m13991b(AbstractC9143h hVar) throws Exception {
        return m13997a((Bundle) hVar.mo16021a(IOException.class));
    }

    /* renamed from: c */
    public AbstractC9143h<?> m13988c(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String valueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", valueOf.length() != 0 ? "/topics/".concat(valueOf) : new String("/topics/"));
        String valueOf2 = String.valueOf(str3);
        return m13996a(m13989b(str, str2, valueOf2.length() != 0 ? "/topics/".concat(valueOf2) : new String("/topics/"), bundle));
    }

    /* renamed from: d */
    public AbstractC9143h<?> m13987d(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String valueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", valueOf.length() != 0 ? "/topics/".concat(valueOf) : new String("/topics/"));
        bundle.putString("delete", "1");
        String valueOf2 = String.valueOf(str3);
        return m13996a(m13989b(str, str2, valueOf2.length() != 0 ? "/topics/".concat(valueOf2) : new String("/topics/"), bundle));
    }
}
