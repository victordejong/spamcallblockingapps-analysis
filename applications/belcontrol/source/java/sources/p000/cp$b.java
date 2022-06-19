package p000;

import android.net.Uri;
import ls;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
@Deprecated
/* renamed from: cp$b */
/* loaded from: classes-dex2jar.jar:cp$b.class */
public final class cp$b {

    /* renamed from: a */
    public final ls.a f5652a;

    /* renamed from: b */
    public AbstractC1300dk f5653b;

    /* renamed from: c */
    public String f5654c;

    /* renamed from: d */
    public Object f5655d;

    /* renamed from: e */
    public AbstractC1260ct f5656e = new xs();

    /* renamed from: f */
    public int f5657f = PKIFailureInfo.badCertTemplate;

    /* renamed from: g */
    public boolean f5658g;

    public cp$b(ls.a aVar) {
        this.f5652a = aVar;
    }

    /* renamed from: a */
    public cp m3019a(Uri uri) {
        this.f5658g = true;
        if (this.f5653b == null) {
            this.f5653b = new yj();
        }
        return new cp(uri, this.f5652a, this.f5653b, this.f5656e, this.f5654c, this.f5657f, this.f5655d, (cp$a) null);
    }

    /* renamed from: b */
    public cp$b m3018b(AbstractC1300dk abstractC1300dk) {
        it.f(!this.f5658g);
        this.f5653b = abstractC1300dk;
        return this;
    }

    /* renamed from: c */
    public cp$b m3017c(Object obj) {
        it.f(!this.f5658g);
        this.f5655d = obj;
        return this;
    }
}
