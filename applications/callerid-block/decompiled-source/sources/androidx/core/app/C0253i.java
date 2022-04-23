package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import d.h.b;
import java.util.ArrayList;
/* renamed from: androidx.core.app.i */
/* loaded from: classes-dex2jar.jar:androidx/core/app/i.class */
public class C0253i {

    /* renamed from: androidx.core.app.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/i$a.class */
    public static class C0254a {

        /* renamed from: a */
        final Bundle f1598a;

        /* renamed from: b */
        private IconCompat f1599b;

        /* renamed from: c */
        private final C0260m[] f1600c;

        /* renamed from: d */
        private final C0260m[] f1601d;

        /* renamed from: e */
        private boolean f1602e;

        /* renamed from: f */
        boolean f1603f;

        /* renamed from: g */
        private final int f1604g;

        /* renamed from: h */
        private final boolean f1605h;
        @Deprecated

        /* renamed from: i */
        public int f1606i;

        /* renamed from: j */
        public CharSequence f1607j;

        /* renamed from: k */
        public PendingIntent f1608k;

        /* renamed from: a */
        public PendingIntent m13637a() {
            return this.f1608k;
        }

        /* renamed from: b */
        public boolean m13636b() {
            return this.f1602e;
        }

        /* renamed from: c */
        public C0260m[] m13635c() {
            return this.f1601d;
        }

        /* renamed from: d */
        public Bundle m13634d() {
            return this.f1598a;
        }

        /* renamed from: e */
        public IconCompat m13633e() {
            int i;
            if (this.f1599b == null && (i = this.f1606i) != 0) {
                this.f1599b = IconCompat.b((Resources) null, "", i);
            }
            return this.f1599b;
        }

        /* renamed from: f */
        public C0260m[] m13632f() {
            return this.f1600c;
        }

        /* renamed from: g */
        public int m13631g() {
            return this.f1604g;
        }

        /* renamed from: h */
        public boolean m13630h() {
            return this.f1603f;
        }

        /* renamed from: i */
        public CharSequence m13629i() {
            return this.f1607j;
        }

        /* renamed from: j */
        public boolean m13628j() {
            return this.f1605h;
        }
    }

    /* renamed from: androidx.core.app.i$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/i$d.class */
    public static final class C0255d {
        /* renamed from: b */
        public static Notification.BubbleMetadata m13626b(C0255d dVar) {
            if (dVar == null) {
                return null;
            }
            new Notification.BubbleMetadata.Builder();
            dVar.m13627a();
            throw null;
        }

        /* renamed from: a */
        public boolean m13627a() {
            throw null;
        }
    }

    /* renamed from: androidx.core.app.i$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/i$e.class */
    public static class C0256e {

        /* renamed from: A */
        String f1609A;

        /* renamed from: B */
        Bundle f1610B;

        /* renamed from: E */
        Notification f1613E;

        /* renamed from: F */
        RemoteViews f1614F;

        /* renamed from: G */
        RemoteViews f1615G;

        /* renamed from: H */
        RemoteViews f1616H;

        /* renamed from: I */
        String f1617I;

        /* renamed from: K */
        String f1619K;

        /* renamed from: L */
        long f1620L;

        /* renamed from: O */
        C0255d f1623O;

        /* renamed from: P */
        Notification f1624P;

        /* renamed from: Q */
        boolean f1625Q;

        /* renamed from: a */
        public Context f1627a;

        /* renamed from: d */
        CharSequence f1630d;

        /* renamed from: e */
        CharSequence f1631e;

        /* renamed from: f */
        PendingIntent f1632f;

        /* renamed from: g */
        PendingIntent f1633g;

        /* renamed from: h */
        RemoteViews f1634h;

        /* renamed from: i */
        Bitmap f1635i;

        /* renamed from: j */
        CharSequence f1636j;

        /* renamed from: k */
        int f1637k;

        /* renamed from: n */
        boolean f1640n;

        /* renamed from: o */
        AbstractC0257f f1641o;

        /* renamed from: p */
        CharSequence f1642p;

        /* renamed from: q */
        CharSequence[] f1643q;

        /* renamed from: r */
        int f1644r;

