package com.callerid.block.main;

import android.content.DialogInterface;
import android.content.Intent;
import android.view.KeyEvent;
import com.callerid.block.main.MainActivity;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$19$a.class */
class MainActivity$19$a implements DialogInterface.OnKeyListener {

    /* renamed from: b */
    final /* synthetic */ MainActivity.19 f4586b;

    MainActivity$19$a(MainActivity.19 r4) {
        this.f4586b = r4;
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setFlags(268435456);
        intent.addCategory("android.intent.category.HOME");
        this.f4586b.o.startActivity(intent);
        return true;
    }
}
