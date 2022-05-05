package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.ArrayList;
import java.util.List;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.r7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/r7.class */
public final class C7386r7 extends NativeAd.AdChoicesInfo {

    /* renamed from: a */
    public final AbstractC7361p7 f17437a;

    /* renamed from: b */
    public final List<NativeAd.Image> f17438b = new ArrayList();

    /* renamed from: c */
    public String f17439c;

    public C7386r7(AbstractC7361p7 p7Var) {
        AbstractC7398s7 s7Var;
        IBinder iBinder;
        this.f17437a = p7Var;
        try {
            this.f17439c = this.f17437a.mo20733l0();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            this.f17439c = "";
        }
        try {
            for (AbstractC7398s7 s7Var2 : p7Var.mo20732x0()) {
                if (!(s7Var2 instanceof IBinder) || (iBinder = (IBinder) s7Var2) == null) {
                    s7Var = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    s7Var = queryLocalInterface instanceof AbstractC7398s7 ? (AbstractC7398s7) queryLocalInterface : new C7422u7(iBinder);
                }
                if (s7Var != null) {
                    this.f17438b.add(new C7434v7(s7Var));
                }
            }
        } catch (RemoteException e2) {
            C7452x1.m20571b("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.f17438b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.f17439c;
    }
}
