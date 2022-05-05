package p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import p081h.p203i.p204a.p224e.p259j.p263d.C7504a;
import p081h.p203i.p204a.p224e.p259j.p263d.C7506c;
/* renamed from: h.i.a.e.b.e.h.b.s */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/b/s.class */
public final class C6757s extends C7504a implements AbstractC6756r {
    public C6757s(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService");
    }

    @Override // p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b.AbstractC6756r
    /* renamed from: a */
    public final void mo21947a(AbstractC6754p pVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel G0 = m20409G0();
        C7506c.m20406a(G0, pVar);
        C7506c.m20404a(G0, googleSignInOptions);
        m20408a(103, G0);
    }
}
