package com.callerid.block.mvc.controller;

import android.content.Intent;
import android.view.View;
import android.widget.Toast;
import com.callerid.block.R$string;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$k.class */
class EZSearchNumberActivity$k implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ EZSearchNumberActivity f4644b;

    EZSearchNumberActivity$k(EZSearchNumberActivity eZSearchNumberActivity) {
        this.f4644b = eZSearchNumberActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        try {
            this.f4644b.startActivityForResult(intent, 10002);
        } catch (Exception e) {
            Toast.makeText(this.f4644b.getApplicationContext(), this.f4644b.getResources().getString(R$string.voice_erro_tip), 0).show();
        }
    }
}
