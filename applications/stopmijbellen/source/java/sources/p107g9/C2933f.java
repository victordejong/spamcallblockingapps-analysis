package p107g9;

import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import com.applovin.sdk.AppLovinEventTypes;
/* renamed from: g9.f */
/* loaded from: classes2-dex2jar.jar:g9/f.class */
public class C2933f extends AbstractC2968x {

    /* renamed from: b */
    public static final UriMatcher f9880b;

    /* renamed from: a */
    public final Context f9881a;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f9880b = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "display_photo/#", 4);
    }

    public C2933f(Context context) {
        this.f9881a = context;
    }

    @Override // p107g9.AbstractC2968x
    /* renamed from: c */
    public boolean mo2800c(C2964v c2964v) {
        Uri uri = c2964v.f9956c;
        return AppLovinEventTypes.USER_VIEWED_CONTENT.equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && f9880b.match(c2964v.f9956c) != -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x007d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007f  */
    @Override // p107g9.AbstractC2968x
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p107g9.AbstractC2968x.C2969a mo2799f(p107g9.C2964v r6, int r7) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r5
            android.content.Context r0 = r0.f9881a
            android.content.ContentResolver r0 = r0.getContentResolver()
            r8 = r0
            r0 = r6
            android.net.Uri r0 = r0.f9956c
            r9 = r0
            android.content.UriMatcher r0 = p107g9.C2933f.f9880b
            r1 = r9
            int r0 = r0.match(r1)
            r7 = r0
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L5d
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L53
            r0 = r9
            r6 = r0
            r0 = r7
            r1 = 3
            if (r0 == r1) goto L72
            r0 = r7
            r1 = 4
            if (r0 != r1) goto L31
            goto L53
        L31:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Invalid uri: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L53:
            r0 = r8
            r1 = r9
            java.io.InputStream r0 = r0.openInputStream(r1)
            r6 = r0
            goto L79
        L5d:
            r0 = r8
            r1 = r9
            android.net.Uri r0 = android.provider.ContactsContract.Contacts.lookupContact(r0, r1)
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            if (r0 != 0) goto L72
            r0 = 0
            r6 = r0
            goto L79
        L72:
            r0 = r8
            r1 = r6
            r2 = 1
            java.io.InputStream r0 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r0, r1, r2)
            r6 = r0
        L79:
            r0 = r6
            if (r0 != 0) goto L7f
            r0 = 0
            return r0
        L7f:
            g9.x$a r0 = new g9.x$a
            r1 = r0
            r2 = r6
            aa.y r2 = p011aa.C0062o.m8825f(r2)
            g9.s$d r3 = p107g9.C2953s.EnumC2958d.DISK
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p107g9.C2933f.mo2799f(g9.v, int):g9.x$a");
    }
}
