package p193e.p194a.p1406z3.p1407g;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.provider.ContactsContract;
import com.razorpay.AnalyticsConstants;
import java.io.InputStream;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1479s.C22610d;
import s1.z.c.l;
/* renamed from: e.a.z3.g.c */
/* loaded from: classes9-dex2jar.jar:e/a/z3/g/c.class */
public final class C21862c implements AbstractC22436n<Uri, InputStream> {

    /* renamed from: a */
    public final Context f60744a;

    public C21862c(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f60744a = context;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [e.f.a.n.n.d, e.a.z3.g.b] */
    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a<InputStream> mo8215a(Uri uri, int i, int i2, C22267i c22267i) {
        Uri uri2 = uri;
        l.e(uri2, "model");
        l.e(c22267i, "options");
        C22610d c22610d = new C22610d(uri2);
        ContentResolver contentResolver = this.f60744a.getContentResolver();
        l.d(contentResolver, "context.contentResolver");
        return new AbstractC22436n.C22437a<>(c22610d, new C21861b(contentResolver, uri2));
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public boolean mo8214b(Uri uri) {
        boolean z;
        Uri uri2 = uri;
        l.e(uri2, "model");
        if (l.a("content", uri2.getScheme())) {
            Uri uri3 = ContactsContract.Contacts.CONTENT_URI;
            l.d(uri3, "ContactsContract.Contacts.CONTENT_URI");
            if (l.a(uri3.getHost(), uri2.getHost()) && C21864e.f60746a.match(uri2) != -1) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
