package com.callerid.block.mvc.controller;

import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import android.widget.Toast;
import com.callerid.block.R$string;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$l.class */
class EZSearchNumberActivity$l implements TextView.OnEditorActionListener {

    /* renamed from: a */
    final /* synthetic */ EZSearchNumberActivity f4645a;

    EZSearchNumberActivity$l(EZSearchNumberActivity eZSearchNumberActivity) {
        this.f4645a = eZSearchNumberActivity;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 3) {
            return false;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) textView.getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(textView.getWindowToken(), 0);
        }
        EZSearchNumberActivity.e0(this.f4645a).setVisibility(8);
        EZSearchNumberActivity.e0(this.f4645a).setClickable(false);
        if (!"".equals(this.f4645a.s.getText().toString())) {
            this.f4645a.p0();
            EZSearchNumberActivity.f0(this.f4645a);
            return true;
        }
        if (!(EZSearchNumberActivity.g0(this.f4645a) == null || EZSearchNumberActivity.g0(this.f4645a).size() == 0)) {
            EZSearchNumberActivity.e0(this.f4645a).setVisibility(0);
            EZSearchNumberActivity.e0(this.f4645a).setClickable(true);
        }
        Toast.makeText(this.f4645a.getApplicationContext(), this.f4645a.getResources().getString(R$string.invalid_nubmer), 0).show();
        return true;
    }
}
