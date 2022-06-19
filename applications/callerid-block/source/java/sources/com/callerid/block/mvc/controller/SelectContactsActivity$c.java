package com.callerid.block.mvc.controller;

import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.widget.TextView;
import com.callerid.block.R$anim;
import com.callerid.block.sms.MessageBoxListActivity;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/SelectContactsActivity$c.class */
class SelectContactsActivity$c implements TextView.OnEditorActionListener {

    /* renamed from: a */
    final /* synthetic */ SelectContactsActivity f4702a;

    SelectContactsActivity$c(SelectContactsActivity selectContactsActivity) {
        this.f4702a = selectContactsActivity;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", SelectContactsActivity.T(this.f4702a).getText().toString());
            }
            String obj = SelectContactsActivity.T(this.f4702a).getText().toString();
            if (obj == null || obj.equals("")) {
                return false;
            }
            Intent intent = new Intent((Context) this.f4702a, (Class<?>) MessageBoxListActivity.class);
            intent.putExtra("SmsNumber", obj);
            this.f4702a.startActivity(intent);
            SelectContactsActivity.T(this.f4702a).setText("");
            this.f4702a.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            this.f4702a.finish();
            return false;
        }
        return false;
    }
}
