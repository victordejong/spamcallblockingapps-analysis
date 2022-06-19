package p020b.p041h.p050l;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import p020b.p041h.p049k.C1597h;
/* renamed from: b.h.l.c */
/* loaded from: classes-dex2jar.jar:b/h/l/c.class */
public final class C1609c {

    /* renamed from: a */
    final ClipData f6213a;

    /* renamed from: b */
    final int f6214b;

    /* renamed from: c */
    final int f6215c;

    /* renamed from: d */
    final Uri f6216d;

    /* renamed from: e */
    final Bundle f6217e;

    /* renamed from: b.h.l.c$a */
    /* loaded from: classes-dex2jar.jar:b/h/l/c$a.class */
    public static final class C1610a {

        /* renamed from: a */
        ClipData f6218a;

        /* renamed from: b */
        int f6219b;

        /* renamed from: c */
        int f6220c;

        /* renamed from: d */
        Uri f6221d;

        /* renamed from: e */
        Bundle f6222e;

        public C1610a(ClipData clipData, int i) {
            this.f6218a = clipData;
            this.f6219b = i;
        }

        /* renamed from: a */
        public C1609c m29613a() {
            return new C1609c(this);
        }

        /* renamed from: b */
        public C1610a m29612b(Bundle bundle) {
            this.f6222e = bundle;
            return this;
        }

        /* renamed from: c */
        public C1610a m29611c(int i) {
            this.f6220c = i;
            return this;
        }

        /* renamed from: d */
        public C1610a m29610d(Uri uri) {
            this.f6221d = uri;
            return this;
        }
    }

    C1609c(C1610a c1610a) {
        this.f6213a = (ClipData) C1597h.m29659e(c1610a.f6218a);
        this.f6214b = C1597h.m29662b(c1610a.f6219b, 0, 3, "source");
        this.f6215c = C1597h.m29660d(c1610a.f6220c, 1);
        this.f6216d = c1610a.f6221d;
        this.f6217e = c1610a.f6222e;
    }

    /* renamed from: a */
    static String m29618a(int i) {
        return (i & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i);
    }

    /* renamed from: e */
    static String m29614e(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? String.valueOf(i) : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP";
    }

    /* renamed from: b */
    public ClipData m29617b() {
        return this.f6213a;
    }

    /* renamed from: c */
    public int m29616c() {
        return this.f6215c;
    }

    /* renamed from: d */
    public int m29615d() {
        return this.f6214b;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("ContentInfoCompat{clip=");
        sb.append(this.f6213a.getDescription());
        sb.append(", source=");
        sb.append(m29614e(this.f6214b));
        sb.append(", flags=");
        sb.append(m29618a(this.f6215c));
        if (this.f6216d == null) {
            str = "";
        } else {
            str = ", hasLinkUri(" + this.f6216d.toString().length() + ")";
        }
        sb.append(str);
        sb.append(this.f6217e == null ? "" : ", hasExtras");
        sb.append("}");
        return sb.toString();
    }
}
