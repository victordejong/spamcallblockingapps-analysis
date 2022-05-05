package com.hiya.stingray.p000ui.login.verification;

import android.view.View;
import android.widget.EditText;
import androidx.fragment.app.e;
import com.hiya.stingray.n;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.login.verification.j$f */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/j$f.class */
final class j$f implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ j f14f;

    j$f(j jVar) {
        this.f14f = jVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        EditText editText = (EditText) this.f14f.f1(n.N0);
        k.c(editText, "editText");
        editText.getText().clear();
        a i1 = j.i1(this.f14f);
        e activity = this.f14f.getActivity();
        if (activity != null) {
            k.c(activity, "activity!!");
            i1.z(activity);
            return;
        }
        k.o();
        throw null;
    }
}
