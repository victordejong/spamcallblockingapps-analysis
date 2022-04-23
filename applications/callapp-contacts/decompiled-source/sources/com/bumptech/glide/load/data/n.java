package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/n.class */
public final class n extends l<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private static final UriMatcher f7417a;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f7417a = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        uriMatcher.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    public n(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    @Override // com.bumptech.glide.load.data.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final /* synthetic */ java.io.InputStream a(android.net.Uri r6, android.content.ContentResolver r7) throws java.io.FileNotFoundException {
        /*
            r5 = this;
            android.content.UriMatcher r0 = com.bumptech.glide.load.data.n.f7417a
            r1 = r6
            int r0 = r0.match(r1)
            r8 = r0
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L_0x002a
            r0 = r8
            r1 = 3
            if (r0 == r1) goto L_0x0020
            r0 = r8
            r1 = 5
            if (r0 == r1) goto L_0x002a
            r0 = r7
            r1 = r6
            java.io.InputStream r0 = r0.openInputStream(r1)
            r7 = r0
            goto L_0x003e
        L_0x0020:
            r0 = r7
            r1 = r6
            r2 = 1
            java.io.InputStream r0 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r0, r1, r2)
            r7 = r0
            goto L_0x003e
        L_0x002a:
            r0 = r7
            r1 = r6
            android.net.Uri r0 = android.provider.ContactsContract.Contacts.lookupContact(r0, r1)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0055
            r0 = r7
            r1 = r9
            r2 = 1
            java.io.InputStream r0 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r0, r1, r2)
            r7 = r0
        L_0x003e:
            r0 = r7
            if (r0 == 0) goto L_0x0044
            r0 = r7
            return r0
        L_0x0044:
            java.io.FileNotFoundException r0 = new java.io.FileNotFoundException
            r1 = r0
            java.lang.String r2 = "InputStream is null for "
            r3 = r6
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r2 = r2.concat(r3)
            r1.<init>(r2)
            throw r0
        L_0x0055:
            java.io.FileNotFoundException r0 = new java.io.FileNotFoundException
            r1 = r0
            java.lang.String r2 = "Contact cannot be found"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.n.a(android.net.Uri, android.content.ContentResolver):java.lang.Object");
    }

    @Override // com.bumptech.glide.load.data.l
    protected final /* synthetic */ void a(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // com.bumptech.glide.load.data.d
    public final Class<InputStream> getDataClass() {
        return InputStream.class;
    }
}
