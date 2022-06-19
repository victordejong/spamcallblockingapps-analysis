package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.widget.RemoteViews;
import androidx.core.C0404a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
/* renamed from: androidx.core.app.h */
/* loaded from: classes-dex2jar.jar:androidx/core/app/h.class */
public class C0445h {

    /* renamed from: androidx.core.app.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$a.class */
    public static class C0446a {

        /* renamed from: a */
        final Bundle f1608a;

        /* renamed from: b */
        boolean f1609b;

        /* renamed from: c */
        public int f1610c;

        /* renamed from: d */
        public CharSequence f1611d;

        /* renamed from: e */
        public PendingIntent f1612e;

        /* renamed from: f */
        private final C0456k[] f1613f;

        /* renamed from: g */
        private final C0456k[] f1614g;

        /* renamed from: h */
        private boolean f1615h;

        /* renamed from: i */
        private final int f1616i;

        /* renamed from: androidx.core.app.h$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/app/h$a$a.class */
        public static final class C0447a {

            /* renamed from: a */
            private final int f1617a;

            /* renamed from: b */
            private final CharSequence f1618b;

            /* renamed from: c */
            private final PendingIntent f1619c;

            /* renamed from: d */
            private boolean f1620d;

            /* renamed from: e */
            private final Bundle f1621e;

            /* renamed from: f */
            private ArrayList<C0456k> f1622f;

            /* renamed from: g */
            private int f1623g;

            /* renamed from: h */
            private boolean f1624h;

            public C0447a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
                this(i, charSequence, pendingIntent, new Bundle(), null, true, 0, true);
            }

            private C0447a(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, C0456k[] c0456kArr, boolean z, int i2, boolean z2) {
                this.f1620d = true;
                this.f1624h = true;
                this.f1617a = i;
                this.f1618b = C0450d.m6600e(charSequence);
                this.f1619c = pendingIntent;
                this.f1621e = bundle;
                this.f1622f = c0456kArr == null ? null : new ArrayList<>(Arrays.asList(c0456kArr));
                this.f1620d = z;
                this.f1623g = i2;
                this.f1624h = z2;
            }

