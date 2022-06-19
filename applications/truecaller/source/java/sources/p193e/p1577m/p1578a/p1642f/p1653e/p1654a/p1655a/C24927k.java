package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.api.internal.zabd;
import com.google.android.gms.signin.internal.zac;
import com.google.android.gms.signin.internal.zak;
import java.lang.ref.WeakReference;
/* renamed from: e.m.a.f.e.a.a.k */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/k.class */
public final class C24927k extends zac {

    /* renamed from: a */
    public final WeakReference<zaar> f69847a;

    public C24927k(zaar zaarVar) {
        this.f69847a = new WeakReference<>(zaarVar);
    }

    /* renamed from: w0 */
    public final void m4288w0(zak zakVar) {
        zaar zaarVar = this.f69847a.get();
        if (zaarVar == null) {
            return;
        }
        zabd zabdVar = zaarVar.f5787a;
        zabdVar.f5837e.sendMessage(zabdVar.f5837e.obtainMessage(1, new C24925j(zaarVar, zaarVar, zakVar)));
    }
}
