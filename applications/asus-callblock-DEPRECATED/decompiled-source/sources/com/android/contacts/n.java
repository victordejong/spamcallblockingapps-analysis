package com.android.contacts;

import android.content.Context;
import android.content.res.Resources;
/* loaded from: classes-dex2jar.jar:com/android/contacts/n.class */
public final class n {
    public static String a(Context context, int i) {
        String string;
        Resources resources = context.getResources();
        switch (i) {
            case 2:
            case 3:
                string = resources.getString(2131756206);
                break;
            case 4:
                string = resources.getString(2131756207);
                break;
            case 5:
                string = resources.getString(2131756205);
                break;
            default:
                string = null;
                break;
        }
        return string;
    }
}
