package p081h.p203i.p204a.p224e.p235d.p240n;

import android.app.Activity;
import android.content.Intent;
/* renamed from: h.i.a.e.d.n.b0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/b0.class */
public final class C6966b0 extends AbstractDialogInterface$OnClickListenerC6989g {

    /* renamed from: a */
    public final /* synthetic */ Intent f17044a;

    /* renamed from: b */
    public final /* synthetic */ Activity f17045b;

    /* renamed from: c */
    public final /* synthetic */ int f17046c;

    public C6966b0(Intent intent, Activity activity, int i) {
        this.f17044a = intent;
        this.f17045b = activity;
        this.f17046c = i;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractDialogInterface$OnClickListenerC6989g
    /* renamed from: a */
    public final void mo21371a() {
        Intent intent = this.f17044a;
        if (intent != null) {
            this.f17045b.startActivityForResult(intent, this.f17046c);
        }
    }
}
