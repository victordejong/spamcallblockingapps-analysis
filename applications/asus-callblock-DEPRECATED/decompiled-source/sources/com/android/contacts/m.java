package com.android.contacts;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.provider.ContactsContract;
/* loaded from: classes-dex2jar.jar:com/android/contacts/m.class */
public final class m {
    public static Drawable a(Context context, int i) {
        Drawable drawable;
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                drawable = context.getResources().getDrawable(ContactsContract.StatusUpdates.getPresenceIconResourceId(i));
                break;
            default:
                drawable = null;
                break;
        }
        return drawable;
    }
}
