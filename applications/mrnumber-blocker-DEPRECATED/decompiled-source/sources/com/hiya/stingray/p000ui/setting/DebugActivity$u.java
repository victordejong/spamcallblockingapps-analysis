package com.hiya.stingray.p000ui.setting;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import com.hiya.stingray.n;
import com.hiya.stingray.util.C0091e0;
import kotlin.c0.m;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$u */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$u.class */
final class DebugActivity$u implements TextView.OnEditorActionListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f115f;

    DebugActivity$u(DebugActivity debugActivity) {
        this.f115f = debugActivity;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        DebugActivity debugActivity = this.f115f;
        int i2 = n.g1;
        ((EditText) debugActivity.O(i2)).clearFocus();
        EditText editText = (EditText) this.f115f.O(i2);
        k.c(editText, "firebaseRemoteConfigAddOverride");
        String E0 = m.E0(editText.getText().toString(), "=", "");
        EditText editText2 = (EditText) this.f115f.O(i2);
        k.c(editText2, "firebaseRemoteConfigAddOverride");
        this.f115f.m0().G(E0, m.x0(editText2.getText().toString(), "=", ""));
        ((EditText) this.f115f.O(i2)).setText("");
        DebugActivity.X(this.f115f);
        DebugActivity debugActivity2 = this.f115f;
        EditText editText3 = (EditText) debugActivity2.O(i2);
        k.c(editText3, "firebaseRemoteConfigAddOverride");
        C0091e0.m1029i(debugActivity2, editText3);
        return true;
    }
}
