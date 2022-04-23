package com.android.contacts.d;

import android.net.Uri;
import android.provider.ContactsContract;
import com.android.contacts.util.CompatUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/d/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Uri f795a = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, "filter_enterprise");

    public static Uri a() {
        return CompatUtils.isNCompatible() ? f795a : ContactsContract.Contacts.CONTENT_FILTER_URI;
    }

    public static boolean a(long j) {
        return CompatUtils.isLollipopCompatible() ? ContactsContract.Contacts.isEnterpriseContactId(j) : j >= 1000000000 && j < 9223372034707292160L;
    }
}
