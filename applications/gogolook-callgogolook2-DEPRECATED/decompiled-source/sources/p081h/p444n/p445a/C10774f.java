package p081h.p444n.p445a;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import java.io.IOException;
import java.io.InputStream;
import p081h.p444n.p445a.AbstractC10815z;
import p081h.p444n.p445a.C10798u;
import p645m.C15181l;
/* renamed from: h.n.a.f */
/* loaded from: classes2-dex2jar.jar:h/n/a/f.class */
public class C10774f extends AbstractC10815z {

    /* renamed from: b */
    public static final UriMatcher f24593b = new UriMatcher(-1);

    /* renamed from: a */
    public final Context f24594a;

    static {
        f24593b.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        f24593b.addURI("com.android.contacts", "contacts/lookup/*", 1);
        f24593b.addURI("com.android.contacts", "contacts/#/photo", 2);
        f24593b.addURI("com.android.contacts", "contacts/#", 3);
        f24593b.addURI("com.android.contacts", "display_photo/#", 4);
    }

    public C10774f(Context context) {
        this.f24594a = context;
    }

    @Override // p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public AbstractC10815z.C10816a mo10561a(C10811x xVar, int i) throws IOException {
        InputStream c = m10661c(xVar);
        if (c == null) {
            return null;
        }
        return new AbstractC10815z.C10816a(C15181l.m325a(c), C10798u.EnumC10804e.DISK);
    }

    @Override // p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public boolean mo10562a(C10811x xVar) {
        Uri uri = xVar.f24705d;
        return "content".equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && f24593b.match(xVar.f24705d) != -1;
    }

    /* renamed from: c */
    public final InputStream m10661c(C10811x xVar) throws IOException {
        Uri uri;
        ContentResolver contentResolver = this.f24594a.getContentResolver();
        Uri uri2 = xVar.f24705d;
        int match = f24593b.match(uri2);
        if (match != 1) {
            if (match != 2) {
                uri = uri2;
                if (match != 3) {
                    if (match != 4) {
                        throw new IllegalStateException("Invalid uri: " + uri2);
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
}
