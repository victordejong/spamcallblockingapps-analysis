package p1727n3.p1807k.p1821i;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import java.util.Locale;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.i.c */
/* loaded from: classes-dex2jar.jar:n3/k/i/c.class */
public final class C26564c {

    /* renamed from: a */
    public final ClipData f74415a;

    /* renamed from: b */
    public final int f74416b;

    /* renamed from: c */
    public final int f74417c;

    /* renamed from: d */
    public final Uri f74418d;

    /* renamed from: e */
    public final Bundle f74419e;

    /* renamed from: n3.k.i.c$a */
    /* loaded from: classes-dex2jar.jar:n3/k/i/c$a.class */
    public static final class C26565a {

        /* renamed from: a */
        public ClipData f74420a;

        /* renamed from: b */
        public int f74421b;

        /* renamed from: c */
        public int f74422c;

        /* renamed from: d */
        public Uri f74423d;

        /* renamed from: e */
        public Bundle f74424e;

        public C26565a(ClipData clipData, int i) {
            this.f74420a = clipData;
            this.f74421b = i;
        }
    }

    public C26564c(C26565a c26565a) {
        ClipData clipData = c26565a.f74420a;
        Objects.requireNonNull(clipData);
        this.f74415a = clipData;
        int i = c26565a.f74421b;
        if (i >= 0) {
            if (i > 3) {
                throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", "source", 0, 3));
            }
            this.f74416b = i;
            int i2 = c26565a.f74422c;
            if ((i2 & 1) == i2) {
                this.f74417c = i2;
                this.f74418d = c26565a.f74423d;
                this.f74419e = c26565a.f74424e;
                return;
            }
            StringBuilder m8728C = C22128a.m8728C("Requested flags 0x");
            m8728C.append(Integer.toHexString(i2));
            m8728C.append(", but only 0x");
            m8728C.append(Integer.toHexString(1));
            m8728C.append(" are allowed");
            throw new IllegalArgumentException(m8728C.toString());
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", "source", 0, 3));
    }

    public String toString() {
        String str;
        StringBuilder m8728C = C22128a.m8728C("ContentInfoCompat{clip=");
        m8728C.append(this.f74415a.getDescription());
        m8728C.append(", source=");
        int i = this.f74416b;
        m8728C.append(i != 0 ? i != 1 ? i != 2 ? i != 3 ? String.valueOf(i) : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP");
        m8728C.append(", flags=");
        int i2 = this.f74417c;
        m8728C.append((i2 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i2));
        if (this.f74418d == null) {
            str = "";
        } else {
            StringBuilder m8728C2 = C22128a.m8728C(", hasLinkUri(");
            m8728C2.append(this.f74418d.toString().length());
            m8728C2.append(")");
            str = m8728C2.toString();
        }
        m8728C.append(str);
        return C22128a.m8618h(m8728C, this.f74419e == null ? "" : ", hasExtras", "}");
    }
}
