package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/zbb.class */
public final class zbb implements Runnable {

    /* renamed from: c */
    public static final Logger f5564c = new Logger("RevokeAccessOperation", new String[0]);

    /* renamed from: a */
    public final String f5565a;

    /* renamed from: b */
    public final StatusPendingResult f5566b = new StatusPendingResult(null);

    public zbb(String str) {
        Preconditions.m38901g(str);
        this.f5565a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Status status = Status.f5724h;
        Status status2 = status;
        Status status3 = status;
        try {
            String valueOf = String.valueOf(this.f5565a);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(valueOf.length() != 0 ? "https://accounts.google.com/o/oauth2/revoke?token=".concat(valueOf) : new String("https://accounts.google.com/o/oauth2/revoke?token=")).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.f5722f;
            } else {
                f5564c.m38817b("Unable to revoke access!", new Object[0]);
            }
            Status status4 = status;
            Logger logger = f5564c;
            Status status5 = status;
            Status status6 = status;
            StringBuilder sb = new StringBuilder(26);
            Status status7 = status;
            sb.append("Response Code: ");
            Status status8 = status;
            sb.append(responseCode);
            status2 = status;
            status3 = status;
            logger.m38818a(sb.toString(), new Object[0]);
        } catch (IOException e) {
            Logger logger2 = f5564c;
            String valueOf2 = String.valueOf(e.toString());
            logger2.m38817b(valueOf2.length() != 0 ? "IOException when revoking access: ".concat(valueOf2) : new String("IOException when revoking access: "), new Object[0]);
            status = status3;
        } catch (Exception e2) {
            Logger logger3 = f5564c;
            String valueOf3 = String.valueOf(e2.toString());
            logger3.m38817b(valueOf3.length() != 0 ? "Exception when revoking access: ".concat(valueOf3) : new String("Exception when revoking access: "), new Object[0]);
            status = status2;
        }
        this.f5566b.setResult(status);
    }
}
