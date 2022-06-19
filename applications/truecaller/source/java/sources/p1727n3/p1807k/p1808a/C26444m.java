package p1727n3.p1807k.p1808a;

import android.app.PendingIntent;
import android.content.res.Resources;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
/* renamed from: n3.k.a.m */
/* loaded from: classes-dex2jar.jar:n3/k/a/m.class */
public class C26444m {

    /* renamed from: a */
    public final Bundle f74082a;

    /* renamed from: b */
    public IconCompat f74083b;

    /* renamed from: c */
    public final C26466z[] f74084c;

    /* renamed from: d */
    public final C26466z[] f74085d;

    /* renamed from: e */
    public boolean f74086e;

    /* renamed from: f */
    public boolean f74087f;

    /* renamed from: g */
    public final int f74088g;

    /* renamed from: h */
    public final boolean f74089h;
    @Deprecated

    /* renamed from: i */
    public int f74090i;

    /* renamed from: j */
    public CharSequence f74091j;

    /* renamed from: k */
    public PendingIntent f74092k;

    /* renamed from: n3.k.a.m$a */
    /* loaded from: classes-dex2jar.jar:n3/k/a/m$a.class */
    public static final class C26445a {

        /* renamed from: a */
        public final IconCompat f74093a;

        /* renamed from: b */
        public final CharSequence f74094b;

        /* renamed from: c */
        public final PendingIntent f74095c;

        /* renamed from: d */
        public boolean f74096d;

        /* renamed from: e */
        public final Bundle f74097e;

        /* renamed from: f */
        public ArrayList<C26466z> f74098f;

        /* renamed from: g */
        public int f74099g;

        /* renamed from: h */
        public boolean f74100h;

        /* renamed from: i */
        public boolean f74101i;

        public C26445a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i != 0 ? IconCompat.j((Resources) null, "", i) : null, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false);
        }

        public C26445a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false);
        }

        public C26445a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, C26466z[] c26466zArr, boolean z, int i, boolean z2, boolean z3) {
            this.f74096d = true;
            this.f74100h = true;
            this.f74093a = iconCompat;
            this.f74094b = C26450q.m1862g(charSequence);
            this.f74095c = pendingIntent;
            this.f74097e = bundle;
            this.f74098f = null;
            this.f74096d = z;
            this.f74099g = i;
            this.f74100h = z2;
            this.f74101i = z3;
        }

        /* renamed from: a */
        public C26445a m1876a(C26466z c26466z) {
            if (this.f74098f == null) {
                this.f74098f = new ArrayList<>();
            }
            this.f74098f.add(c26466z);
            return this;
        }

        /* renamed from: b */
        public C26444m m1875b() {
            CharSequence[] charSequenceArr;
            Set<String> set;
            if (this.f74101i) {
                Objects.requireNonNull(this.f74095c, "Contextual Actions must contain a valid PendingIntent");
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList<C26466z> arrayList3 = this.f74098f;
            if (arrayList3 != null) {
                Iterator<C26466z> it = arrayList3.iterator();
                while (it.hasNext()) {
                    C26466z next = it.next();
                    if (!next.f74231d && ((charSequenceArr = next.f74230c) == null || charSequenceArr.length == 0) && (set = next.f74234g) != null && !set.isEmpty()) {
                        arrayList.add(next);
                    } else {
                        arrayList2.add(next);
                    }
                }
            }
            C26466z[] c26466zArr = null;
            C26466z[] c26466zArr2 = arrayList.isEmpty() ? null : (C26466z[]) arrayList.toArray(new C26466z[arrayList.size()]);
            if (!arrayList2.isEmpty()) {
                c26466zArr = (C26466z[]) arrayList2.toArray(new C26466z[arrayList2.size()]);
            }
            return new C26444m(this.f74093a, this.f74094b, this.f74095c, this.f74097e, c26466zArr, c26466zArr2, this.f74096d, this.f74099g, this.f74100h, this.f74101i);
        }
    }

    public C26444m(int i, CharSequence charSequence, PendingIntent pendingIntent) {
        this(i != 0 ? IconCompat.j((Resources) null, "", i) : null, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true, false);
    }

    public C26444m(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, C26466z[] c26466zArr, C26466z[] c26466zArr2, boolean z, int i, boolean z2, boolean z3) {
        this.f74087f = true;
        this.f74083b = iconCompat;
        if (iconCompat != null) {
            int i2 = iconCompat.a;
            if ((i2 == -1 ? IconCompat.p((Icon) iconCompat.b) : i2) == 2) {
                this.f74090i = iconCompat.k();
            }
        }
        this.f74091j = C26450q.m1862g(charSequence);
        this.f74092k = pendingIntent;
        this.f74082a = bundle == null ? new Bundle() : bundle;
        this.f74084c = c26466zArr;
        this.f74085d = c26466zArr2;
        this.f74086e = z;
        this.f74088g = i;
        this.f74087f = z2;
        this.f74089h = z3;
    }

    /* renamed from: a */
    public IconCompat m1877a() {
        int i;
        if (this.f74083b == null && (i = this.f74090i) != 0) {
            this.f74083b = IconCompat.j((Resources) null, "", i);
        }
        return this.f74083b;
    }
}
