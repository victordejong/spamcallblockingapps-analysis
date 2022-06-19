package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.data.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/n.class */
public final class C3690n extends AbstractC3688l<InputStream> {

    /* renamed from: a */
    private static final UriMatcher f13843a;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f13843a = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        uriMatcher.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    public C3690n(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    @Override // com.bumptech.glide.load.data.AbstractC3688l
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final /* synthetic */ java.io.InputStream mo37516a(android.net.Uri r6, android.content.ContentResolver r7) throws java.io.FileNotFoundException {
        /*
            r5 = this;
            android.content.UriMatcher r0 = com.bumptech.glide.load.data.C3690n.f13843a
            r1 = r6
            int r0 = r0.match(r1)
            r8 = r0
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L2a
            r0 = r8
            r1 = 3
            if (r0 == r1) goto L20
            r0 = r8
            r1 = 5
            if (r0 == r1) goto L2a
            r0 = r7
            r1 = r6
            java.io.InputStream r0 = r0.openInputStream(r1)
            r7 = r0
            goto L3e
        L20:
            r0 = r7
            r1 = r6
            r2 = 1
            java.io.InputStream r0 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r0, r1, r2)
            r7 = r0
            goto L3e
        L2a:
            r0 = r7
            r1 = r6
            android.net.Uri r0 = android.provider.ContactsContract.Contacts.lookupContact(r0, r1)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L55
            r0 = r7
            r1 = r9
            r2 = 1
            java.io.InputStream r0 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r0, r1, r2)
            r7 = r0
        L3e:
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r7
            return r0
        L44:
            java.io.FileNotFoundException r0 = new java.io.FileNotFoundException
            r1 = r0
            java.lang.String r2 = "InputStream is null for "
            r3 = r6
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r2 = r2.concat(r3)
            r1.<init>(r2)
            throw r0
        L55:
            java.io.FileNotFoundException r0 = new java.io.FileNotFoundException
            r1 = r0
            java.lang.String r2 = "Contact cannot be found"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.C3690n.mo37516a(android.net.Uri, android.content.ContentResolver):java.lang.Object");
    }

    @Override // com.bumptech.glide.load.data.AbstractC3688l
    /* renamed from: a */
    protected final /* synthetic */ void mo37515a(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final Class<InputStream> getDataClass() {
        return InputStream.class;
    }
}
