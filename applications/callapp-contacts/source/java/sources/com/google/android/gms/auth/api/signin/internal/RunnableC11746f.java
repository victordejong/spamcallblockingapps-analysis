package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11921j;
import com.google.android.gms.common.api.C11933u;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11911r;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.p349a.C11806a;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* renamed from: com.google.android.gms.auth.api.signin.internal.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/f.class */
public final class RunnableC11746f implements Runnable {

    /* renamed from: a */
    private static final C11806a f39068a = new C11806a("RevokeAccessOperation", new String[0]);

    /* renamed from: b */
    private final String f39069b;

    /* renamed from: c */
    private final C11911r f39070c = new C11911r((AbstractC11826g) null);

    private RunnableC11746f(String str) {
        this.f39069b = C12045o.m19160a(str);
    }

    /* renamed from: a */
    public static AbstractC11921j<Status> m19540a(String str) {
        if (str != null) {
            RunnableC11746f runnableC11746f = new RunnableC11746f(str);
            new Thread(runnableC11746f).start();
            return runnableC11746f.f39070c;
        }
        Status status = new Status(4);
        C12045o.m19161a(status, "Result must not be null");
        C12045o.m19153b(!status.getStatus().isSuccess(), "Status code must not be SUCCESS");
        C11933u c11933u = new C11933u(null, status);
        c11933u.m19438a((C11933u) status);
        return c11933u;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Status status = Status.RESULT_INTERNAL_ERROR;
        Status status2 = status;
        Status status3 = status;
        try {
            String valueOf = String.valueOf(this.f39069b);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(valueOf.length() != 0 ? "https://accounts.google.com/o/oauth2/revoke?token=".concat(valueOf) : new String("https://accounts.google.com/o/oauth2/revoke?token=")).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.RESULT_SUCCESS;
            } else {
                f39068a.m19474c("Unable to revoke access!", new Object[0]);
            }
            Status status4 = status;
            C11806a c11806a = f39068a;
            Status status5 = status;
            Status status6 = status;
            StringBuilder sb = new StringBuilder(26);
            Status status7 = status;
            sb.append("Response Code: ");
            Status status8 = status;
            sb.append(responseCode);
            status2 = status;
            status3 = status;
            c11806a.m19476a(sb.toString(), new Object[0]);
        } catch (IOException e) {
            C11806a c11806a2 = f39068a;
            String valueOf2 = String.valueOf(e.toString());
            c11806a2.m19474c(valueOf2.length() != 0 ? "IOException when revoking access: ".concat(valueOf2) : new String("IOException when revoking access: "), new Object[0]);
            status = status3;
        } catch (Exception e2) {
            C11806a c11806a3 = f39068a;
            String valueOf3 = String.valueOf(e2.toString());
            c11806a3.m19474c(valueOf3.length() != 0 ? "Exception when revoking access: ".concat(valueOf3) : new String("Exception when revoking access: "), new Object[0]);
            status = status2;
        }
        this.f39070c.m19438a((C11911r) status);
    }
}