        /* renamed from: s */
        int f1645s;

        /* renamed from: t */
        boolean f1646t;

        /* renamed from: u */
        String f1647u;

        /* renamed from: v */
        boolean f1648v;

        /* renamed from: w */
        String f1649w;

        /* renamed from: y */
        boolean f1651y;

        /* renamed from: z */
        boolean f1652z;

        /* renamed from: b */
        public ArrayList<C0254a> f1628b = new ArrayList<>();

        /* renamed from: c */
        ArrayList<C0254a> f1629c = new ArrayList<>();

        /* renamed from: m */
        boolean f1639m = true;

        /* renamed from: x */
        boolean f1650x = false;

        /* renamed from: C */
        int f1611C = 0;

        /* renamed from: D */
        int f1612D = 0;

        /* renamed from: J */
        int f1618J = 0;

        /* renamed from: M */
        int f1621M = 0;

        /* renamed from: l */
        int f1638l = 0;
        @Deprecated

        /* renamed from: R */
        public ArrayList<String> f1626R = new ArrayList<>();

        /* renamed from: N */
        boolean f1622N = true;

        public C0256e(Context context, String str) {
            Notification notification = new Notification();
            this.f1624P = notification;
            this.f1627a = context;
            this.f1617I = str;
            notification.when = System.currentTimeMillis();
            this.f1624P.audioStreamType = -1;
        }

        /* renamed from: c */
        protected static CharSequence m13622c(CharSequence charSequence) {
            if (charSequence == null) {
                return charSequence;
            }
            CharSequence charSequence2 = charSequence;
            if (charSequence.length() > 5120) {
                charSequence2 = charSequence.subSequence(0, 5120);
            }
            return charSequence2;
        }

        /* renamed from: d */
        private Bitmap m13621d(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (bitmap != null) {
                if (Build.VERSION.SDK_INT >= 27) {
                    bitmap2 = bitmap;
                } else {
                    Resources resources = this.f1627a.getResources();
                    int dimensionPixelSize = resources.getDimensionPixelSize(b.compat_notification_large_icon_max_width);
                    int dimensionPixelSize2 = resources.getDimensionPixelSize(b.compat_notification_large_icon_max_height);
                    if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                        return bitmap;
                    }
                    double d = dimensionPixelSize;
                    double max = Math.max(1, bitmap.getWidth());
                    Double.isNaN(d);
                    Double.isNaN(max);
                    double d2 = d / max;
                    double d3 = dimensionPixelSize2;
                    double max2 = Math.max(1, bitmap.getHeight());
                    Double.isNaN(d3);
                    Double.isNaN(max2);
                    double min = Math.min(d2, d3 / max2);
                    double width = bitmap.getWidth();
                    Double.isNaN(width);
                    int ceil = (int) Math.ceil(width * min);
                    double height = bitmap.getHeight();
                    Double.isNaN(height);
                    bitmap2 = Bitmap.createScaledBitmap(bitmap, ceil, (int) Math.ceil(height * min), true);
                }
            }
            return bitmap2;
        }

        /* renamed from: m */
        private void m13612m(int i, boolean z) {
            Notification notification;
            int i2;
            if (z) {
                notification = this.f1624P;
                i2 = i | notification.flags;
            } else {
                notification = this.f1624P;
                i2 = (i ^ (-1)) & notification.flags;
            }
            notification.flags = i2;
        }

        /* renamed from: A */
        public C0256e m13625A(long j) {
            this.f1624P.when = j;
            return this;
        }

        /* renamed from: a */
        public Notification m13624a() {
            return new j(this).c();
        }

        /* renamed from: b */
        public Bundle m13623b() {
            if (this.f1610B == null) {
                this.f1610B = new Bundle();
            }
            return this.f1610B;
        }

        /* renamed from: e */
        public C0256e m13620e(boolean z) {
            m13612m(16, z);
            return this;
        }

        /* renamed from: f */
        public C0256e m13619f(String str) {
            this.f1617I = str;
            return this;
        }

        /* renamed from: g */
        public C0256e m13618g(int i) {
            this.f1611C = i;
            return this;
        }

