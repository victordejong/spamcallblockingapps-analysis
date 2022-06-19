package p193e.p1451f.p1452a.p1457n.p1466q.p1469f;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.mopub.common.Constants;
import java.io.IOException;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
/* renamed from: e.f.a.n.q.f.e */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/f/e.class */
public class C22531e implements AbstractC22269k<Uri, Drawable> {

    /* renamed from: a */
    public final Context f62426a;

    public C22531e(Context context) {
        this.f62426a = context.getApplicationContext();
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: a */
    public boolean mo8147a(Uri uri, C22267i c22267i) throws IOException {
        return uri.getScheme().equals("android.resource");
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: b */
    public /* bridge */ /* synthetic */ AbstractC22394w<Drawable> mo8146b(Uri uri, int i, int i2, C22267i c22267i) throws IOException {
        return m8159c(uri);
    }

    /* renamed from: c */
    public AbstractC22394w m8159c(Uri uri) {
        Context context;
        int i;
        String authority = uri.getAuthority();
        if (authority.equals(this.f62426a.getPackageName())) {
            context = this.f62426a;
        } else {
            try {
                context = this.f62426a.createPackageContext(authority, 0);
            } catch (PackageManager.NameNotFoundException e) {
                if (!authority.contains(this.f62426a.getPackageName())) {
                    throw new IllegalArgumentException(C22128a.m8571s2("Failed to obtain context or unrecognized Uri format for: ", uri), e);
                }
                context = this.f62426a;
            }
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String authority2 = uri.getAuthority();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            int identifier = context.getResources().getIdentifier(str2, str, authority2);
            i = identifier;
            if (identifier == 0) {
                i = Resources.getSystem().getIdentifier(str2, str, Constants.ANDROID_PLATFORM);
            }
            if (i == 0) {
                throw new IllegalArgumentException(C22128a.m8571s2("Failed to find resource id for: ", uri));
            }
        } else if (pathSegments.size() != 1) {
            throw new IllegalArgumentException(C22128a.m8571s2("Unrecognized Uri format: ", uri));
        } else {
            try {
                i = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e2) {
                throw new IllegalArgumentException(C22128a.m8571s2("Unrecognized Uri format: ", uri), e2);
            }
        }
        d dVar = null;
        Drawable m8160a = C22528a.m8160a(this.f62426a, context, i, null);
        if (m8160a != null) {
            dVar = new d(m8160a);
        }
        return dVar;
    }
}
