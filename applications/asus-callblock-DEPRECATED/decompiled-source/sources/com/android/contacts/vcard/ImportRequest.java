package com.android.contacts.vcard;

import android.accounts.Account;
import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ImportRequest.class */
public class ImportRequest {
    public final Account account;
    public final byte[] data;
    public final String displayName;
    public final int entryCount;
    public final String estimatedCharset;
    public final int estimatedVCardType;
    public final Uri uri;
    public final int vcardVersion;

    public ImportRequest(Account account, byte[] bArr, Uri uri, String str, int i, String str2, int i2, int i3) {
        this.account = account;
        this.data = bArr;
        this.uri = uri;
        this.displayName = str;
        this.estimatedVCardType = i;
        this.estimatedCharset = str2;
        this.vcardVersion = i2;
        this.entryCount = i3;
    }
}
