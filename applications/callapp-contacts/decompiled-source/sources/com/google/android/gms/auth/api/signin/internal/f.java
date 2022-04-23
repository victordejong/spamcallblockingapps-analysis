package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.a.a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.internal.r;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.u;
import com.google.android.gms.common.internal.o;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/f.class */
public final class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final a f22514a = new a("RevokeAccessOperation", new String[0]);

    /* renamed from: b  reason: collision with root package name */
    private final String f22515b;

    /* renamed from: c  reason: collision with root package name */
    private final r f22516c = new r((g) null);

    private f(String str) {
        this.f22515b = o.a(str);
    }

    public static j<Status> a(String str) {
        if (str == null) {
            Status status = new Status(4);
            o.a(status, "Result must not be null");
            o.b(!status.getStatus().isSuccess(), "Status code must not be SUCCESS");
            u uVar = new u(null, status);
            uVar.a((u) status);
            return uVar;
        }
        f fVar = new f(str);
        new Thread(fVar).start();
        return fVar.f22516c;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Status status = Status.RESULT_INTERNAL_ERROR;
        status = status;
        status = status;
        try {
            String valueOf = String.valueOf(this.f22515b);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(valueOf.length() != 0 ? "https://accounts.google.com/o/oauth2/revoke?token=".concat(valueOf) : new String("https://accounts.google.com/o/oauth2/revoke?token=")).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.RESULT_SUCCESS;
            } else {
                f22514a.c("Unable to revoke access!", new Object[0]);
            }
            a aVar = f22514a;
            StringBuilder sb = new StringBuilder(26);
            sb.append("Response Code: ");
            sb.append(responseCode);
            status = status;
            status = status;
            aVar.a(sb.toString(), new Object[0]);
        } catch (IOException e) {
            a aVar2 = f22514a;
            String valueOf2 = String.valueOf(e.toString());
            aVar2.c(valueOf2.length() != 0 ? "IOException when revoking access: ".concat(valueOf2) : new String("IOException when revoking access: "), new Object[0]);
        } catch (Exception e2) {
            a aVar3 = f22514a;
            String valueOf3 = String.valueOf(e2.toString());
            aVar3.c(valueOf3.length() != 0 ? "Exception when revoking access: ".concat(valueOf3) : new String("Exception when revoking access: "), new Object[0]);
        }
        this.f22516c.a((r) status);
    }
}
