package com.google.firebase.iid;

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
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
/* renamed from: com.google.firebase.iid.k */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/k.class */
public class C9187k {

    /* renamed from: a */
    private final C8849c f39540a;

    /* renamed from: b */
    private final C9190n f39541b;

    /* renamed from: c */
    private final C5956b f39542c;

    /* renamed from: d */
    private final AbstractC9247b<AbstractC9258i> f39543d;

    /* renamed from: e */
    private final AbstractC9247b<HeartBeatInfo> f39544e;

    /* renamed from: f */
    private final AbstractC9214g f39545f;

    C9187k(C8849c c8849c, C9190n c9190n, C5956b c5956b, AbstractC9247b<AbstractC9258i> abstractC9247b, AbstractC9247b<HeartBeatInfo> abstractC9247b2, AbstractC9214g abstractC9214g) {
        this.f39540a = c8849c;
        this.f39541b = c9190n;
        this.f39542c = c5956b;
        this.f39543d = abstractC9247b;
        this.f39544e = abstractC9247b2;
        this.f39545f = abstractC9214g;
    }

    public C9187k(C8849c c8849c, C9190n c9190n, AbstractC9247b<AbstractC9258i> abstractC9247b, AbstractC9247b<HeartBeatInfo> abstractC9247b2, AbstractC9214g abstractC9214g) {
        this(c8849c, c9190n, new C5956b(c8849c.m2533g()), abstractC9247b, abstractC9247b2, abstractC9214g);
    }

    /* renamed from: a */
    private static String m1606a(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    /* renamed from: b */
    private AbstractC7966g<String> m1605b(AbstractC7966g<Bundle> abstractC7966g) {
        return abstractC7966g.mo5818i(C9178b.m1609a(), new AbstractC7954a(this) { // from class: com.google.firebase.iid.j

            /* renamed from: a */
            private final C9187k f39539a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39539a = this;
            }

            @Override // com.google.android.gms.tasks.AbstractC7954a
            /* renamed from: a */
            public Object mo1125a(AbstractC7966g abstractC7966g2) {
                return this.f39539a.m1600g(abstractC7966g2);
            }
        });
    }

    /* renamed from: c */
    private String m1604c() {
        try {
            return m1606a(MessageDigest.getInstance("SHA-1").digest(this.f39540a.m2531i().getBytes()));
        } catch (NoSuchAlgorithmException e) {
            return "[HASH-ERROR]";
        }
    }

    /* renamed from: e */
    private String m1602e(Bundle bundle) {
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
            Log.w("FirebaseInstanceId", sb.toString(), new Throwable());
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    /* renamed from: f */
    public static boolean m1601f(String str) {
        return "SERVICE_NOT_AVAILABLE".equals(str) || "INTERNAL_SERVER_ERROR".equals(str) || "InternalServerError".equals(str);
    }

    /* renamed from: h */
    private Bundle m1599h(String str, String str2, String str3, Bundle bundle) {
        HeartBeatInfo.HeartBeat mo1654a;
        bundle.putString("scope", str3);
        bundle.putString("sender", str2);
        bundle.putString("subtype", str2);
        bundle.putString("appid", str);
        bundle.putString("gmp_app_id", this.f39540a.m2530j().m1660c());
        bundle.putString("gmsv", Integer.toString(this.f39541b.m1593d()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f39541b.m1596a());
        bundle.putString("app_ver_name", this.f39541b.m1595b());
        bundle.putString("firebase-app-name-hash", m1604c());
        try {
            String mo1528b = ((AbstractC9218k) C7970j.m5802a(this.f39545f.mo1531a(false))).mo1528b();
            if (!TextUtils.isEmpty(mo1528b)) {
                bundle.putString("Goog-Firebase-Installations-Auth", mo1528b);
            } else {
                Log.w("FirebaseInstanceId", "FIS auth token is empty");
            }
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseInstanceId", "Failed to get FIS auth token", e);
        }
        bundle.putString("cliv", "fiid-21.1.0");
        HeartBeatInfo heartBeatInfo = this.f39544e.get();
        AbstractC9258i abstractC9258i = this.f39543d.get();
        if (heartBeatInfo != null && abstractC9258i != null && (mo1654a = heartBeatInfo.mo1654a("fire-iid")) != HeartBeatInfo.HeartBeat.NONE) {
            bundle.putString("Firebase-Client-Log-Type", Integer.toString(mo1654a.getCode()));
            bundle.putString("Firebase-Client", abstractC9258i.mo1396a());
        }
        return bundle;
    }

    /* renamed from: i */
    private AbstractC7966g<Bundle> m1598i(String str, String str2, String str3, Bundle bundle) {
        m1599h(str, str2, str3, bundle);
        return this.f39542c.m17543a(bundle);
    }

    /* renamed from: d */
    public AbstractC7966g<String> m1603d(String str, String str2, String str3) {
        return m1605b(m1598i(str, str2, str3, new Bundle()));
    }

    /* renamed from: g */
    public final /* synthetic */ String m1600g(AbstractC7966g abstractC7966g) {
        return m1602e((Bundle) abstractC7966g.mo5813n(IOException.class));
    }
}
