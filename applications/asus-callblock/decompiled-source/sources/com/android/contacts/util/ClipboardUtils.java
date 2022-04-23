package com.android.contacts.util;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.text.TextUtils;
import android.widget.Toast;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/ClipboardUtils.class */
public class ClipboardUtils {
    private static final String TAG = "ClipboardUtils";

    private ClipboardUtils() {
    }

    public static void copyText(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z) {
        if (!TextUtils.isEmpty(charSequence2)) {
            ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
            CharSequence charSequence3 = charSequence;
            if (charSequence == null) {
                charSequence3 = BuildConfig.FLAVOR;
            }
            clipboardManager.setPrimaryClip(ClipData.newPlainText(charSequence3, charSequence2));
            if (z) {
                Toast.makeText(context, context.getString(2131756235), 0).show();
            }
        }
    }
}
