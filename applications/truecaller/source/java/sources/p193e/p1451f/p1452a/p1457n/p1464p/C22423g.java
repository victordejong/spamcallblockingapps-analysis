package p193e.p1451f.p1452a.p1457n.p1464p;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Objects;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
/* renamed from: e.f.a.n.p.g */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/g.class */
public class C22423g implements AbstractC22263f {

    /* renamed from: b */
    public final AbstractC22424h f62259b;

    /* renamed from: c */
    public final URL f62260c;

    /* renamed from: d */
    public final String f62261d;

    /* renamed from: e */
    public String f62262e;

    /* renamed from: f */
    public URL f62263f;

    /* renamed from: g */
    public volatile byte[] f62264g;

    /* renamed from: h */
    public int f62265h;

    public C22423g(String str) {
        AbstractC22424h abstractC22424h = AbstractC22424h.f62266a;
        this.f62260c = null;
        if (!TextUtils.isEmpty(str)) {
            this.f62261d = str;
            Objects.requireNonNull(abstractC22424h, "Argument must not be null");
            this.f62259b = abstractC22424h;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }

    public C22423g(URL url) {
        AbstractC22424h abstractC22424h = AbstractC22424h.f62266a;
        Objects.requireNonNull(url, "Argument must not be null");
        this.f62260c = url;
        this.f62261d = null;
        Objects.requireNonNull(abstractC22424h, "Argument must not be null");
        this.f62259b = abstractC22424h;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    /* renamed from: b */
    public void mo8036b(MessageDigest messageDigest) {
        if (this.f62264g == null) {
            this.f62264g = m8238c().getBytes(AbstractC22263f.f61895a);
        }
        messageDigest.update(this.f62264g);
    }

    /* renamed from: c */
    public String m8238c() {
        String str = this.f62261d;
        if (str == null) {
            URL url = this.f62260c;
            Objects.requireNonNull(url, "Argument must not be null");
            str = url.toString();
        }
        return str;
    }

    /* renamed from: d */
    public final String m8237d() {
        if (TextUtils.isEmpty(this.f62262e)) {
            String str = this.f62261d;
            String str2 = str;
            if (TextUtils.isEmpty(str)) {
                URL url = this.f62260c;
                Objects.requireNonNull(url, "Argument must not be null");
                str2 = url.toString();
            }
            this.f62262e = Uri.encode(str2, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f62262e;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C22423g) {
            C22423g c22423g = (C22423g) obj;
            z = false;
            if (m8238c().equals(c22423g.m8238c())) {
                z = false;
                if (this.f62259b.equals(c22423g.f62259b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    public int hashCode() {
        if (this.f62265h == 0) {
            int hashCode = m8238c().hashCode();
            this.f62265h = hashCode;
            this.f62265h = this.f62259b.hashCode() + (hashCode * 31);
        }
        return this.f62265h;
    }

    public String toString() {
        return m8238c();
    }
}
