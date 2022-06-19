package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;
/* renamed from: androidx.core.app.h */
/* loaded from: classes-dex2jar.jar:androidx/core/app/h.class */
public class C0472h {

    /* renamed from: androidx.core.app.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$a.class */
    public static class C0473a {

        /* renamed from: a */
        final Bundle f1784a;

        /* renamed from: b */
        boolean f1785b;

        /* renamed from: c */
        public int f1786c;

        /* renamed from: d */
        public CharSequence f1787d;

        /* renamed from: e */
        public PendingIntent f1788e;

        /* renamed from: f */
        private final C0479k[] f1789f;

        /* renamed from: g */
        private final C0479k[] f1790g;

        /* renamed from: h */
        private boolean f1791h;

        /* renamed from: i */
        private final int f1792i;

        public C0473a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true);
        }

        C0473a(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, C0479k[] c0479kArr, C0479k[] c0479kArr2, boolean z, int i2, boolean z2) {
            this.f1785b = true;
            this.f1786c = i;
            this.f1787d = C0475c.m20767d(charSequence);
            this.f1788e = pendingIntent;
            this.f1784a = bundle == null ? new Bundle() : bundle;
            this.f1789f = c0479kArr;
            this.f1790g = c0479kArr2;
            this.f1791h = z;
            this.f1792i = i2;
            this.f1785b = z2;
        }

        /* renamed from: a */
        public int m20794a() {
            return this.f1786c;
        }

        /* renamed from: b */
        public CharSequence m20793b() {
            return this.f1787d;
        }

        /* renamed from: c */
        public PendingIntent m20792c() {
            return this.f1788e;
        }

        /* renamed from: d */
        public Bundle m20791d() {
            return this.f1784a;
        }

        /* renamed from: e */
        public boolean m20790e() {
            return this.f1791h;
        }

        /* renamed from: f */
        public C0479k[] m20789f() {
            return this.f1789f;
        }

        /* renamed from: g */
        public int m20788g() {
            return this.f1792i;
        }

        /* renamed from: h */
        public C0479k[] m20787h() {
            return this.f1790g;
        }

        /* renamed from: i */
        public boolean m20786i() {
            return this.f1785b;
        }
    }

    /* renamed from: androidx.core.app.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$b.class */
    public static class C0474b extends AbstractC0476d {

        /* renamed from: e */
        private CharSequence f1793e;

        /* renamed from: a */
        public C0474b m20785a(CharSequence charSequence) {
            this.f1793e = C0475c.m20767d(charSequence);
            return this;
        }

        @Override // androidx.core.app.C0472h.AbstractC0476d
        /* renamed from: a */
        public void mo20765a(AbstractC0471g abstractC0471g) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigText = new Notification.BigTextStyle(abstractC0471g.mo20760a()).setBigContentTitle(this.f1836b).bigText(this.f1793e);
                if (!this.f1838d) {
                    return;
                }
                bigText.setSummaryText(this.f1837c);
            }
        }
    }

    /* renamed from: androidx.core.app.h$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$c.class */
    public static class C0475c {

        /* renamed from: A */
        String f1794A;

        /* renamed from: B */
        Bundle f1795B;

        /* renamed from: C */
        int f1796C;

        /* renamed from: D */
        int f1797D;

        /* renamed from: E */
        Notification f1798E;

        /* renamed from: F */
        RemoteViews f1799F;

        /* renamed from: G */
        RemoteViews f1800G;

        /* renamed from: H */
        RemoteViews f1801H;

        /* renamed from: I */
        String f1802I;

        /* renamed from: J */
        int f1803J;

        /* renamed from: K */
        String f1804K;

        /* renamed from: L */
        long f1805L;

        /* renamed from: M */
        int f1806M;

        /* renamed from: N */
        Notification f1807N;
        @Deprecated

        /* renamed from: O */
        public ArrayList<String> f1808O;

        /* renamed from: a */
        public Context f1809a;

        /* renamed from: b */
        public ArrayList<C0473a> f1810b;

        /* renamed from: c */
        ArrayList<C0473a> f1811c;

        /* renamed from: d */
        CharSequence f1812d;

        /* renamed from: e */
        CharSequence f1813e;

        /* renamed from: f */
        PendingIntent f1814f;

        /* renamed from: g */
        PendingIntent f1815g;

        /* renamed from: h */
        RemoteViews f1816h;

        /* renamed from: i */
        Bitmap f1817i;

        /* renamed from: j */
        CharSequence f1818j;

        /* renamed from: k */
        int f1819k;

        /* renamed from: l */
        int f1820l;

        /* renamed from: m */
        boolean f1821m;

        /* renamed from: n */
        boolean f1822n;

        /* renamed from: o */
        AbstractC0476d f1823o;

        /* renamed from: p */
        CharSequence f1824p;

        /* renamed from: q */
        CharSequence[] f1825q;

        /* renamed from: r */
        int f1826r;

        /* renamed from: s */
        int f1827s;

        /* renamed from: t */
        boolean f1828t;

        /* renamed from: u */
        String f1829u;

        /* renamed from: v */
        boolean f1830v;

        /* renamed from: w */
        String f1831w;

        /* renamed from: x */
        boolean f1832x;

        /* renamed from: y */
        boolean f1833y;

        /* renamed from: z */
        boolean f1834z;

        @Deprecated
        public C0475c(Context context) {
            this(context, null);
        }

        public C0475c(Context context, String str) {
            this.f1810b = new ArrayList<>();
            this.f1811c = new ArrayList<>();
            this.f1821m = true;
            this.f1832x = false;
            this.f1796C = 0;
            this.f1797D = 0;
            this.f1803J = 0;
            this.f1806M = 0;
            this.f1807N = new Notification();
            this.f1809a = context;
            this.f1802I = str;
            this.f1807N.when = System.currentTimeMillis();
            this.f1807N.audioStreamType = -1;
            this.f1820l = 0;
            this.f1808O = new ArrayList<>();
        }

        /* renamed from: a */
        private void m20781a(int i, boolean z) {
            if (z) {
                this.f1807N.flags |= i;
                return;
            }
            this.f1807N.flags &= i ^ (-1);
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x003b, code lost:
            if (r8.getHeight() > r0) goto L13;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private android.graphics.Bitmap m20771b(android.graphics.Bitmap r8) {
            /*
                r7 = this;
                r0 = r8
                r9 = r0
                r0 = r8
                if (r0 == 0) goto L10
                int r0 = android.os.Build.VERSION.SDK_INT
                r1 = 27
                if (r0 < r1) goto L12
                r0 = r8
                r9 = r0
            L10:
                r0 = r9
                return r0
            L12:
                r0 = r7
                android.content.Context r0 = r0.f1809a
                android.content.res.Resources r0 = r0.getResources()
                r9 = r0
                r0 = r9
                int r1 = androidx.core.C0433a.C0435b.compat_notification_large_icon_max_width
                int r0 = r0.getDimensionPixelSize(r1)
                r10 = r0
                r0 = r9
                int r1 = androidx.core.C0433a.C0435b.compat_notification_large_icon_max_height
                int r0 = r0.getDimensionPixelSize(r1)
                r11 = r0
                r0 = r8
                int r0 = r0.getWidth()
                r1 = r10
                if (r0 > r1) goto L3e
                r0 = r8
                r9 = r0
                r0 = r8
                int r0 = r0.getHeight()
                r1 = r11
                if (r0 <= r1) goto L10
            L3e:
                r0 = r10
                double r0 = (double) r0
                r1 = 1
                r2 = r8
                int r2 = r2.getWidth()
                int r1 = java.lang.Math.max(r1, r2)
                double r1 = (double) r1
                double r0 = r0 / r1
                r1 = r11
                double r1 = (double) r1
                r2 = 1
                r3 = r8
                int r3 = r3.getHeight()
                int r2 = java.lang.Math.max(r2, r3)
                double r2 = (double) r2
                double r1 = r1 / r2
                double r0 = java.lang.Math.min(r0, r1)
                r12 = r0
                r0 = r8
                r1 = r8
                int r1 = r1.getWidth()
                double r1 = (double) r1
                r2 = r12
                double r1 = r1 * r2
                double r1 = java.lang.Math.ceil(r1)
                int r1 = (int) r1
                r2 = r12
                r3 = r8
                int r3 = r3.getHeight()
                double r3 = (double) r3
                double r2 = r2 * r3
                double r2 = java.lang.Math.ceil(r2)
                int r2 = (int) r2
                r3 = 1
                android.graphics.Bitmap r0 = android.graphics.Bitmap.createScaledBitmap(r0, r1, r2, r3)
                r9 = r0
                goto L10
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.C0472h.C0475c.m20771b(android.graphics.Bitmap):android.graphics.Bitmap");
        }

        /* renamed from: d */
        protected static CharSequence m20767d(CharSequence charSequence) {
            CharSequence charSequence2;
            if (charSequence == null) {
                charSequence2 = charSequence;
            } else {
                charSequence2 = charSequence;
                if (charSequence.length() > 5120) {
                    charSequence2 = charSequence.subSequence(0, 5120);
                }
            }
            return charSequence2;
        }

        /* renamed from: a */
        public Bundle m20784a() {
            if (this.f1795B == null) {
                this.f1795B = new Bundle();
            }
            return this.f1795B;
        }

        /* renamed from: a */
        public C0475c m20783a(int i) {
            this.f1807N.icon = i;
            return this;
        }

        /* renamed from: a */
        public C0475c m20782a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f1810b.add(new C0473a(i, charSequence, pendingIntent));
            return this;
        }

        /* renamed from: a */
        public C0475c m20780a(long j) {
            this.f1807N.when = j;
            return this;
        }

        /* renamed from: a */
        public C0475c m20779a(PendingIntent pendingIntent) {
            this.f1814f = pendingIntent;
            return this;
        }

        /* renamed from: a */
        public C0475c m20778a(Bitmap bitmap) {
            this.f1817i = m20771b(bitmap);
            return this;
        }

        /* renamed from: a */
        public C0475c m20777a(AbstractC0476d abstractC0476d) {
            if (this.f1823o != abstractC0476d) {
                this.f1823o = abstractC0476d;
                if (this.f1823o != null) {
                    this.f1823o.m20764a(this);
                }
            }
            return this;
        }

        /* renamed from: a */
        public C0475c m20776a(CharSequence charSequence) {
            this.f1812d = m20767d(charSequence);
            return this;
        }

        /* renamed from: a */
        public C0475c m20775a(String str) {
            this.f1802I = str;
            return this;
        }

        /* renamed from: a */
        public C0475c m20774a(boolean z) {
            m20781a(16, z);
            return this;
        }

        /* renamed from: b */
        public Notification m20773b() {
            return new C0477i(this).m20757b();
        }

        /* renamed from: b */
        public C0475c m20772b(int i) {
            this.f1820l = i;
            return this;
        }

        /* renamed from: b */
        public C0475c m20770b(CharSequence charSequence) {
            this.f1813e = m20767d(charSequence);
            return this;
        }

        /* renamed from: b */
        public C0475c m20769b(boolean z) {
            this.f1832x = z;
            return this;
        }

        /* renamed from: c */
        public C0475c m20768c(CharSequence charSequence) {
            this.f1807N.tickerText = m20767d(charSequence);
            return this;
        }
    }

    /* renamed from: androidx.core.app.h$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$d.class */
    public static abstract class AbstractC0476d {

        /* renamed from: a */
        protected C0475c f1835a;

        /* renamed from: b */
        CharSequence f1836b;

        /* renamed from: c */
        CharSequence f1837c;

        /* renamed from: d */
        boolean f1838d = false;

        /* renamed from: a */
        public void m20766a(Bundle bundle) {
        }

        /* renamed from: a */
        public void mo20765a(AbstractC0471g abstractC0471g) {
        }

        /* renamed from: a */
        public void m20764a(C0475c c0475c) {
            if (this.f1835a != c0475c) {
                this.f1835a = c0475c;
                if (this.f1835a == null) {
                    return;
                }
                this.f1835a.m20777a(this);
            }
        }

        /* renamed from: b */
        public RemoteViews m20763b(AbstractC0471g abstractC0471g) {
            return null;
        }

        /* renamed from: c */
        public RemoteViews m20762c(AbstractC0471g abstractC0471g) {
            return null;
        }

        /* renamed from: d */
        public RemoteViews m20761d(AbstractC0471g abstractC0471g) {
            return null;
        }
    }

    /* renamed from: a */
    public static Bundle m20795a(Notification notification) {
        return Build.VERSION.SDK_INT >= 19 ? notification.extras : Build.VERSION.SDK_INT >= 16 ? C0478j.m20754a(notification) : null;
    }
}
