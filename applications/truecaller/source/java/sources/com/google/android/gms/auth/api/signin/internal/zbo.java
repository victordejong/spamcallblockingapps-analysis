package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.internal.auth_api.zbb;
import com.google.android.gms.tasks.TaskCompletionSource;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.C24971h;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.C24973j;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/zbo.class */
public abstract class zbo extends zbb implements zbp {
    public zbo() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
    }

    @Override // com.google.android.gms.internal.auth_api.zbb
    public final boolean zba(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        boolean z = false;
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            zbt zbtVar = (zbt) this;
            zbtVar.m39096m1();
            zbn.m39098a(zbtVar.f5574a).m39097b();
            return true;
        }
        zbt zbtVar2 = (zbt) this;
        zbtVar2.m39096m1();
        Storage m39113a = Storage.m39113a(zbtVar2.f5574a);
        GoogleSignInAccount m39112b = m39113a.m39112b();
        GoogleSignInOptions googleSignInOptions = GoogleSignInOptions.f5516l;
        if (m39112b != null) {
            googleSignInOptions = m39113a.m39111c();
        }
        GoogleSignInClient m39130a = GoogleSignIn.m39130a(zbtVar2.f5574a, googleSignInOptions);
        if (m39112b == null) {
            m39130a.signOut();
            return true;
        }
        GoogleApiClient asGoogleApiClient = m39130a.asGoogleApiClient();
        Context applicationContext = m39130a.getApplicationContext();
        if (m39130a.m39124c() == 3) {
            z = true;
        }
        PendingResult<Status> m39101b = zbm.m39101b(asGoogleApiClient, applicationContext, z);
        m39101b.addStatusListener(new C24971h(m39101b, new TaskCompletionSource(), new C24973j(), PendingResultUtil.f5992a));
        return true;
    }
}
