package p193e.p1451f.p1452a.p1457n.p1464p;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import java.io.File;
import java.io.InputStream;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
/* renamed from: e.f.a.n.p.u */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/u.class */
public class C22454u<Data> implements AbstractC22436n<String, Data> {

    /* renamed from: a */
    public final AbstractC22436n<Uri, Data> f62315a;

    /* renamed from: e.f.a.n.p.u$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/u$a.class */
    public static final class C22455a implements AbstractC22438o<String, AssetFileDescriptor> {
        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<String, AssetFileDescriptor> mo8212c(C22444r c22444r) {
            return new C22454u(c22444r.m8226c(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* renamed from: e.f.a.n.p.u$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/u$b.class */
    public static class C22456b implements AbstractC22438o<String, ParcelFileDescriptor> {
        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<String, ParcelFileDescriptor> mo8212c(C22444r c22444r) {
            return new C22454u(c22444r.m8226c(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* renamed from: e.f.a.n.p.u$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/u$c.class */
    public static class C22457c implements AbstractC22438o<String, InputStream> {
        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<String, InputStream> mo8212c(C22444r c22444r) {
            return new C22454u(c22444r.m8226c(Uri.class, InputStream.class));
        }
    }

    public C22454u(AbstractC22436n<Uri, Data> abstractC22436n) {
        this.f62315a = abstractC22436n;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a mo8215a(String str, int i, int i2, C22267i c22267i) {
        Uri uri;
        String str2 = str;
        if (TextUtils.isEmpty(str2)) {
            uri = null;
        } else if (str2.charAt(0) == '/') {
            uri = Uri.fromFile(new File(str2));
        } else {
            uri = Uri.parse(str2);
            if (uri.getScheme() == null) {
                uri = Uri.fromFile(new File(str2));
            }
        }
        AbstractC22436n.C22437a<Data> c22437a = null;
        if (uri != null) {
            c22437a = !this.f62315a.mo8214b(uri) ? null : this.f62315a.mo8215a(uri, i, i2, c22267i);
        }
        return c22437a;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public /* bridge */ /* synthetic */ boolean mo8214b(String str) {
        return true;
    }
}
