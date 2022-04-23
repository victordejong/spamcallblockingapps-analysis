package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.auth.o;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/g.class */
public final class g implements h<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f22537a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Bundle f22538b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(String str, Bundle bundle) {
        this.f22537a = str;
        this.f22538b = bundle;
    }

    @Override // com.google.android.gms.auth.h
    public final /* synthetic */ Void a(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Bundle bundle = (Bundle) e.a(o.a(iBinder).a(this.f22537a, this.f22538b));
        String string = bundle.getString("Error");
        if (bundle.getBoolean("booleanResult")) {
            return null;
        }
        throw new GoogleAuthException(string);
    }
}
