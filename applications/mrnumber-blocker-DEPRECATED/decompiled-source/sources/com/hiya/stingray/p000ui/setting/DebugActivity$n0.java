package com.hiya.stingray.p000ui.setting;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import com.hiya.stingray.n;
import com.hiya.stingray.util.C0091e0;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$n0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$n0.class */
final class DebugActivity$n0 implements TextView.OnEditorActionListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f107f;

    DebugActivity$n0(DebugActivity debugActivity) {
        this.f107f = debugActivity;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        DebugActivity debugActivity = this.f107f;
        int i2 = n.Z2;
        ((EditText) debugActivity.O(i2)).clearFocus();
        DebugActivity debugActivity2 = this.f107f;
        EditText editText = (EditText) debugActivity2.O(i2);
        k.c(editText, "promoPremiumDuration");
        C0091e0.m1029i(debugActivity2, editText);
        return true;
    }
}
