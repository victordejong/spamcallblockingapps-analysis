package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.IBinder;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.lang.ref.WeakReference;
import java.util.NoSuchElementException;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6954s;
/* renamed from: h.i.a.e.d.k.q.y1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/y1.class */
public final class C6947y1 implements IBinder.DeathRecipient, AbstractC6951z1 {

    /* renamed from: a */
    public final WeakReference<BasePendingResult<?>> f17030a;

    /* renamed from: b */
    public final WeakReference<AbstractC6954s> f17031b;

    /* renamed from: c */
    public final WeakReference<IBinder> f17032c;

    public C6947y1(BasePendingResult<?> basePendingResult, AbstractC6954s sVar, IBinder iBinder) {
        this.f17031b = new WeakReference<>(sVar);
        this.f17030a = new WeakReference<>(basePendingResult);
        this.f17032c = new WeakReference<>(iBinder);
    }

    public /* synthetic */ C6947y1(BasePendingResult basePendingResult, AbstractC6954s sVar, IBinder iBinder, C6943x1 x1Var) {
        this(basePendingResult, null, iBinder);
    }

    /* renamed from: a */
    public final void m21478a() {
        BasePendingResult<?> basePendingResult = this.f17030a.get();
        AbstractC6954s sVar = this.f17031b.get();
        if (!(sVar == null || basePendingResult == null)) {
            sVar.m21468a(basePendingResult.m31976e().intValue());
        }
        IBinder iBinder = this.f17032c.get();
        if (iBinder != null) {
            try {
                iBinder.unlinkToDeath(this, 0);
            } catch (NoSuchElementException e) {
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6951z1
    /* renamed from: a */
    public final void mo21469a(BasePendingResult<?> basePendingResult) {
        m21478a();
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        m21478a();
    }
}
