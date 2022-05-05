package com.android.contacts.d;

import android.net.Uri;
import android.provider.ContactsContract;
/* loaded from: classes-dex2jar.jar:com/android/contacts/d/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f798a = ContactsContract.Directory.ENTERPRISE_CONTENT_URI;

    public static boolean a(long j) {
        return ContactsContract.Directory.isRemoteDirectoryId(j);
    }

    public static boolean b(long j) {
        return ContactsContract.Directory.isEnterpriseDirectoryId(j);
    }
}
