package com.google.firebase.iid;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.appsflyer.AppsFlyerProperties;
import com.google.android.gms.tasks.k;
import com.google.firebase.b;
import com.google.firebase.c.f;
import com.google.firebase.f.i;
import com.google.firebase.installations.h;
import com.google.firebase.installations.l;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final b f32341a;

    /* renamed from: b  reason: collision with root package name */
    private final n f32342b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.gms.cloudmessaging.b f32343c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.firebase.d.b<i> f32344d;
    private final com.google.firebase.d.b<f> e;
    private final h f;

    j(b bVar, n nVar, com.google.android.gms.cloudmessaging.b bVar2, com.google.firebase.d.b<i> bVar3, com.google.firebase.d.b<f> bVar4, h hVar) {
        this.f32341a = bVar;
        this.f32342b = nVar;
        this.f32343c = bVar2;
        this.f32344d = bVar3;
        this.e = bVar4;
        this.f = hVar;
    }

    public j(b bVar, n nVar, com.google.firebase.d.b<i> bVar2, com.google.firebase.d.b<f> bVar3, h hVar) {
        this(bVar, nVar, new com.google.android.gms.cloudmessaging.b(bVar.a()), bVar2, bVar3, hVar);
    }

    private String a() {
        try {
            return Base64.encodeToString(MessageDigest.getInstance("SHA-1").digest(this.f32341a.b().getBytes()), 11);
        } catch (NoSuchAlgorithmException e) {
            return "[HASH-ERROR]";
        }
    }

    private Bundle b(String str, String str2, String str3, Bundle bundle) {
        f.a a2;
        bundle.putString("scope", str3);
        bundle.putString("sender", str2);
        bundle.putString("subtype", str2);
        bundle.putString(AppsFlyerProperties.APP_ID, str);
        bundle.putString("gmp_app_id", this.f32341a.c().f32315b);
        bundle.putString("gmsv", Integer.toString(this.f32342b.d()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f32342b.b());
        bundle.putString("app_ver_name", this.f32342b.c());
        bundle.putString("firebase-app-name-hash", a());
        try {
            String a3 = ((l) k.a((com.google.android.gms.tasks.h<Object>) this.f.c())).a();
            if (!TextUtils.isEmpty(a3)) {
                bundle.putString("Goog-Firebase-Installations-Auth", a3);
            } else {
                Log.w("FirebaseInstanceId", "FIS auth token is empty");
            }
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseInstanceId", "Failed to get FIS auth token", e);
        }
        bundle.putString("cliv", "fiid-21.1.0");
        f a4 = this.e.a();
        i a5 = this.f32344d.a();
        if (!(a4 == null || a5 == null || (a2 = a4.a("fire-iid")) == f.a.NONE)) {
            bundle.putString("Firebase-Client-Log-Type", Integer.toString(a2.getCode()));
            bundle.putString("Firebase-Client", a5.a());
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.google.android.gms.tasks.h<String> a(com.google.android.gms.tasks.h<Bundle> hVar) {
        return hVar.a(a.a(), new com.google.android.gms.tasks.b(this) { // from class: com.google.firebase.iid.k

            /* renamed from: a  reason: collision with root package name */
            private final j f32345a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32345a = this;
            }

            @Override // com.google.android.gms.tasks.b
            public final Object then(com.google.android.gms.tasks.h hVar2) {
                Bundle bundle = (Bundle) hVar2.a(IOException.class);
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
                        Log.w("FirebaseInstanceId", sb.toString(), new Throwable());
                        throw new IOException("SERVICE_NOT_AVAILABLE");
                    }
                } else {
                    throw new IOException("SERVICE_NOT_AVAILABLE");
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.google.android.gms.tasks.h<Bundle> a(String str, String str2, String str3, Bundle bundle) {
        b(str, str2, str3, bundle);
        return this.f32343c.a(bundle);
    }
}
