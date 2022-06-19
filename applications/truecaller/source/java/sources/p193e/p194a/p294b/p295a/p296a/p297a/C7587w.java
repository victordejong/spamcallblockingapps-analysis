package p193e.p194a.p294b.p295a.p296a.p297a;

import android.widget.CompoundButton;
import android.widget.Spinner;
/* renamed from: e.a.b.a.a.a.w */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/w.class */
public final class C7587w implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ Spinner f23912a;

    /* renamed from: b */
    public final /* synthetic */ Spinner f23913b;

    public C7587w(Spinner spinner, Spinner spinner2) {
        this.f23912a = spinner;
        this.f23913b = spinner2;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f23912a.setEnabled(z);
        this.f23913b.setEnabled(z);
    }
}
