package com.google.firebase.iid;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.appsflyer.AppsFlyerProperties;
import com.google.android.gms.cloudmessaging.C11779b;
import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.C15601b;
import com.google.firebase.installations.AbstractC15822h;
import com.google.firebase.installations.AbstractC15826l;
import com.google.firebase.p390c.AbstractC15616f;
import com.google.firebase.p391d.AbstractC15728b;
import com.google.firebase.p394f.AbstractC15754i;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
/* renamed from: com.google.firebase.iid.j */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/j.class */
public final class C15770j {

    /* renamed from: a */
    private final C15601b f56138a;

    /* renamed from: b */
    private final C15774n f56139b;

    /* renamed from: c */
    private final C11779b f56140c;

    /* renamed from: d */
    private final AbstractC15728b<AbstractC15754i> f56141d;

    /* renamed from: e */
    private final AbstractC15728b<AbstractC15616f> f56142e;

    /* renamed from: f */
    private final AbstractC15822h f56143f;

    C15770j(C15601b c15601b, C15774n c15774n, C11779b c11779b, AbstractC15728b<AbstractC15754i> abstractC15728b, AbstractC15728b<AbstractC15616f> abstractC15728b2, AbstractC15822h abstractC15822h) {
        this.f56138a = c15601b;
        this.f56139b = c15774n;
        this.f56140c = c11779b;
        this.f56141d = abstractC15728b;
        this.f56142e = abstractC15728b2;
        this.f56143f = abstractC15822h;
    }

    public C15770j(C15601b c15601b, C15774n c15774n, AbstractC15728b<AbstractC15754i> abstractC15728b, AbstractC15728b<AbstractC15616f> abstractC15728b2, AbstractC15822h abstractC15822h) {
        this(c15601b, c15774n, new C11779b(c15601b.m8583a()), abstractC15728b, abstractC15728b2, abstractC15822h);
    }

    /* renamed from: a */
    private String m8423a() {
        try {
            return Base64.encodeToString(MessageDigest.getInstance("SHA-1").digest(this.f56138a.m8576b().getBytes()), 11);
        } catch (NoSuchAlgorithmException e) {
            return "[HASH-ERROR]";
        }
    }

    /* renamed from: b */
    private Bundle m8420b(String str, String str2, String str3, Bundle bundle) {
        AbstractC15616f.EnumC15617a mo8557a;
        bundle.putString("scope", str3);
        bundle.putString("sender", str2);
        bundle.putString("subtype", str2);
        bundle.putString(AppsFlyerProperties.APP_ID, str);
        bundle.putString("gmp_app_id", this.f56138a.m8574c().f56100b);
        bundle.putString("gmsv", Integer.toString(this.f56139b.m8413d()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f56139b.m8415b());
        bundle.putString("app_ver_name", this.f56139b.m8414c());
        bundle.putString("firebase-app-name-hash", m8423a());
        try {
            String mo8282a = ((AbstractC15826l) C14188k.m11468a((AbstractC14185h<Object>) this.f56143f.mo8285c())).mo8282a();
            if (!TextUtils.isEmpty(mo8282a)) {
                bundle.putString("Goog-Firebase-Installations-Auth", mo8282a);
            } else {
                Log.w("FirebaseInstanceId", "FIS auth token is empty");
            }
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseInstanceId", "Failed to get FIS auth token", e);
        }
        bundle.putString("cliv", "fiid-21.1.0");
        AbstractC15616f mo8476a = this.f56142e.mo8476a();
        AbstractC15754i mo8476a2 = this.f56141d.mo8476a();
        if (mo8476a != null && mo8476a2 != null && (mo8557a = mo8476a.mo8557a("fire-iid")) != AbstractC15616f.EnumC15617a.NONE) {
            bundle.putString("Firebase-Client-Log-Type", Integer.toString(mo8557a.getCode()));
            bundle.putString("Firebase-Client", mo8476a2.mo8455a());
        }
        return bundle;
    }

    /* renamed from: a */
    public final AbstractC14185h<String> m8422a(AbstractC14185h<Bundle> abstractC14185h) {
        return abstractC14185h.mo11484a(C15759a.m8428a(), new AbstractC14179b(this) { // from class: com.google.firebase.iid.k

            /* renamed from: a */
            private final C15770j f56144a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f56144a = this;
            }

            @Override // com.google.android.gms.tasks.AbstractC14179b
            public final Object then(AbstractC14185h abstractC14185h2) {
                Bundle bundle = (Bundle) abstractC14185h2.mo11485a(IOException.class);
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
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 21);
                    sb.append("Unexpected response: ");
                    sb.append(valueOf);
                    Log.w("FirebaseInstanceId", sb.toString(), new Throwable());
                    throw new IOException("SERVICE_NOT_AVAILABLE");
                }
                throw new IOException("SERVICE_NOT_AVAILABLE");
            }
        });
    }

    /* renamed from: a */
    public final AbstractC14185h<Bundle> m8421a(String str, String str2, String str3, Bundle bundle) {
        m8420b(str, str2, str3, bundle);
        return this.f56140c.m19503a(bundle);
    }
}
