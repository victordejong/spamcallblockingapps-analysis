package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import c.q;
import com.mopub.common.Constants;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import java.io.IOException;
import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/ContactsPhotoRequestHandler.class */
public class ContactsPhotoRequestHandler extends RequestHandler {
    private static final int ID_CONTACT = 3;
    private static final int ID_DISPLAY_PHOTO = 4;
    private static final int ID_LOOKUP = 1;
    private static final int ID_THUMBNAIL = 2;
    private static final UriMatcher matcher;
    private final Context context;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        matcher = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "display_photo/#", 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ContactsPhotoRequestHandler(Context context) {
        this.context = context;
    }

    private InputStream getInputStream(Request request) throws IOException {
        Uri uri;
        ContentResolver contentResolver = this.context.getContentResolver();
        Uri uri2 = request.uri;
        int match = matcher.match(uri2);
        if (match != 1) {
            if (match != 2) {
                uri = uri2;
                if (match != 3) {
                    if (match != 4) {
                        throw new IllegalStateException("Invalid uri: ".concat(String.valueOf(uri2)));
                    }
                }
            }
            return contentResolver.openInputStream(uri2);
        }
        Uri lookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri2);
        uri = lookupContact;
        if (lookupContact == null) {
            return null;
        }
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    @Override // com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        Uri uri = request.uri;
        return Constants.VAST_TRACKER_CONTENT.equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && matcher.match(request.uri) != -1;
    }

    @Override // com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i) throws IOException {
        InputStream inputStream = getInputStream(request);
        if (inputStream == null) {
            return null;
        }
        return new RequestHandler.Result(q.a(inputStream), Picasso.LoadedFrom.DISK);
    }
}
