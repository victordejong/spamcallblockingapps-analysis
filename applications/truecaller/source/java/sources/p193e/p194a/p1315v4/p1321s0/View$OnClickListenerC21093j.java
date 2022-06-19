package p193e.p194a.p1315v4.p1321s0;

import android.view.View;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import com.truecaller.sdk.oAuth.networking.data.ScopeInfo;
/* renamed from: e.a.v4.s0.j */
/* loaded from: classes12-dex2jar.jar:e/a/v4/s0/j.class */
public final class View$OnClickListenerC21093j implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ AppCompatCheckedTextView f59218a;

    /* renamed from: b */
    public final /* synthetic */ C21091i f59219b;

    /* renamed from: c */
    public final /* synthetic */ ScopeInfo f59220c;

    public View$OnClickListenerC21093j(AppCompatCheckedTextView appCompatCheckedTextView, C21091i c21091i, ScopeInfo scopeInfo) {
        this.f59218a = appCompatCheckedTextView;
        this.f59219b = c21091i;
        this.f59220c = scopeInfo;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f59218a.toggle();
        this.f59220c.setChecked(this.f59218a.isChecked());
        this.f59219b.f59216b.mo10333X7(this.f59218a.isChecked());
    }
}
