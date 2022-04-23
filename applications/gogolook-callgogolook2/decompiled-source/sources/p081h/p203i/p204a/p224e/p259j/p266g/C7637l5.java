package p081h.p203i.p204a.p224e.p259j.p266g;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.api.Status;
import p081h.p203i.p204a.p224e.p234c.C6777a;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6850c;
/* renamed from: h.i.a.e.j.g.l5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/l5.class */
public final class C7637l5 extends AbstractC6850c<Status, C7670p5> {

    /* renamed from: s */
    public final zze f17910s;

    public C7637l5(zze zzeVar, AbstractC6825f fVar) {
        super(C6777a.f16655o, fVar);
        this.f17910s = zzeVar;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final /* synthetic */ AbstractC6835k mo17894a(Status status) {
        return status;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6850c
    /* renamed from: a */
    public final /* synthetic */ void mo17881a(C7670p5 p5Var) throws RemoteException {
        C7670p5 p5Var2 = p5Var;
        BinderC7663o5 o5Var = new BinderC7663o5(this);
        try {
            zze zzeVar = this.f17910s;
            if (zzeVar.f6493j != null && zzeVar.f6492i.f17945k.length == 0) {
                zzeVar.f6492i.f17945k = zzeVar.f6493j.m21914c();
            }
            if (zzeVar.f6494k != null && zzeVar.f6492i.f17952r.length == 0) {
                zzeVar.f6492i.f17952r = zzeVar.f6494k.m21914c();
            }
            C7649m5 m5Var = zzeVar.f6492i;
            byte[] bArr = new byte[m5Var.m19695d()];
            C7718w4.m19696a(m5Var, bArr, 0, bArr.length);
            zzeVar.f6485b = bArr;
            ((AbstractC7698t5) p5Var2.m21414u()).mo19770a(o5Var, this.f17910s);
        } catch (RuntimeException e) {
            Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", e);
            m21771c(new Status(10, "MessageProducer"));
        }
    }
}
