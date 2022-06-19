package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.core.content.C0593b;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import p020b.p041h.C1519b;
/* renamed from: androidx.core.app.h */
/* loaded from: classes-dex2jar.jar:androidx/core/app/h.class */
public class C0565h {

    /* renamed from: androidx.core.app.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$a.class */
    public static class C0566a {

        /* renamed from: a */
        final Bundle f2852a;

        /* renamed from: b */
        private IconCompat f2853b;

        /* renamed from: c */
        private final C0580m[] f2854c;

        /* renamed from: d */
        private final C0580m[] f2855d;

        /* renamed from: e */
        private boolean f2856e;

        /* renamed from: f */
        boolean f2857f;

        /* renamed from: g */
        private final int f2858g;

        /* renamed from: h */
        private final boolean f2859h;
        @Deprecated

        /* renamed from: i */
        public int f2860i;

        /* renamed from: j */
        public CharSequence f2861j;

        /* renamed from: k */
        public PendingIntent f2862k;

        public C0566a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i != 0 ? IconCompat.m33245c(null, "", i) : null, charSequence, pendingIntent);
        }

        public C0566a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true, false);
        }

        C0566a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, C0580m[] c0580mArr, C0580m[] c0580mArr2, boolean z, int i, boolean z2, boolean z3) {
            this.f2857f = true;
            this.f2853b = iconCompat;
            if (iconCompat != null && iconCompat.m33239i() == 2) {
                this.f2860i = iconCompat.m33243e();
            }
            this.f2861j = C0574e.m33426d(charSequence);
            this.f2862k = pendingIntent;
            this.f2852a = bundle == null ? new Bundle() : bundle;
            this.f2854c = c0580mArr;
            this.f2855d = c0580mArr2;
            this.f2856e = z;
            this.f2858g = i;
            this.f2857f = z2;
            this.f2859h = z3;
        }

        /* renamed from: a */
        public PendingIntent m33450a() {
            return this.f2862k;
        }

        /* renamed from: b */
        public boolean m33449b() {
            return this.f2856e;
        }

        /* renamed from: c */
        public C0580m[] m33448c() {
            return this.f2855d;
        }

        /* renamed from: d */
        public Bundle m33447d() {
            return this.f2852a;
        }

        /* renamed from: e */
        public IconCompat m33446e() {
            int i;
            if (this.f2853b == null && (i = this.f2860i) != 0) {
                this.f2853b = IconCompat.m33245c(null, "", i);
            }
            return this.f2853b;
        }

        /* renamed from: f */
        public C0580m[] m33445f() {
            return this.f2854c;
        }

        /* renamed from: g */
        public int m33444g() {
            return this.f2858g;
        }

        /* renamed from: h */
        public boolean m33443h() {
            return this.f2857f;
        }

        /* renamed from: i */
        public CharSequence m33442i() {
            return this.f2861j;
        }

        /* renamed from: j */
        public boolean m33441j() {
            return this.f2859h;
        }
    }

    /* renamed from: androidx.core.app.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$b.class */
    public static class C0567b extends AbstractC0575f {

        /* renamed from: e */
        private Bitmap f2863e;

        /* renamed from: f */
        private IconCompat f2864f;

        /* renamed from: g */
        private boolean f2865g;

        /* renamed from: androidx.core.app.h$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/app/h$b$a.class */
        private static class C0568a {
            /* renamed from: a */
            static void m33438a(Notification.BigPictureStyle bigPictureStyle, Bitmap bitmap) {
                bigPictureStyle.bigLargeIcon(bitmap);
            }

            /* renamed from: b */
            static void m33437b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setSummaryText(charSequence);
            }
        }

        /* renamed from: androidx.core.app.h$b$b */
        /* loaded from: classes-dex2jar.jar:androidx/core/app/h$b$b.class */
        private static class C0569b {
            /* renamed from: a */
            static void m33436a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigLargeIcon(icon);
            }
        }

        @Override // androidx.core.app.C0565h.AbstractC0575f
        /* renamed from: b */
        public void mo33402b(AbstractC0564g abstractC0564g) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 16) {
                Notification.BigPictureStyle bigPicture = new Notification.BigPictureStyle(abstractC0564g.mo33396a()).setBigContentTitle(this.f2916b).bigPicture(this.f2863e);
                if (this.f2865g) {
                    IconCompat iconCompat = this.f2864f;
                    Context context = null;
                    if (iconCompat == null) {
                        C0568a.m33438a(bigPicture, null);
                    } else if (i >= 23) {
                        if (abstractC0564g instanceof C0576i) {
                            context = ((C0576i) abstractC0564g).m33391f();
                        }
                        C0569b.m33436a(bigPicture, this.f2864f.m33231q(context));
                    } else if (iconCompat.m33239i() == 1) {
                        C0568a.m33438a(bigPicture, this.f2864f.m33244d());
                    } else {
                        C0568a.m33438a(bigPicture, null);
                    }
                }
                if (!this.f2918d) {
                    return;
                }
                C0568a.m33437b(bigPicture, this.f2917c);
            }
        }

        @Override // androidx.core.app.C0565h.AbstractC0575f
        /* renamed from: c */
        protected String mo33401c() {
            return "androidx.core.app.NotificationCompat$BigPictureStyle";
        }

        /* renamed from: h */
        public C0567b m33440h(Bitmap bitmap) {
            this.f2864f = bitmap == null ? null : IconCompat.m33246b(bitmap);
            this.f2865g = true;
            return this;
        }

        /* renamed from: i */
        public C0567b m33439i(Bitmap bitmap) {
            this.f2863e = bitmap;
            return this;
        }
    }

    /* renamed from: androidx.core.app.h$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$c.class */
    public static class C0570c extends AbstractC0575f {

        /* renamed from: e */
        private CharSequence f2866e;

        @Override // androidx.core.app.C0565h.AbstractC0575f
        /* renamed from: a */
        public void mo33403a(Bundle bundle) {
            super.mo33403a(bundle);
            if (Build.VERSION.SDK_INT < 21) {
                bundle.putCharSequence("android.bigText", this.f2866e);
            }
        }

        @Override // androidx.core.app.C0565h.AbstractC0575f
        /* renamed from: b */
        public void mo33402b(AbstractC0564g abstractC0564g) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigText = new Notification.BigTextStyle(abstractC0564g.mo33396a()).setBigContentTitle(this.f2916b).bigText(this.f2866e);
                if (!this.f2918d) {
                    return;
                }
                bigText.setSummaryText(this.f2917c);
            }
        }

        @Override // androidx.core.app.C0565h.AbstractC0575f
        /* renamed from: c */
        protected String mo33401c() {
            return "androidx.core.app.NotificationCompat$BigTextStyle";
        }

        /* renamed from: h */
        public C0570c m33435h(CharSequence charSequence) {
            this.f2866e = C0574e.m33426d(charSequence);
            return this;
        }
    }

    /* renamed from: androidx.core.app.h$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$d.class */
    public static final class C0571d {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.core.app.h$d$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/app/h$d$a.class */
        public static class C0572a {
            /* renamed from: a */
            static Notification.BubbleMetadata m33433a(C0571d c0571d) {
                if (c0571d == null) {
                    return null;
                }
                throw null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.core.app.h$d$b */
        /* loaded from: classes-dex2jar.jar:androidx/core/app/h$d$b.class */
        public static class C0573b {
            /* renamed from: a */
            static Notification.BubbleMetadata m33432a(C0571d c0571d) {
                if (c0571d == null) {
                    return null;
                }
                throw null;
            }
        }

        /* renamed from: a */
        public static Notification.BubbleMetadata m33434a(C0571d c0571d) {
            if (c0571d == null) {
                return null;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                return C0573b.m33432a(c0571d);
            }
            if (i != 29) {
                return null;
            }
            return C0572a.m33433a(c0571d);
        }
    }

    /* renamed from: androidx.core.app.h$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$e.class */
    public static class C0574e {

        /* renamed from: A */
        boolean f2867A;

        /* renamed from: B */
        boolean f2868B;

        /* renamed from: C */
        String f2869C;

        /* renamed from: D */
        Bundle f2870D;

        /* renamed from: E */
        int f2871E;

        /* renamed from: F */
        int f2872F;

        /* renamed from: G */
        Notification f2873G;

        /* renamed from: H */
        RemoteViews f2874H;

        /* renamed from: I */
        RemoteViews f2875I;

        /* renamed from: J */
        RemoteViews f2876J;

        /* renamed from: K */
        String f2877K;

        /* renamed from: L */
        int f2878L;

        /* renamed from: M */
        String f2879M;

        /* renamed from: N */
        C0593b f2880N;

        /* renamed from: O */
        long f2881O;

        /* renamed from: P */
        int f2882P;

        /* renamed from: Q */
        boolean f2883Q;

        /* renamed from: R */
        C0571d f2884R;

        /* renamed from: S */
        Notification f2885S;

        /* renamed from: T */
        boolean f2886T;

        /* renamed from: U */
        Icon f2887U;
        @Deprecated

        /* renamed from: V */
        public ArrayList<String> f2888V;

        /* renamed from: a */
        public Context f2889a;

        /* renamed from: b */
        public ArrayList<C0566a> f2890b;

        /* renamed from: c */
        public ArrayList<C0579l> f2891c;

        /* renamed from: d */
        ArrayList<C0566a> f2892d;

        /* renamed from: e */
        CharSequence f2893e;

        /* renamed from: f */
        CharSequence f2894f;

        /* renamed from: g */
        PendingIntent f2895g;

        /* renamed from: h */
        PendingIntent f2896h;

        /* renamed from: i */
        RemoteViews f2897i;

        /* renamed from: j */
        Bitmap f2898j;

        /* renamed from: k */
        CharSequence f2899k;

        /* renamed from: l */
        int f2900l;

        /* renamed from: m */
        int f2901m;

        /* renamed from: n */
        boolean f2902n;

        /* renamed from: o */
        boolean f2903o;

        /* renamed from: p */
        AbstractC0575f f2904p;

        /* renamed from: q */
        CharSequence f2905q;

        /* renamed from: r */
        CharSequence f2906r;

        /* renamed from: s */
        CharSequence[] f2907s;

        /* renamed from: t */
        int f2908t;

        /* renamed from: u */
        int f2909u;

        /* renamed from: v */
        boolean f2910v;

        /* renamed from: w */
        String f2911w;

        /* renamed from: x */
        boolean f2912x;

        /* renamed from: y */
        String f2913y;

        /* renamed from: z */
        boolean f2914z;

        @Deprecated
        public C0574e(Context context) {
            this(context, null);
        }

        public C0574e(Context context, String str) {
            this.f2890b = new ArrayList<>();
            this.f2891c = new ArrayList<>();
            this.f2892d = new ArrayList<>();
            this.f2902n = true;
            this.f2914z = false;
            this.f2871E = 0;
            this.f2872F = 0;
            this.f2878L = 0;
            this.f2882P = 0;
            Notification notification = new Notification();
            this.f2885S = notification;
            this.f2889a = context;
            this.f2877K = str;
            notification.when = System.currentTimeMillis();
            this.f2885S.audioStreamType = -1;
            this.f2901m = 0;
            this.f2888V = new ArrayList<>();
            this.f2883Q = true;
        }

        /* renamed from: d */
        protected static CharSequence m33426d(CharSequence charSequence) {
            if (charSequence == null) {
                return charSequence;
            }
            CharSequence charSequence2 = charSequence;
            if (charSequence.length() > 5120) {
                charSequence2 = charSequence.subSequence(0, 5120);
            }
            return charSequence2;
        }

        /* renamed from: e */
        private Bitmap m33425e(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (bitmap != null) {
                if (Build.VERSION.SDK_INT >= 27) {
                    bitmap2 = bitmap;
                } else {
                    Resources resources = this.f2889a.getResources();
                    int dimensionPixelSize = resources.getDimensionPixelSize(C1519b.compat_notification_large_icon_max_width);
                    int dimensionPixelSize2 = resources.getDimensionPixelSize(C1519b.compat_notification_large_icon_max_height);
                    if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                        return bitmap;
                    }
                    double min = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
                    bitmap2 = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * min), (int) Math.ceil(bitmap.getHeight() * min), true);
                }
            }
            return bitmap2;
        }

        /* renamed from: n */
        private void m33416n(int i, boolean z) {
            if (z) {
                Notification notification = this.f2885S;
                notification.flags = i | notification.flags;
                return;
            }
            Notification notification2 = this.f2885S;
            notification2.flags = (i ^ (-1)) & notification2.flags;
        }

        /* renamed from: A */
        public C0574e m33431A(int i) {
            this.f2872F = i;
            return this;
        }

        /* renamed from: B */
        public C0574e m33430B(long j) {
            this.f2885S.when = j;
            return this;
        }

        /* renamed from: a */
        public C0574e m33429a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f2890b.add(new C0566a(i, charSequence, pendingIntent));
            return this;
        }

        /* renamed from: b */
        public Notification m33428b() {
            return new C0576i(this).m33394c();
        }

        /* renamed from: c */
        public Bundle m33427c() {
            if (this.f2870D == null) {
                this.f2870D = new Bundle();
            }
            return this.f2870D;
        }

        /* renamed from: f */
        public C0574e m33424f(boolean z) {
            m33416n(16, z);
            return this;
        }

        /* renamed from: g */
        public C0574e m33423g(String str) {
            this.f2877K = str;
            return this;
        }

        /* renamed from: h */
        public C0574e m33422h(int i) {
            this.f2871E = i;
            return this;
        }

        /* renamed from: i */
        public C0574e m33421i(PendingIntent pendingIntent) {
            this.f2895g = pendingIntent;
            return this;
        }

        /* renamed from: j */
        public C0574e m33420j(CharSequence charSequence) {
            this.f2894f = m33426d(charSequence);
            return this;
        }

        /* renamed from: k */
        public C0574e m33419k(CharSequence charSequence) {
            this.f2893e = m33426d(charSequence);
            return this;
        }

        /* renamed from: l */
        public C0574e m33418l(int i) {
            Notification notification = this.f2885S;
            notification.defaults = i;
            if ((i & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        /* renamed from: m */
        public C0574e m33417m(PendingIntent pendingIntent) {
            this.f2885S.deleteIntent = pendingIntent;
            return this;
        }

        /* renamed from: o */
        public C0574e m33415o(Bitmap bitmap) {
            this.f2898j = m33425e(bitmap);
            return this;
        }

        /* renamed from: p */
        public C0574e m33414p(int i, int i2, int i3) {
            Notification notification = this.f2885S;
            notification.ledARGB = i;
            notification.ledOnMS = i2;
            notification.ledOffMS = i3;
            notification.flags = ((i2 == 0 || i3 == 0) ? 0 : 1) | (notification.flags & (-2));
            return this;
        }

        /* renamed from: q */
        public C0574e m33413q(boolean z) {
            this.f2914z = z;
            return this;
        }

        /* renamed from: r */
        public C0574e m33412r(int i) {
            this.f2900l = i;
            return this;
        }

        /* renamed from: s */
        public C0574e m33411s(boolean z) {
            m33416n(2, z);
            return this;
        }

        /* renamed from: t */
        public C0574e m33410t(int i) {
            this.f2901m = i;
            return this;
        }

        /* renamed from: u */
        public C0574e m33409u(boolean z) {
            this.f2902n = z;
            return this;
        }

        /* renamed from: v */
        public C0574e m33408v(int i) {
            this.f2885S.icon = i;
            return this;
        }

        /* renamed from: w */
        public C0574e m33407w(Uri uri) {
            Notification notification = this.f2885S;
            notification.sound = uri;
            notification.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        /* renamed from: x */
        public C0574e m33406x(AbstractC0575f abstractC0575f) {
            if (this.f2904p != abstractC0575f) {
                this.f2904p = abstractC0575f;
                if (abstractC0575f != null) {
                    abstractC0575f.m33397g(this);
                }
            }
            return this;
        }

        /* renamed from: y */
        public C0574e m33405y(CharSequence charSequence) {
            this.f2885S.tickerText = m33426d(charSequence);
            return this;
        }

        /* renamed from: z */
        public C0574e m33404z(long[] jArr) {
            this.f2885S.vibrate = jArr;
            return this;
        }
    }

    /* renamed from: androidx.core.app.h$f */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/h$f.class */
    public static abstract class AbstractC0575f {

        /* renamed from: a */
        protected C0574e f2915a;

        /* renamed from: b */
        CharSequence f2916b;

        /* renamed from: c */
        CharSequence f2917c;

        /* renamed from: d */
        boolean f2918d = false;

        /* renamed from: a */
        public void mo33403a(Bundle bundle) {
            if (this.f2918d) {
                bundle.putCharSequence("android.summaryText", this.f2917c);
            }
            CharSequence charSequence = this.f2916b;
            if (charSequence != null) {
                bundle.putCharSequence("android.title.big", charSequence);
            }
            String mo33401c = mo33401c();
            if (mo33401c != null) {
                bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", mo33401c);
            }
        }

        /* renamed from: b */
        public abstract void mo33402b(AbstractC0564g abstractC0564g);

        /* renamed from: c */
        protected abstract String mo33401c();

        /* renamed from: d */
        public RemoteViews m33400d(AbstractC0564g abstractC0564g) {
            return null;
        }

        /* renamed from: e */
        public RemoteViews m33399e(AbstractC0564g abstractC0564g) {
            return null;
        }

        /* renamed from: f */
        public RemoteViews m33398f(AbstractC0564g abstractC0564g) {
            return null;
        }

        /* renamed from: g */
        public void m33397g(C0574e c0574e) {
            if (this.f2915a != c0574e) {
                this.f2915a = c0574e;
                if (c0574e == null) {
                    return;
                }
                c0574e.m33406x(this);
            }
        }
    }

    /* renamed from: a */
    public static Bundle m33451a(Notification notification) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return notification.extras;
        }
        if (i < 16) {
            return null;
        }
        return C0577j.m33386c(notification);
    }
}
