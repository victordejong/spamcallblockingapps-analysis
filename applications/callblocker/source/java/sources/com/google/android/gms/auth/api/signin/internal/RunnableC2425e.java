package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.AbstractC2495e;
import com.google.android.gms.common.api.C2497f;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C2561o;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.p130a.C2470a;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* renamed from: com.google.android.gms.auth.api.signin.internal.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/e.class */
public final class RunnableC2425e implements Runnable {

    /* renamed from: a */
    private static final C2470a f6957a = new C2470a("RevokeAccessOperation", new String[0]);

    /* renamed from: b */
    private final String f6958b;

    /* renamed from: c */
    private final C2561o f6959c = new C2561o(null);

    private RunnableC2425e(String str) {
        this.f6958b = C2662s.m13979a(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.common.api.e] */
    /* renamed from: a */
    public static AbstractC2495e<Status> m14520a(String str) {
        C2561o c2561o;
        if (str == null) {
            c2561o = C2497f.m14417a(new Status(4), (AbstractC2492d) null);
        } else {
            RunnableC2425e runnableC2425e = new RunnableC2425e(str);
            new Thread(runnableC2425e).start();
            c2561o = runnableC2425e.f6959c;
        }
        return c2561o;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Exception e;
        IOException e2;
        int responseCode;
        Status status = Status.f7031c;
        try {
            String valueOf = String.valueOf("https://accounts.google.com/o/oauth2/revoke?token=");
            String valueOf2 = String.valueOf(this.f6958b);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.f7029a;
            } else {
                f6957a.m14467b("Unable to revoke access!", new Object[0]);
            }
        } catch (IOException e3) {
            e2 = e3;
        } catch (Exception e4) {
            e = e4;
        }
        try {
            f6957a.m14468a(new StringBuilder(26).append("Response Code: ").append(responseCode).toString(), new Object[0]);
        } catch (IOException e5) {
            e2 = e5;
            C2470a c2470a = f6957a;
            String valueOf3 = String.valueOf(e2.toString());
            c2470a.m14467b(valueOf3.length() != 0 ? "IOException when revoking access: ".concat(valueOf3) : new String("IOException when revoking access: "), new Object[0]);
            this.f6959c.m14412b((C2561o) status);
        } catch (Exception e6) {
            e = e6;
            C2470a c2470a2 = f6957a;
            String valueOf4 = String.valueOf(e.toString());
            c2470a2.m14467b(valueOf4.length() != 0 ? "Exception when revoking access: ".concat(valueOf4) : new String("Exception when revoking access: "), new Object[0]);
            this.f6959c.m14412b((C2561o) status);
        }
        this.f6959c.m14412b((C2561o) status);
    }
}
