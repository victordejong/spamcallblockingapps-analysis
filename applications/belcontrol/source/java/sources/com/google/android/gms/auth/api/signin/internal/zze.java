package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/zze.class */
public final class zze implements Runnable {
    private static final Logger zzci = new Logger("RevokeAccessOperation", new String[0]);
    private final String zzcj;
    private final StatusPendingResult zzck = new StatusPendingResult((GoogleApiClient) null);

    private zze(String str) {
        this.zzcj = Preconditions.checkNotEmpty(str);
    }

    public static PendingResult<Status> zzi(String str) {
        if (str == null) {
            return PendingResults.immediateFailedResult(new Status(4), null);
        }
        zze zzeVar = new zze(str);
        new Thread(zzeVar).start();
        return zzeVar.zzck;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Status status = Status.RESULT_INTERNAL_ERROR;
        Status status2 = status;
        Status status3 = status;
        try {
            String valueOf = String.valueOf(this.zzcj);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(valueOf.length() != 0 ? "https://accounts.google.com/o/oauth2/revoke?token=".concat(valueOf) : new String("https://accounts.google.com/o/oauth2/revoke?token=")).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.RESULT_SUCCESS;
            } else {
                zzci.m4423e("Unable to revoke access!", new Object[0]);
            }
            Status status4 = status;
            Logger logger = zzci;
            Status status5 = status;
            Status status6 = status;
            StringBuilder sb = new StringBuilder(26);
            Status status7 = status;
            sb.append("Response Code: ");
            Status status8 = status;
            sb.append(responseCode);
            status2 = status;
            status3 = status;
            logger.m4425d(sb.toString(), new Object[0]);
        } catch (IOException e) {
            Logger logger2 = zzci;
            String valueOf2 = String.valueOf(e.toString());
            logger2.m4423e(valueOf2.length() != 0 ? "IOException when revoking access: ".concat(valueOf2) : new String("IOException when revoking access: "), new Object[0]);
            status = status3;
        } catch (Exception e2) {
            Logger logger3 = zzci;
            String valueOf3 = String.valueOf(e2.toString());
            logger3.m4423e(valueOf3.length() != 0 ? "Exception when revoking access: ".concat(valueOf3) : new String("Exception when revoking access: "), new Object[0]);
            status = status2;
        }
        this.zzck.setResult(status);
    }
}
