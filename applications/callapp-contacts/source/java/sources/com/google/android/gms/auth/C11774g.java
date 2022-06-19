package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.auth.AbstractBinderC13129o;
import java.io.IOException;
/* renamed from: com.google.android.gms.auth.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/g.class */
public final class C11774g implements AbstractC11775h<Void> {

    /* renamed from: a */
    private final /* synthetic */ String f39092a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f39093b;

    public C11774g(String str, Bundle bundle) {
        this.f39092a = str;
        this.f39093b = bundle;
    }

    @Override // com.google.android.gms.auth.AbstractC11775h
    /* renamed from: a */
    public final /* synthetic */ Void mo19509a(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Bundle bundle = (Bundle) C11772e.m19511a(AbstractBinderC13129o.m13617a(iBinder).mo13615a(this.f39092a, this.f39093b));
        String string = bundle.getString("Error");
        if (bundle.getBoolean("booleanResult")) {
            return null;
        }
        throw new GoogleAuthException(string);
    }
}
