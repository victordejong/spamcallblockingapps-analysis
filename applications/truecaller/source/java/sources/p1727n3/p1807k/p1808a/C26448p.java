package p1727n3.p1807k.p1808a;

import android.app.PendingIntent;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import java.util.Objects;
/* renamed from: n3.k.a.p */
/* loaded from: classes-dex2jar.jar:n3/k/a/p.class */
public final class C26448p {

    /* renamed from: a */
    public PendingIntent f74106a;

    /* renamed from: b */
    public PendingIntent f74107b;

    /* renamed from: c */
    public IconCompat f74108c;

    /* renamed from: d */
    public int f74109d;

    /* renamed from: e */
    public int f74110e;

    /* renamed from: f */
    public int f74111f;

    /* renamed from: g */
    public String f74112g;

    /* renamed from: n3.k.a.p$a */
    /* loaded from: classes-dex2jar.jar:n3/k/a/p$a.class */
    public static final class C26449a {

        /* renamed from: a */
        public PendingIntent f74113a;

        /* renamed from: b */
        public IconCompat f74114b;

        /* renamed from: c */
        public int f74115c;

        /* renamed from: d */
        public int f74116d;

        /* renamed from: e */
        public int f74117e;

        /* renamed from: f */
        public PendingIntent f74118f;

        /* renamed from: g */
        public String f74119g;

        public C26449a(PendingIntent pendingIntent, IconCompat iconCompat) {
            Objects.requireNonNull(pendingIntent, "Bubble requires non-null pending intent");
            this.f74113a = pendingIntent;
            this.f74114b = iconCompat;
        }

        public C26449a(String str) {
            if (!TextUtils.isEmpty(str)) {
                this.f74119g = str;
                return;
            }
            throw new NullPointerException("Bubble requires a non-null shortcut id");
        }

        /* renamed from: a */
        public C26448p m1872a() {
            String str = this.f74119g;
            if (str == null) {
                Objects.requireNonNull(this.f74113a, "Must supply pending intent or shortcut to bubble");
            }
            if (str == null) {
                Objects.requireNonNull(this.f74114b, "Must supply an icon or shortcut for the bubble");
            }
            PendingIntent pendingIntent = this.f74113a;
            PendingIntent pendingIntent2 = this.f74118f;
            IconCompat iconCompat = this.f74114b;
            int i = this.f74115c;
            int i2 = this.f74116d;
            int i3 = this.f74117e;
            C26448p c26448p = new C26448p(pendingIntent, pendingIntent2, iconCompat, i, i2, i3, str, null);
            c26448p.f74111f = i3;
            return c26448p;
        }

        /* renamed from: b */
        public C26449a m1871b(boolean z) {
            if (z) {
                this.f74117e |= 1;
            } else {
                this.f74117e &= -2;
            }
            return this;
        }

        /* renamed from: c */
        public C26449a m1870c(int i) {
            this.f74115c = Math.max(i, 0);
            this.f74116d = 0;
            return this;
        }

        /* renamed from: d */
        public C26449a m1869d(boolean z) {
            if (z) {
                this.f74117e |= 2;
            } else {
                this.f74117e &= -3;
            }
            return this;
        }
    }

    public C26448p(PendingIntent pendingIntent, PendingIntent pendingIntent2, IconCompat iconCompat, int i, int i2, int i3, String str, C26443l c26443l) {
        this.f74106a = pendingIntent;
        this.f74108c = iconCompat;
        this.f74109d = i;
        this.f74110e = i2;
        this.f74107b = pendingIntent2;
        this.f74111f = i3;
        this.f74112g = str;
    }
}
