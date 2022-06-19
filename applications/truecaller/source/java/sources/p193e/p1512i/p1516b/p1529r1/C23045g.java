package p193e.p1512i.p1516b.p1529r1;

import com.criteo.publisher.advancednative.CriteoMedia;
import com.criteo.publisher.annotation.Internal;
import java.net.URL;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.r1.g */
/* loaded from: classes-dex2jar.jar:e/i/b/r1/g.class */
public final class C23045g extends CriteoMedia {

    /* renamed from: a */
    public final URL f63843a;

    public C23045g(URL url) {
        Objects.requireNonNull(url, "Null imageUrl");
        this.f63843a = url;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CriteoMedia)) {
            return false;
        }
        return this.f63843a.equals(((CriteoMedia) obj).getImageUrl());
    }

    @Override // com.criteo.publisher.advancednative.CriteoMedia
    @Internal({Internal.ADMOB_ADAPTER})
    public URL getImageUrl() {
        return this.f63843a;
    }

    public int hashCode() {
        return this.f63843a.hashCode() ^ 1000003;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CriteoMedia{imageUrl=");
        m8728C.append(this.f63843a);
        m8728C.append("}");
        return m8728C.toString();
    }
}
