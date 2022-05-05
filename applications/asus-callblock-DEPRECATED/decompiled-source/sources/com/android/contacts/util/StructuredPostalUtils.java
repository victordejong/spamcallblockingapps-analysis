package com.android.contacts.util;

import android.content.Intent;
import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/StructuredPostalUtils.class */
public class StructuredPostalUtils {
    private StructuredPostalUtils() {
    }

    public static Uri getPostalAddressUri(String str) {
        return Uri.parse("geo:0,0?q=" + Uri.encode(str));
    }

    public static Intent getViewPostalAddressIntent(String str) {
        return new Intent("android.intent.action.VIEW", getPostalAddressUri(str));
    }
}
