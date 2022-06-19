package com.huawei.hms.availableupdate;

import android.content.DialogInterface;
import android.view.KeyEvent;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/a0$b.class */
public class a0$b implements DialogInterface.OnKeyListener {
    public a0$b() {
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        return i == 4 && keyEvent.getRepeatCount() == 0;
    }
}
