package com.bumptech.glide.load.p079a;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import java.io.FileNotFoundException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.a.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/n.class */
public class C1492n extends AbstractC1490l<InputStream> {

    /* renamed from: a */
    private static final UriMatcher f4838a = new UriMatcher(-1);

    static {
        f4838a.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        f4838a.addURI("com.android.contacts", "contacts/lookup/*", 1);
        f4838a.addURI("com.android.contacts", "contacts/#/photo", 2);
        f4838a.addURI("com.android.contacts", "contacts/#", 3);
        f4838a.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        f4838a.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    public C1492n(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    /* renamed from: a */
    private InputStream m16906a(ContentResolver contentResolver, Uri uri) {
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    /* renamed from: c */
    private InputStream m16901c(Uri uri, ContentResolver contentResolver) {
        InputStream m16906a;
        switch (f4838a.match(uri)) {
            case 1:
            case 5:
                Uri lookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri);
                if (lookupContact != null) {
                    m16906a = m16906a(contentResolver, lookupContact);
                    break;
                } else {
                    throw new FileNotFoundException("Contact cannot be found");
                }
            case 2:
            case 4:
            default:
                m16906a = contentResolver.openInputStream(uri);
                break;
            case 3:
                m16906a = m16906a(contentResolver, uri);
                break;
        }
        return m16906a;
    }

    /* renamed from: a */
    public InputStream mo16902b(Uri uri, ContentResolver contentResolver) {
        InputStream m16901c = m16901c(uri, contentResolver);
        if (m16901c == null) {
            throw new FileNotFoundException("InputStream is null for " + uri);
        }
        return m16901c;
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: a */
    public Class<InputStream> mo16813a() {
        return InputStream.class;
    }

    /* renamed from: a */
    public void mo16903a(InputStream inputStream) {
        inputStream.close();
    }
}