            /* renamed from: a */
            public C0446a m6638a() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList<C0456k> arrayList3 = this.f1622f;
                if (arrayList3 != null) {
                    Iterator<C0456k> it = arrayList3.iterator();
                    while (it.hasNext()) {
                        C0456k next = it.next();
                        if (next.m6566e()) {
                            arrayList.add(next);
                        } else {
                            arrayList2.add(next);
                        }
                    }
                }
                C0456k[] c0456kArr = null;
                C0456k[] c0456kArr2 = arrayList.isEmpty() ? null : (C0456k[]) arrayList.toArray(new C0456k[arrayList.size()]);
                if (!arrayList2.isEmpty()) {
                    c0456kArr = (C0456k[]) arrayList2.toArray(new C0456k[arrayList2.size()]);
                }
                return new C0446a(this.f1617a, this.f1618b, this.f1619c, this.f1621e, c0456kArr, c0456kArr2, this.f1620d, this.f1623g, this.f1624h);
            }
        }

        public C0446a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true);
        }

        C0446a(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, C0456k[] c0456kArr, C0456k[] c0456kArr2, boolean z, int i2, boolean z2) {
            this.f1609b = true;
            this.f1610c = i;
            this.f1611d = C0450d.m6600e(charSequence);
            this.f1612e = pendingIntent;
            this.f1608a = bundle == null ? new Bundle() : bundle;
            this.f1613f = c0456kArr;
            this.f1614g = c0456kArr2;
            this.f1615h = z;
            this.f1616i = i2;
            this.f1609b = z2;
        }

        /* renamed from: a */
        public int m6647a() {
            return this.f1610c;
        }

        /* renamed from: b */
        public CharSequence m6646b() {
            return this.f1611d;
        }

        /* renamed from: c */
        public PendingIntent m6645c() {
            return this.f1612e;
        }

        /* renamed from: d */
        public Bundle m6644d() {
            return this.f1608a;
        }

        /* renamed from: e */
        public boolean m6643e() {
            return this.f1615h;
        }

        /* renamed from: f */
        public C0456k[] m6642f() {
            return this.f1613f;
        }

        /* renamed from: g */
        public int m6641g() {
            return this.f1616i;
        }

        /* renamed from: h */
        public C0456k[] m6640h() {
            return this.f1614g;
        }

        /* renamed from: i */
        public boolean m6639i() {
            return this.f1609b;
        }
    }

    /* renamed from: androidx.core.app.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$b.class */
    public static class C0448b extends AbstractC0452f {

        /* renamed from: e */
        private Bitmap f1625e;

        /* renamed from: f */
        private Bitmap f1626f;

        /* renamed from: g */
        private boolean f1627g;

        /* renamed from: a */
        public C0448b m6637a(Bitmap bitmap) {
            this.f1625e = bitmap;
            return this;
        }

        @Override // androidx.core.app.C0445h.AbstractC0452f
        /* renamed from: a */
        public void mo6595a(AbstractC0444g abstractC0444g) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigPictureStyle bigPicture = new Notification.BigPictureStyle(abstractC0444g.mo6583a()).setBigContentTitle(this.f1671b).bigPicture(this.f1625e);
                if (this.f1627g) {
                    bigPicture.bigLargeIcon(this.f1626f);
                }
                if (!this.f1673d) {
                    return;
                }
                bigPicture.setSummaryText(this.f1672c);
            }
        }

        /* renamed from: b */
        public C0448b m6636b(Bitmap bitmap) {
            this.f1626f = bitmap;
            this.f1627g = true;
            return this;
        }
    }

    /* renamed from: androidx.core.app.h$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$c.class */
    public static class C0449c extends AbstractC0452f {

        /* renamed from: e */
        private CharSequence f1628e;

        /* renamed from: a */
        public C0449c m6635a(CharSequence charSequence) {
            this.f1628e = C0450d.m6600e(charSequence);
            return this;
        }

        @Override // androidx.core.app.C0445h.AbstractC0452f
        /* renamed from: a */
        public void mo6595a(AbstractC0444g abstractC0444g) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigText = new Notification.BigTextStyle(abstractC0444g.mo6583a()).setBigContentTitle(this.f1671b).bigText(this.f1628e);
                if (!this.f1673d) {
                    return;
                }
                bigText.setSummaryText(this.f1672c);
            }
        }
    }

    /* renamed from: androidx.core.app.h$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$d.class */
    public static class C0450d {

        /* renamed from: A */
        String f1629A;

        /* renamed from: B */
        Bundle f1630B;

        /* renamed from: C */
        int f1631C;

        /* renamed from: D */
        int f1632D;

        /* renamed from: E */
        Notification f1633E;

        /* renamed from: F */
        RemoteViews f1634F;

        /* renamed from: G */
        RemoteViews f1635G;

        /* renamed from: H */
        RemoteViews f1636H;

        /* renamed from: I */
        String f1637I;

        /* renamed from: J */
        int f1638J;

        /* renamed from: K */
        String f1639K;

        /* renamed from: L */
        long f1640L;

        /* renamed from: M */
        int f1641M;

        /* renamed from: N */
        Notification f1642N;
        @Deprecated

        /* renamed from: O */
        public ArrayList<String> f1643O;

        /* renamed from: a */
        public Context f1644a;

        /* renamed from: b */
        public ArrayList<C0446a> f1645b;

        /* renamed from: c */
        ArrayList<C0446a> f1646c;

        /* renamed from: d */
        CharSequence f1647d;

        /* renamed from: e */
        CharSequence f1648e;

        /* renamed from: f */
        PendingIntent f1649f;

        /* renamed from: g */
        PendingIntent f1650g;

        /* renamed from: h */
        RemoteViews f1651h;

        /* renamed from: i */
        Bitmap f1652i;

        /* renamed from: j */
        CharSequence f1653j;

        /* renamed from: k */
        int f1654k;

        /* renamed from: l */
        int f1655l;

        /* renamed from: m */
        boolean f1656m;

        /* renamed from: n */
        boolean f1657n;

        /* renamed from: o */
        AbstractC0452f f1658o;

        /* renamed from: p */
        CharSequence f1659p;

        /* renamed from: q */
        CharSequence[] f1660q;

        /* renamed from: r */
        int f1661r;

        /* renamed from: s */
        int f1662s;

        /* renamed from: t */
        boolean f1663t;

        /* renamed from: u */
        String f1664u;

        /* renamed from: v */
        boolean f1665v;

        /* renamed from: w */
        String f1666w;

        /* renamed from: x */
        boolean f1667x;

        /* renamed from: y */
        boolean f1668y;

        /* renamed from: z */
        boolean f1669z;

        @Deprecated
        public C0450d(Context context) {
            this(context, null);
        }

        public C0450d(Context context, String str) {
            this.f1645b = new ArrayList<>();
            this.f1646c = new ArrayList<>();
            this.f1656m = true;
            this.f1667x = false;
            this.f1631C = 0;
            this.f1632D = 0;
            this.f1638J = 0;
            this.f1641M = 0;
            this.f1642N = new Notification();
            this.f1644a = context;
            this.f1637I = str;
            this.f1642N.when = System.currentTimeMillis();
            this.f1642N.audioStreamType = -1;
            this.f1655l = 0;
            this.f1643O = new ArrayList<>();
        }

        /* renamed from: a */
        private void m6630a(int i, boolean z) {
            if (z) {
                Notification notification = this.f1642N;
                notification.flags = i | notification.flags;
                return;
            }
            Notification notification2 = this.f1642N;
            notification2.flags = (i ^ (-1)) & notification2.flags;
        }

        /* renamed from: b */
        private Bitmap m6613b(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (bitmap != null) {
                if (Build.VERSION.SDK_INT >= 27) {
                    bitmap2 = bitmap;
                } else {
                    Resources resources = this.f1644a.getResources();
                    int dimensionPixelSize = resources.getDimensionPixelSize(C0404a.C0406b.compat_notification_large_icon_max_width);
                    int dimensionPixelSize2 = resources.getDimensionPixelSize(C0404a.C0406b.compat_notification_large_icon_max_height);
                    if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                        return bitmap;
                    }
                    double min = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
                    bitmap2 = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * min), (int) Math.ceil(bitmap.getHeight() * min), true);
                }
            }
            return bitmap2;
        }

        /* renamed from: e */
        protected static CharSequence m6600e(CharSequence charSequence) {
            if (charSequence == null) {
                return charSequence;
            }
            CharSequence charSequence2 = charSequence;
            if (charSequence.length() > 5120) {
                charSequence2 = charSequence.subSequence(0, 5120);
            }
            return charSequence2;
        }

        /* renamed from: a */
        public Bundle m6634a() {
            if (this.f1630B == null) {
                this.f1630B = new Bundle();
            }
            return this.f1630B;
        }

        /* renamed from: a */
        public C0450d m6633a(int i) {
            this.f1642N.icon = i;
            return this;
        }

        /* renamed from: a */
        public C0450d m6632a(int i, int i2, int i3) {
            Notification notification = this.f1642N;
            notification.ledARGB = i;
            notification.ledOnMS = i2;
            notification.ledOffMS = i3;
            int i4 = (notification.ledOnMS == 0 || this.f1642N.ledOffMS == 0) ? 0 : 1;
            Notification notification2 = this.f1642N;
            notification2.flags = i4 | (notification2.flags & (-2));
            return this;
        }

        /* renamed from: a */
        public C0450d m6631a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f1645b.add(new C0446a(i, charSequence, pendingIntent));
            return this;
        }

        /* renamed from: a */
        public C0450d m6629a(long j) {
            this.f1642N.when = j;
            return this;
        }

        /* renamed from: a */
        public C0450d m6628a(PendingIntent pendingIntent) {
            this.f1649f = pendingIntent;
            return this;
        }

        /* renamed from: a */
        public C0450d m6627a(PendingIntent pendingIntent, boolean z) {
            this.f1650g = pendingIntent;
            m6630a(128, z);
            return this;
        }

        /* renamed from: a */
        public C0450d m6626a(Bitmap bitmap) {
            this.f1652i = m6613b(bitmap);
            return this;
        }

        /* renamed from: a */
        public C0450d m6625a(Uri uri) {
            Notification notification = this.f1642N;
            notification.sound = uri;
            notification.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f1642N.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        /* renamed from: a */
        public C0450d m6624a(RemoteViews remoteViews) {
            this.f1635G = remoteViews;
            return this;
        }

        /* renamed from: a */
        public C0450d m6623a(C0446a c0446a) {
            this.f1645b.add(c0446a);
            return this;
        }

        /* renamed from: a */
        public C0450d m6622a(AbstractC0451e abstractC0451e) {
            abstractC0451e.mo6585a(this);
            return this;
        }

        /* renamed from: a */
        public C0450d m6621a(AbstractC0452f abstractC0452f) {
            if (this.f1658o != abstractC0452f) {
                this.f1658o = abstractC0452f;
                AbstractC0452f abstractC0452f2 = this.f1658o;
                if (abstractC0452f2 != null) {
                    abstractC0452f2.m6594a(this);
                }
            }
            return this;
        }

        /* renamed from: a */
        public C0450d m6620a(CharSequence charSequence) {
            this.f1647d = m6600e(charSequence);
            return this;
        }

        /* renamed from: a */
        public C0450d m6619a(String str) {
            this.f1629A = str;
            return this;
        }

        /* renamed from: a */
        public C0450d m6618a(boolean z) {
            this.f1656m = z;
            return this;
        }

        /* renamed from: a */
        public C0450d m6617a(long[] jArr) {
            this.f1642N.vibrate = jArr;
            return this;
        }

        /* renamed from: b */
        public Notification m6616b() {
            return new C0454i(this).m6580b();
        }

        /* renamed from: b */
        public C0450d m6615b(int i) {
            this.f1654k = i;
            return this;
        }

        /* renamed from: b */
        public C0450d m6614b(PendingIntent pendingIntent) {
            this.f1642N.deleteIntent = pendingIntent;
            return this;
        }

        /* renamed from: b */
        public C0450d m6612b(RemoteViews remoteViews) {
            this.f1636H = remoteViews;
            return this;
        }

        /* renamed from: b */
        public C0450d m6611b(CharSequence charSequence) {
            this.f1648e = m6600e(charSequence);
            return this;
        }

        /* renamed from: b */
        public C0450d m6610b(String str) {
            this.f1664u = str;
            return this;
        }

        /* renamed from: b */
        public C0450d m6609b(boolean z) {
            this.f1657n = z;
            return this;
        }

        /* renamed from: c */
        public C0450d m6608c(int i) {
            Notification notification = this.f1642N;
            notification.defaults = i;
            if ((i & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        /* renamed from: c */
        public C0450d m6607c(CharSequence charSequence) {
            this.f1659p = m6600e(charSequence);
            return this;
        }

        /* renamed from: c */
        public C0450d m6606c(String str) {
            this.f1637I = str;
            return this;
        }

        /* renamed from: c */
        public C0450d m6605c(boolean z) {
            this.f1668y = z;
            this.f1669z = true;
            return this;
        }

        /* renamed from: d */
        public C0450d m6604d(int i) {
            this.f1655l = i;
            return this;
        }

        /* renamed from: d */
        public C0450d m6603d(CharSequence charSequence) {
            this.f1642N.tickerText = m6600e(charSequence);
            return this;
        }

        /* renamed from: d */
        public C0450d m6602d(boolean z) {
            m6630a(16, z);
            return this;
        }

        /* renamed from: e */
        public C0450d m6601e(int i) {
            this.f1631C = i;
            return this;
        }

        /* renamed from: e */
        public C0450d m6599e(boolean z) {
            this.f1667x = z;
            return this;
        }

        /* renamed from: f */
        public C0450d m6598f(int i) {
            this.f1632D = i;
            return this;
        }

        /* renamed from: f */
        public C0450d m6597f(boolean z) {
            this.f1665v = z;
            return this;
        }
    }

    /* renamed from: androidx.core.app.h$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$e.class */
    public interface AbstractC0451e {
        /* renamed from: a */
        C0450d mo6585a(C0450d c0450d);
    }

    /* renamed from: androidx.core.app.h$f */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$f.class */
    public static abstract class AbstractC0452f {

        /* renamed from: a */
        protected C0450d f1670a;

        /* renamed from: b */
        CharSequence f1671b;

        /* renamed from: c */
        CharSequence f1672c;

        /* renamed from: d */
        boolean f1673d = false;

        /* renamed from: a */
        public void m6596a(Bundle bundle) {
        }

        /* renamed from: a */
        public void mo6595a(AbstractC0444g abstractC0444g) {
        }

        /* renamed from: a */
        public void m6594a(C0450d c0450d) {
            if (this.f1670a != c0450d) {
                this.f1670a = c0450d;
                C0450d c0450d2 = this.f1670a;
                if (c0450d2 == null) {
                    return;
                }
                c0450d2.m6621a(this);
            }
        }

        /* renamed from: b */
        public RemoteViews m6593b(AbstractC0444g abstractC0444g) {
            return null;
        }

        /* renamed from: c */
        public RemoteViews m6592c(AbstractC0444g abstractC0444g) {
            return null;
        }

        /* renamed from: d */
        public RemoteViews m6591d(AbstractC0444g abstractC0444g) {
            return null;
        }
    }

    /* renamed from: androidx.core.app.h$g */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$g.class */
    public static final class C0453g implements AbstractC0451e {

        /* renamed from: c */
        private PendingIntent f1676c;

        /* renamed from: e */
        private Bitmap f1678e;

        /* renamed from: f */
        private int f1679f;

        /* renamed from: j */
        private int f1683j;

        /* renamed from: l */
        private int f1685l;

        /* renamed from: m */
        private String f1686m;

        /* renamed from: n */
        private String f1687n;

        /* renamed from: a */
        private ArrayList<C0446a> f1674a = new ArrayList<>();

        /* renamed from: b */
        private int f1675b = 1;

        /* renamed from: d */
        private ArrayList<Notification> f1677d = new ArrayList<>();

        /* renamed from: g */
        private int f1680g = 8388613;

        /* renamed from: h */
        private int f1681h = -1;

        /* renamed from: i */
        private int f1682i = 0;

        /* renamed from: k */
        private int f1684k = 80;

        /* renamed from: a */
        private static Notification.Action m6586a(C0446a c0446a) {
            Notification.Action.Builder builder = new Notification.Action.Builder(c0446a.m6647a(), c0446a.m6646b(), c0446a.m6645c());
            Bundle bundle = c0446a.m6644d() != null ? new Bundle(c0446a.m6644d()) : new Bundle();
            bundle.putBoolean("android.support.allowGeneratedReplies", c0446a.m6643e());
            if (Build.VERSION.SDK_INT >= 24) {
                builder.setAllowGeneratedReplies(c0446a.m6643e());
            }
            builder.addExtras(bundle);
            C0456k[] m6642f = c0446a.m6642f();
            if (m6642f != null) {
                for (RemoteInput remoteInput : C0456k.m6570a(m6642f)) {
                    builder.addRemoteInput(remoteInput);
                }
            }
            return builder.build();
        }

        /* renamed from: a */
        private void m6588a(int i, boolean z) {
            if (z) {
                this.f1675b = i | this.f1675b;
            } else {
                this.f1675b = (i ^ (-1)) & this.f1675b;
            }
        }

        @Override // androidx.core.app.C0445h.AbstractC0451e
        /* renamed from: a */
        public C0450d mo6585a(C0450d c0450d) {
            Bundle bundle = new Bundle();
            if (!this.f1674a.isEmpty()) {
                if (Build.VERSION.SDK_INT >= 16) {
                    ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f1674a.size());
                    Iterator<C0446a> it = this.f1674a.iterator();
                    while (it.hasNext()) {
                        C0446a next = it.next();
                        if (Build.VERSION.SDK_INT >= 20) {
                            arrayList.add(m6586a(next));
                        } else if (Build.VERSION.SDK_INT >= 16) {
                            arrayList.add(C0455j.m6576a(next));
                        }
                    }
                    bundle.putParcelableArrayList("actions", arrayList);
                } else {
                    bundle.putParcelableArrayList("actions", null);
                }
            }
            int i = this.f1675b;
            if (i != 1) {
                bundle.putInt("flags", i);
            }
            PendingIntent pendingIntent = this.f1676c;
            if (pendingIntent != null) {
                bundle.putParcelable("displayIntent", pendingIntent);
            }
            if (!this.f1677d.isEmpty()) {
                ArrayList<Notification> arrayList2 = this.f1677d;
                bundle.putParcelableArray("pages", (Parcelable[]) arrayList2.toArray(new Notification[arrayList2.size()]));
            }
            Bitmap bitmap = this.f1678e;
            if (bitmap != null) {
                bundle.putParcelable("background", bitmap);
            }
            int i2 = this.f1679f;
            if (i2 != 0) {
                bundle.putInt("contentIcon", i2);
            }
            int i3 = this.f1680g;
            if (i3 != 8388613) {
                bundle.putInt("contentIconGravity", i3);
            }
            int i4 = this.f1681h;
            if (i4 != -1) {
                bundle.putInt("contentActionIndex", i4);
            }
            int i5 = this.f1682i;
            if (i5 != 0) {
                bundle.putInt("customSizePreset", i5);
            }
            int i6 = this.f1683j;
            if (i6 != 0) {
                bundle.putInt("customContentHeight", i6);
            }
            int i7 = this.f1684k;
            if (i7 != 80) {
                bundle.putInt("gravity", i7);
            }
            int i8 = this.f1685l;
            if (i8 != 0) {
                bundle.putInt("hintScreenTimeout", i8);
            }
            String str = this.f1686m;
            if (str != null) {
                bundle.putString("dismissalId", str);
            }
            String str2 = this.f1687n;
            if (str2 != null) {
                bundle.putString("bridgeTag", str2);
            }
            c0450d.m6634a().putBundle("android.wearable.EXTENSIONS", bundle);
            return c0450d;
        }

        /* renamed from: a */
        public C0453g clone() {
            C0453g c0453g = new C0453g();
            c0453g.f1674a = new ArrayList<>(this.f1674a);
            c0453g.f1675b = this.f1675b;
            c0453g.f1676c = this.f1676c;
            c0453g.f1677d = new ArrayList<>(this.f1677d);
            c0453g.f1678e = this.f1678e;
            c0453g.f1679f = this.f1679f;
            c0453g.f1680g = this.f1680g;
            c0453g.f1681h = this.f1681h;
            c0453g.f1682i = this.f1682i;
            c0453g.f1683j = this.f1683j;
            c0453g.f1684k = this.f1684k;
            c0453g.f1685l = this.f1685l;
            c0453g.f1686m = this.f1686m;
            c0453g.f1687n = this.f1687n;
            return c0453g;
        }

        @Deprecated
        /* renamed from: a */
        public C0453g m6589a(int i) {
            this.f1679f = i;
            return this;
        }

        @Deprecated
        /* renamed from: a */
        public C0453g m6587a(Bitmap bitmap) {
            this.f1678e = bitmap;
            return this;
        }

        @Deprecated
        /* renamed from: a */
        public C0453g m6584a(boolean z) {
            m6588a(2, z);
            return this;
        }
    }

    /* renamed from: a */
    public static Bundle m6648a(Notification notification) {
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras;
        }
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        return C0455j.m6577a(notification);
    }
}
