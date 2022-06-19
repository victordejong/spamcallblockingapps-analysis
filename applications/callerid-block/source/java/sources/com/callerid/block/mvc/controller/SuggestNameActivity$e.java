package com.callerid.block.mvc.controller;

import android.view.inputmethod.InputMethodManager;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/SuggestNameActivity$e.class */
class SuggestNameActivity$e extends TimerTask {

    /* renamed from: b */
    final /* synthetic */ SuggestNameActivity f4711b;

    SuggestNameActivity$e(SuggestNameActivity suggestNameActivity) {
        this.f4711b = suggestNameActivity;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        InputMethodManager inputMethodManager = (InputMethodManager) this.f4711b.getApplication().getSystemService("input_method");
        if (inputMethodManager == null || SuggestNameActivity.S(this.f4711b) == null) {
            return;
        }
        inputMethodManager.showSoftInput(SuggestNameActivity.S(this.f4711b), 0);
    }
}
