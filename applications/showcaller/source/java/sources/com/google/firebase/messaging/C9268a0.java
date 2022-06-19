package com.google.firebase.messaging;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.cloudmessaging.C5956b;
import com.google.android.gms.tasks.AbstractC7954a;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.C8849c;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.installations.AbstractC9214g;
import com.google.firebase.installations.AbstractC9218k;
import com.google.firebase.p313k.AbstractC9247b;
import com.google.firebase.p315m.AbstractC9258i;
import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
/* renamed from: com.google.firebase.messaging.a0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/a0.class */
public class C9268a0 {

    /* renamed from: a */
    private final C8849c f39756a;

    /* renamed from: b */
    private final C9281f0 f39757b;

    /* renamed from: c */
    private final C5956b f39758c;

    /* renamed from: d */
    private final AbstractC9247b<AbstractC9258i> f39759d;

    /* renamed from: e */
    private final AbstractC9247b<HeartBeatInfo> f39760e;

    /* renamed from: f */
    private final AbstractC9214g f39761f;

    C9268a0(C8849c c8849c, C9281f0 c9281f0, C5956b c5956b, AbstractC9247b<AbstractC9258i> abstractC9247b, AbstractC9247b<HeartBeatInfo> abstractC9247b2, AbstractC9214g abstractC9214g) {
        this.f39756a = c8849c;
        this.f39757b = c9281f0;
        this.f39758c = c5956b;
        this.f39759d = abstractC9247b;
        this.f39760e = abstractC9247b2;
        this.f39761f = abstractC9214g;
    }

    public C9268a0(C8849c c8849c, C9281f0 c9281f0, AbstractC9247b<AbstractC9258i> abstractC9247b, AbstractC9247b<HeartBeatInfo> abstractC9247b2, AbstractC9214g abstractC9214g) {
        this(c8849c, c9281f0, new C5956b(c8849c.m2533g()), abstractC9247b, abstractC9247b2, abstractC9214g);
    }

    /* renamed from: a */
    private static String m1323a(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    /* renamed from: b */
    private AbstractC7966g<String> m1322b(AbstractC7966g<Bundle> abstractC7966g) {
        return abstractC7966g.mo5818i(ExecutorC9326y.f39885d, new AbstractC7954a(this) { // from class: com.google.firebase.messaging.z

            /* renamed from: a */
            private final C9268a0 f39887a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39887a = this;
            }

            @Override // com.google.android.gms.tasks.AbstractC7954a
            /* renamed from: a */
            public Object mo1125a(AbstractC7966g abstractC7966g2) {
                return this.f39887a.m1317g(abstractC7966g2);
            }
        });
    }

    /* renamed from: c */
    private String m1321c() {
        try {
            return m1323a(MessageDigest.getInstance("SHA-1").digest(this.f39756a.m2531i().getBytes()));
        } catch (NoSuchAlgorithmException e) {
            return "[HASH-ERROR]";
        }
    }

    /* renamed from: e */
    private String m1319e(Bundle bundle) {
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
            }
            if (string3 != null) {
                throw new IOException(string3);
            }
            String valueOf = String.valueOf(bundle);
            StringBuilder sb = new StringBuilder(valueOf.length() + 21);
            sb.append("Unexpected response: ");
            sb.append(valueOf);
            Log.w("FirebaseMessaging", sb.toString(), new Throwable());
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    /* renamed from: f */
    public static boolean m1318f(String str) {
        return "SERVICE_NOT_AVAILABLE".equals(str) || "INTERNAL_SERVER_ERROR".equals(str) || "InternalServerError".equals(str);
    }

    /* renamed from: h */
    private Bundle m1316h(String str, String str2, String str3, Bundle bundle) {
        HeartBeatInfo.HeartBeat mo1654a;
        bundle.putString("scope", str3);
        bundle.putString("sender", str2);
        bundle.putString("subtype", str2);
        bundle.putString("appid", str);
        bundle.putString("gmp_app_id", this.f39756a.m2530j().m1660c());
        bundle.putString("gmsv", Integer.toString(this.f39757b.m1261d()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f39757b.m1264a());
        bundle.putString("app_ver_name", this.f39757b.m1263b());
        bundle.putString("firebase-app-name-hash", m1321c());
        try {
            String mo1528b = ((AbstractC9218k) C7970j.m5802a(this.f39761f.mo1531a(false))).mo1528b();
            if (!TextUtils.isEmpty(mo1528b)) {
                bundle.putString("Goog-Firebase-Installations-Auth", mo1528b);
            } else {
                Log.w("FirebaseMessaging", "FIS auth token is empty");
            }
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);
        }
        bundle.putString("cliv", "fcm-20.1.7_1p");
        HeartBeatInfo heartBeatInfo = this.f39760e.get();
        AbstractC9258i abstractC9258i = this.f39759d.get();
        if (heartBeatInfo != null && abstractC9258i != null && (mo1654a = heartBeatInfo.mo1654a("fire-iid")) != HeartBeatInfo.HeartBeat.NONE) {
            bundle.putString("Firebase-Client-Log-Type", Integer.toString(mo1654a.getCode()));
            bundle.putString("Firebase-Client", abstractC9258i.mo1396a());
        }
        return bundle;
    }

    /* renamed from: i */
    private AbstractC7966g<Bundle> m1315i(String str, String str2, String str3, Bundle bundle) {
        m1316h(str, str2, str3, bundle);
        return this.f39758c.m17543a(bundle);
    }

    /* renamed from: d */
    public AbstractC7966g<String> m1320d(String str) {
        return m1322b(m1315i(str, C9281f0.m1262c(this.f39756a), BasicSQLHelper.ALL, new Bundle()));
    }

    /* renamed from: g */
    public final /* synthetic */ String m1317g(AbstractC7966g abstractC7966g) {
        return m1319e((Bundle) abstractC7966g.mo5813n(IOException.class));
    }

    /* renamed from: j */
    public AbstractC7966g<?> m1314j(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String valueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", valueOf.length() != 0 ? "/topics/".concat(valueOf) : new String("/topics/"));
        String valueOf2 = String.valueOf(str3);
        return m1322b(m1315i(str, str2, valueOf2.length() != 0 ? "/topics/".concat(valueOf2) : new String("/topics/"), bundle));
    }

    /* renamed from: k */
    public AbstractC7966g<?> m1313k(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String valueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", valueOf.length() != 0 ? "/topics/".concat(valueOf) : new String("/topics/"));
        bundle.putString("delete", "1");
        String valueOf2 = String.valueOf(str3);
        return m1322b(m1315i(str, str2, valueOf2.length() != 0 ? "/topics/".concat(valueOf2) : new String("/topics/"), bundle));
    }
}
