package p193e.p1577m.p1578a.p1642f.p1644b;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.zzd;
import com.google.android.gms.internal.auth.zzf;
import java.io.IOException;
/* renamed from: e.m.a.f.b.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/b/d.class */
public final class C24895d implements AbstractC24896e<Void> {

    /* renamed from: a */
    public final /* synthetic */ String f69789a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f69790b;

    public C24895d(String str, Bundle bundle) {
        this.f69789a = str;
        this.f69790b = bundle;
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1644b.AbstractC24896e
    /* renamed from: a */
    public final /* synthetic */ Void mo4301a(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Bundle zza = zzf.zza(iBinder).zza(this.f69789a, this.f69790b);
        zzd.m39093c(zza);
        Bundle bundle = zza;
        String string = bundle.getString("Error");
        if (bundle.getBoolean("booleanResult")) {
            return null;
        }
        throw new GoogleAuthException(string);
    }
}