        /* renamed from: h */
        public C0256e m13617h(PendingIntent pendingIntent) {
            this.f1632f = pendingIntent;
            return this;
        }

        /* renamed from: i */
        public C0256e m13616i(CharSequence charSequence) {
            this.f1631e = m13622c(charSequence);
            return this;
        }

        /* renamed from: j */
        public C0256e m13615j(CharSequence charSequence) {
            this.f1630d = m13622c(charSequence);
            return this;
        }

        /* renamed from: k */
        public C0256e m13614k(int i) {
            Notification notification = this.f1624P;
            notification.defaults = i;
            if ((i & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        /* renamed from: l */
        public C0256e m13613l(PendingIntent pendingIntent) {
            this.f1624P.deleteIntent = pendingIntent;
            return this;
        }

        /* renamed from: n */
        public C0256e m13611n(Bitmap bitmap) {
            this.f1635i = m13621d(bitmap);
            return this;
        }

        /* renamed from: o */
        public C0256e m13610o(int i, int i2, int i3) {
            Notification notification = this.f1624P;
            notification.ledARGB = i;
            notification.ledOnMS = i2;
            notification.ledOffMS = i3;
            notification.flags = ((i2 == 0 || i3 == 0) ? 0 : 1) | (notification.flags & (-2));
            return this;
        }

        /* renamed from: p */
        public C0256e m13609p(boolean z) {
            this.f1650x = z;
            return this;
        }

        /* renamed from: q */
        public C0256e m13608q(int i) {
            this.f1637k = i;
            return this;
        }

        /* renamed from: r */
        public C0256e m13607r(boolean z) {
            m13612m(2, z);
            return this;
        }

        /* renamed from: s */
        public C0256e m13606s(int i) {
            this.f1638l = i;
            return this;
        }

        /* renamed from: t */
        public C0256e m13605t(boolean z) {
            this.f1639m = z;
            return this;
        }

        /* renamed from: u */
        public C0256e m13604u(int i) {
            this.f1624P.icon = i;
            return this;
        }

        /* renamed from: v */
        public C0256e m13603v(Uri uri) {
            Notification notification = this.f1624P;
            notification.sound = uri;
            notification.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        /* renamed from: w */
        public C0256e m13602w(AbstractC0257f fVar) {
            if (this.f1641o != fVar) {
                this.f1641o = fVar;
                if (fVar != null) {
                    fVar.m13593f(this);
                }
            }
            return this;
        }

        /* renamed from: x */
        public C0256e m13601x(CharSequence charSequence) {
            this.f1624P.tickerText = m13622c(charSequence);
            return this;
        }

        /* renamed from: y */
        public C0256e m13600y(long[] jArr) {
            this.f1624P.vibrate = jArr;
            return this;
        }

        /* renamed from: z */
        public C0256e m13599z(int i) {
            this.f1612D = i;
            return this;
        }
    }

    /* renamed from: androidx.core.app.i$f */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/i$f.class */
    public static abstract class AbstractC0257f {

        /* renamed from: a */
        protected C0256e f1653a;

        /* renamed from: b */
        CharSequence f1654b;

        /* renamed from: c */
        CharSequence f1655c;

        /* renamed from: d */
        boolean f1656d = false;

        /* renamed from: a */
        public void m13598a(Bundle bundle) {
        }

        /* renamed from: b */
        public abstract void m13597b(AbstractC0252h hVar);

        /* renamed from: c */
        public RemoteViews m13596c(AbstractC0252h hVar) {
            return null;
        }

        /* renamed from: d */
        public RemoteViews m13595d(AbstractC0252h hVar) {
            return null;
        }

        /* renamed from: e */
        public RemoteViews m13594e(AbstractC0252h hVar) {
            return null;
        }

        /* renamed from: f */
        public void m13593f(C0256e eVar) {
            if (this.f1653a != eVar) {
                this.f1653a = eVar;
                if (eVar != null) {
                    eVar.m13602w(this);
                }
            }
        }
    }

    /* renamed from: a */
    public static Bundle m13638a(Notification notification) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return notification.extras;
        }
        if (i >= 16) {
            return C0258k.m13590c(notification);
        }
        return null;
    }
}
