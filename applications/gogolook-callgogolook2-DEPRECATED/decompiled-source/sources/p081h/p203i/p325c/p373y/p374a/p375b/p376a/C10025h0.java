package p081h.p203i.p325c.p373y.p374a.p375b.p376a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.LongSparseArray;
import androidx.annotation.WorkerThread;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p259j.p271l.C8075e2;
import p081h.p203i.p204a.p224e.p259j.p271l.C8386u6;
import p081h.p203i.p204a.p224e.p259j.p271l.EnumC8223l4;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p325c.p373y.p374a.C10009a;
@WorkerThread
/* renamed from: h.i.c.y.a.b.a.h0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/b/a/h0.class */
public final class C10025h0 extends BroadcastReceiver {

    /* renamed from: a */
    public final long f22683a;

    /* renamed from: b */
    public final C9145i<Void> f22684b;

    /* renamed from: c */
    public final /* synthetic */ C10021f0 f22685c;

    public C10025h0(C10021f0 f0Var, long j, C9145i<Void> iVar) {
        this.f22685c = f0Var;
        this.f22683a = j;
        this.f22684b = iVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        LongSparseArray longSparseArray;
        LongSparseArray longSparseArray2;
        C10023g0 g0Var;
        EnumC10040w j;
        C10023g0 g0Var2;
        EnumC10040w j2;
        C10023g0 g0Var3;
        EnumC10040w j3;
        C10009a b;
        C6999k kVar;
        C8386u6 u6Var;
        long longExtra = intent.getLongExtra("extra_download_id", -1L);
        if (longExtra == this.f22683a) {
            Integer d = this.f22685c.m13591d();
            synchronized (this.f22685c) {
                try {
                    u6Var = this.f22685c.f22670c;
                    u6Var.m18152a().unregisterReceiver(this);
                } catch (IllegalArgumentException e) {
                    kVar = C10021f0.f22666j;
                    kVar.m21336b("ModelDownloadManager", "Exception thrown while trying to unregister the broadcast receiver for the download", e);
                }
                longSparseArray = this.f22685c.f22668a;
                longSparseArray.remove(this.f22683a);
                longSparseArray2 = this.f22685c.f22669b;
                longSparseArray2.remove(this.f22683a);
            }
            if (d != null) {
                if (d.intValue() == 16) {
                    g0Var3 = this.f22685c.f22673f;
                    j3 = this.f22685c.m13583j();
                    g0Var3.m13575a(false, j3, this.f22685c.m13600a(Long.valueOf(longExtra)));
                    C9145i<Void> iVar = this.f22684b;
                    b = this.f22685c.m13595b(Long.valueOf(longExtra));
                    iVar.m16007a(b);
                    return;
                } else if (d.intValue() == 8) {
                    g0Var2 = this.f22685c.f22673f;
                    EnumC8223l4 l4Var = EnumC8223l4.NO_ERROR;
                    j2 = this.f22685c.m13583j();
                    g0Var2.m13579a(l4Var, j2, C8075e2.EnumC8077b.SUCCEEDED);
                    this.f22684b.m16006a((C9145i<Void>) null);
                    return;
                }
            }
            g0Var = this.f22685c.f22673f;
            j = this.f22685c.m13583j();
            g0Var.m13575a(false, j, 0);
            this.f22684b.m16007a(new C10009a("Model downloading failed", 13));
        }
    }
}
