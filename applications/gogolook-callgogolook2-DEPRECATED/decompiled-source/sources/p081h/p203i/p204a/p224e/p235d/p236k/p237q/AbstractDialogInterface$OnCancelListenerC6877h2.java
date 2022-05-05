package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.util.concurrent.atomic.AtomicReference;
import p081h.p203i.p204a.p224e.p235d.C6790c;
import p081h.p203i.p204a.p224e.p259j.p265f.HandlerC7537i;
/* renamed from: h.i.a.e.d.k.q.h2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/h2.class */
public abstract class AbstractDialogInterface$OnCancelListenerC6877h2 extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: b */
    public volatile boolean f16855b;

    /* renamed from: c */
    public final AtomicReference<C6884i2> f16856c;

    /* renamed from: d */
    public final Handler f16857d;

    /* renamed from: e */
    public final C6790c f16858e;

    public AbstractDialogInterface$OnCancelListenerC6877h2(AbstractC6874h hVar) {
        this(hVar, C6790c.m21910a());
    }

    public AbstractDialogInterface$OnCancelListenerC6877h2(AbstractC6874h hVar, C6790c cVar) {
        super(hVar);
        this.f16856c = new AtomicReference<>(null);
        this.f16857d = new HandlerC7537i(Looper.getMainLooper());
        this.f16858e = cVar;
    }

    /* renamed from: a */
    public static int m21672a(@Nullable C6884i2 i2Var) {
        if (i2Var == null) {
            return -1;
        }
        return i2Var.m21663b();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b6  */
    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo21674a(int r8, int r9, android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractDialogInterface$OnCancelListenerC6877h2.mo21674a(int, int, android.content.Intent):void");
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: a */
    public void mo21673a(Bundle bundle) {
        super.mo21673a(bundle);
        if (bundle != null) {
            this.f16856c.set(bundle.getBoolean("resolving_error", false) ? new C6884i2(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    /* renamed from: a */
    public abstract void mo21527a(ConnectionResult connectionResult, int i);

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: b */
    public void mo21671b(Bundle bundle) {
        super.mo21671b(bundle);
        C6884i2 i2Var = this.f16856c.get();
        if (i2Var != null) {
            bundle.putBoolean("resolving_error", true);
            bundle.putInt("failed_client_id", i2Var.m21663b());
            bundle.putInt("failed_status", i2Var.m21664a().m32000c());
            bundle.putParcelable("failed_resolution", i2Var.m21664a().m32003I());
        }
    }

    /* renamed from: b */
    public final void m21670b(ConnectionResult connectionResult, int i) {
        C6884i2 i2Var = new C6884i2(connectionResult, i);
        if (this.f16856c.compareAndSet(null, i2Var)) {
            this.f16857d.post(new RunnableC6888j2(this, i2Var));
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: d */
    public void mo21525d() {
        super.mo21525d();
        this.f16855b = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: e */
    public void mo16034e() {
        super.mo16034e();
        this.f16855b = false;
    }

    /* renamed from: f */
    public abstract void mo21524f();

    /* renamed from: g */
    public final void m21669g() {
        this.f16856c.set(null);
        mo21524f();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        mo21527a(new ConnectionResult(13, null), m21672a(this.f16856c.get()));
        m21669g();
    }
}
