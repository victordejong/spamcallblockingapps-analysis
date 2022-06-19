package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.api.AbstractC6003f;
import com.google.android.gms.common.api.C6005g;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C6054p;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.p269i.C6099a;
import com.yanzhenjie.nohttp.Headers;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* renamed from: com.google.android.gms.auth.api.signin.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/f.class */
public final class RunnableC5918f implements Runnable {

    /* renamed from: d */
    private static final C6099a f19046d = new C6099a("RevokeAccessOperation", new String[0]);

    /* renamed from: e */
    private final String f19047e;

    /* renamed from: f */
    private final C6054p f19048f = new C6054p(null);

    private RunnableC5918f(String str) {
        this.f19047e = C6155o.m17022f(str);
    }

    /* renamed from: a */
    public static AbstractC6003f<Status> m17588a(String str) {
        if (str == null) {
            return C6005g.m17454a(new Status(4), null);
        }
        RunnableC5918f runnableC5918f = new RunnableC5918f(str);
        new Thread(runnableC5918f).start();
        return runnableC5918f.f19048f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Status status = Status.f19169f;
        Status status2 = status;
        Status status3 = status;
        try {
            String valueOf = String.valueOf(this.f19047e);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(valueOf.length() != 0 ? "https://accounts.google.com/o/oauth2/revoke?token=".concat(valueOf) : new String("https://accounts.google.com/o/oauth2/revoke?token=")).openConnection();
            httpURLConnection.setRequestProperty(Headers.HEAD_KEY_CONTENT_TYPE, Headers.HEAD_VALUE_CONTENT_TYPE_URLENCODED);
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.f19167d;
            } else {
                f19046d.m17182b("Unable to revoke access!", new Object[0]);
            }
            Status status4 = status;
            C6099a c6099a = f19046d;
            Status status5 = status;
            Status status6 = status;
            StringBuilder sb = new StringBuilder(26);
            Status status7 = status;
            sb.append("Response Code: ");
            Status status8 = status;
            sb.append(responseCode);
            status2 = status;
            status3 = status;
            c6099a.m17183a(sb.toString(), new Object[0]);
        } catch (IOException e) {
            C6099a c6099a2 = f19046d;
            String valueOf2 = String.valueOf(e.toString());
            c6099a2.m17182b(valueOf2.length() != 0 ? "IOException when revoking access: ".concat(valueOf2) : new String("IOException when revoking access: "), new Object[0]);
            status = status3;
        } catch (Exception e2) {
            C6099a c6099a3 = f19046d;
            String valueOf3 = String.valueOf(e2.toString());
            c6099a3.m17182b(valueOf3.length() != 0 ? "Exception when revoking access: ".concat(valueOf3) : new String("Exception when revoking access: "), new Object[0]);
            status = status2;
        }
        this.f19048f.m17448f(status);
    }
}
