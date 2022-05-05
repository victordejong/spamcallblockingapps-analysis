package com.hiya.stingray.p000ui.setting;

import android.widget.CompoundButton;
import android.widget.EditText;
import com.hiya.stingray.manager.s3;
import com.hiya.stingray.n;
import kotlin.c0.m;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$m0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$m0.class */
final class DebugActivity$m0 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ DebugActivity f103a;

    DebugActivity$m0(DebugActivity debugActivity) {
        this.f103a = debugActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            s3 l0 = this.f103a.l0();
            EditText editText = (EditText) this.f103a.O(n.Z2);
            k.c(editText, "promoPremiumDuration");
            Long k = m.k(editText.getText().toString());
            l0.a(k != null ? k.longValue() : 3L);
        } else {
            s3.f(this.f103a.l0(), false, 1, (Object) null);
        }
        EditText editText2 = (EditText) this.f103a.O(n.Z2);
        k.c(editText2, "promoPremiumDuration");
        editText2.setText((CharSequence) null);
        DebugActivity.V(this.f103a);
    }
}
