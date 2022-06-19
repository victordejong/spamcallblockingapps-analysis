package com.google.firebase.iid;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.C2593f;
import com.google.android.gms.common.internal.C2656p;
import com.google.android.gms.tasks.AbstractC4459a;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.gms.tasks.C4470h;
import com.google.android.gms.tasks.C4473j;
import com.google.firebase.C4865b;
import com.google.firebase.installations.AbstractC5033h;
import com.google.firebase.installations.AbstractC5037l;
import com.google.firebase.p162b.AbstractC4873c;
import com.google.firebase.p165e.AbstractC4935h;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.iid.bc */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/bc.class */
public final class C4970bc {

    /* renamed from: a */
    private final C4865b f21130a;

    /* renamed from: b */
    private final C4988o f21131b;

    /* renamed from: c */
    private final C4994u f21132c;

    /* renamed from: d */
    private final Executor f21133d;

    /* renamed from: e */
    private final AbstractC4935h f21134e;

    /* renamed from: f */
    private final AbstractC4873c f21135f;

    /* renamed from: g */
    private final AbstractC5033h f21136g;

    public C4970bc(C4865b c4865b, C4988o c4988o, Executor executor, AbstractC4935h abstractC4935h, AbstractC4873c abstractC4873c, AbstractC5033h abstractC5033h) {
        this(c4865b, c4988o, executor, new C4994u(c4865b.m2160a(), c4988o), abstractC4935h, abstractC4873c, abstractC5033h);
    }

    private C4970bc(C4865b c4865b, C4988o c4988o, Executor executor, C4994u c4994u, AbstractC4935h abstractC4935h, AbstractC4873c abstractC4873c, AbstractC5033h abstractC5033h) {
        this.f21130a = c4865b;
        this.f21131b = c4988o;
        this.f21132c = c4994u;
        this.f21133d = executor;
        this.f21134e = abstractC4935h;
        this.f21135f = abstractC4873c;
        this.f21136g = abstractC5033h;
    }

    /* renamed from: a */
    private final AbstractC4469g<String> m1945a(AbstractC4469g<Bundle> abstractC4469g) {
        return abstractC4469g.mo3900a(this.f21133d, new AbstractC4459a(this) { // from class: com.google.firebase.iid.bd

            /* renamed from: a */
            private final C4970bc f21137a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21137a = this;
            }

            @Override // com.google.android.gms.tasks.AbstractC4459a
            /* renamed from: a */
            public final Object mo1911a(AbstractC4469g abstractC4469g2) {
                Bundle bundle = (Bundle) abstractC4469g2.mo3901a(IOException.class);
                if (bundle == null) {
                    throw new IOException("SERVICE_NOT_AVAILABLE");
                }
                String string = bundle.getString("registration_id");
                if (string == null) {
                    string = bundle.getString("unregistered");
                    if (string == null) {
                        String string2 = bundle.getString("error");
                        if ("RST".equals(string2)) {
                            throw new IOException("INSTANCE_ID_RESET");
                        }
                        if (string2 != null) {
                            throw new IOException(string2);
                        }
                        String valueOf = String.valueOf(bundle);
                        Log.w("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf).length() + 21).append("Unexpected response: ").append(valueOf).toString(), new Throwable());
                        throw new IOException("SERVICE_NOT_AVAILABLE");
                    }
                }
                return string;
            }
        });
    }

    /* renamed from: a */
    private final AbstractC4469g<Bundle> m1943a(String str, String str2, String str3, Bundle bundle) {
        C4470h c4470h = new C4470h();
        this.f21133d.execute(new Runnable(this, str, str2, str3, bundle, c4470h) { // from class: com.google.firebase.iid.bb

            /* renamed from: a */
            private final C4970bc f21124a;

            /* renamed from: b */
            private final String f21125b;

            /* renamed from: c */
            private final String f21126c;

            /* renamed from: d */
            private final String f21127d;

            /* renamed from: e */
            private final Bundle f21128e;

            /* renamed from: f */
            private final C4470h f21129f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21124a = this;
                this.f21125b = str;
                this.f21126c = str2;
                this.f21127d = str3;
                this.f21128e = bundle;
                this.f21129f = c4470h;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f21124a.m1942a(this.f21125b, this.f21126c, this.f21127d, this.f21128e, this.f21129f);
            }
        });
        return c4470h.m3889a();
    }

    /* renamed from: a */
    private final String m1946a() {
        String str;
        try {
            str = Base64.encodeToString(MessageDigest.getInstance("SHA-1").digest(this.f21130a.m2150b().getBytes()), 11);
        } catch (NoSuchAlgorithmException e) {
            str = "[HASH-ERROR]";
        }
        return str;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0128 -> B:6:0x0099). Please submit an issue!!! */
    /* renamed from: b */
    private final Bundle m1941b(String str, String str2, String str3, Bundle bundle) {
        bundle.putString("scope", str3);
        bundle.putString("sender", str2);
        bundle.putString("subtype", str2);
        bundle.putString("appid", str);
        bundle.putString("gmp_app_id", this.f21130a.m2148c().m2048b());
        bundle.putString("gmsv", Integer.toString(this.f21131b.m1915e()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f21131b.m1917c());
        bundle.putString("app_ver_name", this.f21131b.m1916d());
        bundle.putString("firebase-app-name-hash", m1946a());
        try {
            String mo1778a = ((AbstractC5037l) C4473j.m3884a((AbstractC4469g<Object>) this.f21136g.mo1782a(false))).mo1778a();
            if (!TextUtils.isEmpty(mo1778a)) {
                bundle.putString("Goog-Firebase-Installations-Auth", mo1778a);
            } else {
                Log.w("FirebaseInstanceId", "FIS auth token is empty");
            }
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseInstanceId", "Failed to get FIS auth token", e);
        }
        String m13994a = C2656p.m13995a().m13994a("firebase-iid");
        String str4 = m13994a;
        if ("UNKNOWN".equals(m13994a)) {
            str4 = new StringBuilder(19).append("unknown_").append(C2593f.f7273b).toString();
        }
        String valueOf = String.valueOf(str4);
        bundle.putString("cliv", valueOf.length() != 0 ? "fiid-".concat(valueOf) : new String("fiid-"));
        AbstractC4873c.EnumC4874a mo2133a = this.f21135f.mo2133a("fire-iid");
        if (mo2133a != AbstractC4873c.EnumC4874a.NONE) {
            bundle.putString("Firebase-Client-Log-Type", Integer.toString(mo2133a.m2132a()));
            bundle.putString("Firebase-Client", this.f21134e.mo2009a());
        }
        return bundle;
    }

    /* renamed from: a */
    public final AbstractC4469g<String> m1944a(String str, String str2, String str3) {
        return m1945a(m1943a(str, str2, str3, new Bundle()));
    }

    /* renamed from: a */
    public final /* synthetic */ void m1942a(String str, String str2, String str3, Bundle bundle, C4470h c4470h) {
        try {
            m1941b(str, str2, str3, bundle);
            c4470h.m3887a((C4470h) this.f21132c.m1906a(bundle));
        } catch (IOException e) {
            c4470h.m3888a((Exception) e);
        }
    }
}
