package com.callerid.block.mvc.controller;

import android.view.inputmethod.InputMethodManager;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$b.class */
class EZSearchNumberActivity$b extends TimerTask {

    /* renamed from: b */
    final /* synthetic */ EZSearchNumberActivity f4637b;

    EZSearchNumberActivity$b(EZSearchNumberActivity eZSearchNumberActivity) {
        this.f4637b = eZSearchNumberActivity;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        InputMethodManager inputMethodManager = (InputMethodManager) this.f4637b.s.getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(this.f4637b.s, 0);
        }
    }
}
