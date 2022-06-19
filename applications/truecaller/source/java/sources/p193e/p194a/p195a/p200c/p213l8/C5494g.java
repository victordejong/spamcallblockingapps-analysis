package p193e.p194a.p195a.p200c.p213l8;

import android.net.Uri;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.c.l8.g */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/l8/g.class */
public final class C5494g {

    /* renamed from: a */
    public final int f18646a;

    /* renamed from: b */
    public final Uri f18647b;

    /* renamed from: c */
    public final String f18648c;

    /* renamed from: d */
    public boolean f18649d;

    public C5494g(int i, Uri uri, String str, boolean z) {
        l.e(uri, "itemUri");
        l.e(str, "itemDuration");
        this.f18646a = i;
        this.f18647b = uri;
        this.f18648c = str;
        this.f18649d = z;
    }

    public C5494g(int i, Uri uri, String str, boolean z, int i2) {
        String str2 = (i2 & 4) != 0 ? "" : null;
        l.e(uri, "itemUri");
        l.e(str2, "itemDuration");
        this.f18646a = i;
        this.f18647b = uri;
        this.f18648c = str2;
        this.f18649d = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C5494g)) {
                return false;
            }
            C5494g c5494g = (C5494g) obj;
            return this.f18646a == c5494g.f18646a && l.a(this.f18647b, c5494g.f18647b) && l.a(this.f18648c, c5494g.f18648c) && this.f18649d == c5494g.f18649d;
        }
        return true;
    }

    public int hashCode() {
        int i = this.f18646a;
        Uri uri = this.f18647b;
        int i2 = 0;
        int hashCode = uri != null ? uri.hashCode() : 0;
        String str = this.f18648c;
        if (str != null) {
            i2 = str.hashCode();
        }
        boolean z = this.f18649d;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        return (((((i * 31) + hashCode) * 31) + i2) * 31) + i3;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("GalleryItem(typeOfItem=");
        m8728C.append(this.f18646a);
        m8728C.append(", itemUri=");
        m8728C.append(this.f18647b);
        m8728C.append(", itemDuration=");
        m8728C.append(this.f18648c);
        m8728C.append(", isChecked=");
        return C22128a.m8590o(m8728C, this.f18649d, ")");
    }
}
