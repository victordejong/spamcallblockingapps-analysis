package p193e.p194a.p294b.p295a.p296a.p297a;

import android.widget.CompoundButton;
import android.widget.Spinner;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p355m.C8090n;
import s1.z.c.l;
/* renamed from: e.a.b.a.a.a.a0 */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/a0.class */
public final class C7482a0 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ C8090n f23748a;

    /* renamed from: b */
    public final /* synthetic */ C7578v f23749b;

    public C7482a0(C8090n c8090n, C7578v c7578v) {
        this.f23748a = c8090n;
        this.f23749b = c7578v;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Spinner spinner = this.f23748a.f25026m;
        l.d(spinner, "mainOpeningSpinner");
        spinner.setEnabled(!z);
        Spinner spinner2 = this.f23748a.f25025l;
        l.d(spinner2, "mainClosingSpinner");
        spinner2.setEnabled(!z);
        for (int i = 0; i < 7; i++) {
            C19286f.m13683U(this.f23749b.f23900b.get(i), z);
            C19286f.m13683U(this.f23749b.f23901c.get(i), z);
        }
    }
}
