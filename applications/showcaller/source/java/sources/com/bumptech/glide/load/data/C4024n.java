package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import java.io.FileNotFoundException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.data.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/n.class */
public class C4024n extends AbstractC4022l<InputStream> {

    /* renamed from: g */
    private static final UriMatcher f12668g;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f12668g = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        uriMatcher.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    public C4024n(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    /* renamed from: i */
    private InputStream m23476i(Uri uri, ContentResolver contentResolver) {
        int match = f12668g.match(uri);
        if (match != 1) {
            if (match == 3) {
                return m23475j(contentResolver, uri);
            }
            if (match != 5) {
                return contentResolver.openInputStream(uri);
            }
        }
        Uri lookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri);
        if (lookupContact != null) {
            return m23475j(contentResolver, lookupContact);
        }
        throw new FileNotFoundException("Contact cannot be found");
    }

    /* renamed from: j */
    private InputStream m23475j(ContentResolver contentResolver, Uri uri) {
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: a */
    public Class<InputStream> mo23090a() {
        return InputStream.class;
    }

    /* renamed from: g */
    public void mo23480c(InputStream inputStream) {
        inputStream.close();
    }

    /* renamed from: h */
    public InputStream mo23479f(Uri uri, ContentResolver contentResolver) {
        InputStream m23476i = m23476i(uri, contentResolver);
        if (m23476i != null) {
            return m23476i;
        }
        throw new FileNotFoundException("InputStream is null for " + uri);
    }
}
