package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.core.C0707a;
import androidx.core.app.C0761k;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.p035d.C0811a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* renamed from: androidx.core.app.g */
/* loaded from: classes-dex2jar.jar:androidx/core/app/g.class */
public final class C0745g {

    /* renamed from: androidx.core.app.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$a.class */
    public static final class C0747a {

        /* renamed from: a */
        final Bundle f3291a;

        /* renamed from: b */
        final C0763l[] f3292b;

        /* renamed from: c */
        final C0763l[] f3293c;

        /* renamed from: d */
        boolean f3294d;

        /* renamed from: e */
        boolean f3295e;

        /* renamed from: f */
        final int f3296f;

        /* renamed from: g */
        final boolean f3297g;
        @Deprecated

        /* renamed from: h */
        public int f3298h;

        /* renamed from: i */
        public CharSequence f3299i;

        /* renamed from: j */
        public PendingIntent f3300j;

        /* renamed from: k */
        private IconCompat f3301k;

        public C0747a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i == 0 ? null : IconCompat.m44370a("", i), charSequence, pendingIntent);
        }

        public C0747a(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, C0763l[] c0763lArr, C0763l[] c0763lArr2, boolean z, int i2, boolean z2, boolean z3) {
            this(i == 0 ? null : IconCompat.m44370a("", i), charSequence, pendingIntent, bundle, c0763lArr, c0763lArr2, z, i2, z2, z3);
        }

        public C0747a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), (C0763l[]) null, (C0763l[]) null, true, 0, true, false);
        }

        C0747a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, C0763l[] c0763lArr, C0763l[] c0763lArr2, boolean z, int i, boolean z2, boolean z3) {
            this.f3295e = true;
            this.f3301k = iconCompat;
            if (iconCompat != null && iconCompat.m44373a() == 2) {
                this.f3298h = iconCompat.m44369b();
            }
            this.f3299i = C0751e.m44565d(charSequence);
            this.f3300j = pendingIntent;
            this.f3291a = bundle == null ? new Bundle() : bundle;
            this.f3292b = c0763lArr;
            this.f3293c = c0763lArr2;
            this.f3294d = z;
            this.f3296f = i;
            this.f3295e = z2;
            this.f3297g = z3;
        }

        /* renamed from: a */
        public final IconCompat m44584a() {
            int i;
            if (this.f3301k == null && (i = this.f3298h) != 0) {
                this.f3301k = IconCompat.m44370a("", i);
            }
            return this.f3301k;
        }
    }

    /* renamed from: androidx.core.app.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$b.class */
    public static final class C0748b extends AbstractC0756i {

        /* renamed from: a */
        public Bitmap f3302a;

        /* renamed from: b */
        public Bitmap f3303b;

        /* renamed from: c */
        public boolean f3304c;

        public C0748b() {
        }

        public C0748b(C0751e c0751e) {
            m44555a(c0751e);
        }

        @Override // androidx.core.app.C0745g.AbstractC0756i
        /* renamed from: a */
        public final void mo44556a(AbstractC0744f abstractC0744f) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigPictureStyle bigPicture = new Notification.BigPictureStyle(abstractC0744f.mo44550a()).setBigContentTitle(this.f3368e).bigPicture(this.f3302a);
                if (this.f3304c) {
                    bigPicture.bigLargeIcon(this.f3303b);
                }
                if (!this.f3370g) {
                    return;
                }
                bigPicture.setSummaryText(this.f3369f);
            }
        }
    }

    /* renamed from: androidx.core.app.g$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$c.class */
    public static final class C0749c extends AbstractC0756i {

        /* renamed from: a */
        private CharSequence f3305a;

        public C0749c() {
        }

        public C0749c(C0751e c0751e) {
            m44555a(c0751e);
        }

        /* renamed from: a */
        public final C0749c m44583a(CharSequence charSequence) {
            this.f3305a = C0751e.m44565d(charSequence);
            return this;
        }

        @Override // androidx.core.app.C0745g.AbstractC0756i
        /* renamed from: a */
        public final void mo44556a(AbstractC0744f abstractC0744f) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigText = new Notification.BigTextStyle(abstractC0744f.mo44550a()).setBigContentTitle(this.f3368e).bigText(this.f3305a);
                if (!this.f3370g) {
                    return;
                }
                bigText.setSummaryText(this.f3369f);
            }
        }
    }

    /* renamed from: androidx.core.app.g$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$d.class */
    public static final class C0750d {

        /* renamed from: a */
        PendingIntent f3306a;

        /* renamed from: b */
        PendingIntent f3307b;

        /* renamed from: c */
        IconCompat f3308c;

        /* renamed from: d */
        int f3309d;

        /* renamed from: e */
        int f3310e;

        /* renamed from: f */
        int f3311f;

        private C0750d(PendingIntent pendingIntent, PendingIntent pendingIntent2, IconCompat iconCompat, int i, int i2, int i3) {
            this.f3306a = pendingIntent;
            this.f3308c = iconCompat;
            this.f3309d = i;
            this.f3310e = i2;
            this.f3307b = pendingIntent2;
            this.f3311f = i3;
        }
    }

    /* renamed from: androidx.core.app.g$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$e.class */
    public static final class C0751e {

        /* renamed from: A */
        public String f3312A;

        /* renamed from: B */
        public Bundle f3313B;

        /* renamed from: C */
        public int f3314C;

        /* renamed from: D */
        public int f3315D;

        /* renamed from: E */
        Notification f3316E;

        /* renamed from: F */
        public RemoteViews f3317F;

        /* renamed from: G */
        public RemoteViews f3318G;

        /* renamed from: H */
        RemoteViews f3319H;

        /* renamed from: I */
        public String f3320I;

        /* renamed from: J */
        int f3321J;

        /* renamed from: K */
        String f3322K;

        /* renamed from: L */
        long f3323L;

        /* renamed from: M */
        int f3324M;

        /* renamed from: N */
        boolean f3325N;

        /* renamed from: O */
        C0750d f3326O;

        /* renamed from: P */
        public Notification f3327P;

        /* renamed from: Q */
        public boolean f3328Q;
        @Deprecated

        /* renamed from: R */
        public ArrayList<String> f3329R;

        /* renamed from: a */
        public Context f3330a;

        /* renamed from: b */
        public ArrayList<C0747a> f3331b;

        /* renamed from: c */
        ArrayList<C0747a> f3332c;

        /* renamed from: d */
        CharSequence f3333d;

        /* renamed from: e */
        CharSequence f3334e;

        /* renamed from: f */
        public PendingIntent f3335f;

        /* renamed from: g */
        PendingIntent f3336g;

        /* renamed from: h */
        RemoteViews f3337h;

        /* renamed from: i */
        Bitmap f3338i;

        /* renamed from: j */
        CharSequence f3339j;

        /* renamed from: k */
        public int f3340k;

        /* renamed from: l */
        public int f3341l;

        /* renamed from: m */
        public boolean f3342m;

        /* renamed from: n */
        boolean f3343n;

        /* renamed from: o */
        AbstractC0756i f3344o;

        /* renamed from: p */
        CharSequence f3345p;

        /* renamed from: q */
        CharSequence[] f3346q;

        /* renamed from: r */
        public int f3347r;

        /* renamed from: s */
        public int f3348s;

        /* renamed from: t */
        public boolean f3349t;

        /* renamed from: u */
        public String f3350u;

        /* renamed from: v */
        boolean f3351v;

        /* renamed from: w */
        String f3352w;

        /* renamed from: x */
        public boolean f3353x;

        /* renamed from: y */
        boolean f3354y;

        /* renamed from: z */
        boolean f3355z;

        @Deprecated
        public C0751e(Context context) {
            this(context, null);
        }

        public C0751e(Context context, String str) {
            this.f3331b = new ArrayList<>();
            this.f3332c = new ArrayList<>();
            this.f3342m = true;
            this.f3353x = false;
            this.f3314C = 0;
            this.f3315D = 0;
            this.f3321J = 0;
            this.f3324M = 0;
            Notification notification = new Notification();
            this.f3327P = notification;
            this.f3330a = context;
            this.f3320I = str;
            notification.when = System.currentTimeMillis();
            this.f3327P.audioStreamType = -1;
            this.f3341l = 0;
            this.f3329R = new ArrayList<>();
            this.f3325N = true;
        }

        /* renamed from: d */
        protected static CharSequence m44565d(CharSequence charSequence) {
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
        public final Bundle m44582a() {
            if (this.f3313B == null) {
                this.f3313B = new Bundle();
            }
            return this.f3313B;
        }

        /* renamed from: a */
        public final C0751e m44581a(int i) {
            this.f3327P.icon = i;
            return this;
        }

        /* renamed from: a */
        public final C0751e m44580a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f3331b.add(new C0747a(i, charSequence, pendingIntent));
            return this;
        }

        /* renamed from: a */
        public final C0751e m44578a(long j) {
            this.f3327P.when = j;
            return this;
        }

        /* renamed from: a */
        public final C0751e m44577a(PendingIntent pendingIntent) {
            this.f3327P.deleteIntent = pendingIntent;
            return this;
        }

        /* renamed from: a */
        public final C0751e m44576a(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (bitmap != null) {
                if (Build.VERSION.SDK_INT >= 27) {
                    bitmap2 = bitmap;
                } else {
                    Resources resources = this.f3330a.getResources();
                    int dimensionPixelSize = resources.getDimensionPixelSize(C0707a.C0709b.compat_notification_large_icon_max_width);
                    int dimensionPixelSize2 = resources.getDimensionPixelSize(C0707a.C0709b.compat_notification_large_icon_max_height);
                    if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                        double min = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
                        bitmap2 = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * min), (int) Math.ceil(bitmap.getHeight() * min), true);
                    } else {
                        bitmap2 = bitmap;
                    }
                }
            }
            this.f3338i = bitmap2;
            return this;
        }

        /* renamed from: a */
        public final C0751e m44575a(Uri uri) {
            this.f3327P.sound = uri;
            this.f3327P.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f3327P.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        /* renamed from: a */
        public final C0751e m44574a(C0747a c0747a) {
            this.f3331b.add(c0747a);
            return this;
        }

        /* renamed from: a */
        public final C0751e m44573a(AbstractC0752f abstractC0752f) {
            abstractC0752f.mo44552a(this);
            return this;
        }

        /* renamed from: a */
        public final C0751e m44572a(AbstractC0756i abstractC0756i) {
            if (this.f3344o != abstractC0756i) {
                this.f3344o = abstractC0756i;
                if (abstractC0756i != null) {
                    abstractC0756i.m44555a(this);
                }
            }
            return this;
        }

        /* renamed from: a */
        public final C0751e m44571a(CharSequence charSequence) {
            this.f3333d = m44565d(charSequence);
            return this;
        }

        /* renamed from: a */
        public final C0751e m44570a(boolean z) {
            m44579a(16, z);
            return this;
        }

        /* renamed from: a */
        public final void m44579a(int i, boolean z) {
            if (z) {
                Notification notification = this.f3327P;
                notification.flags = i | notification.flags;
                return;
            }
            Notification notification2 = this.f3327P;
            notification2.flags = (i ^ (-1)) & notification2.flags;
        }

        /* renamed from: b */
        public final Notification m44569b() {
            Notification notification;
            Bundle m44586a;
            C0758h c0758h = new C0758h(this);
            AbstractC0756i abstractC0756i = c0758h.f3386b.f3344o;
            if (abstractC0756i != null) {
                abstractC0756i.mo44556a(c0758h);
            }
            if (Build.VERSION.SDK_INT >= 26) {
                notification = c0758h.f3385a.build();
            } else if (Build.VERSION.SDK_INT >= 24) {
                Notification build = c0758h.f3385a.build();
                notification = build;
                if (c0758h.f3391g != 0) {
                    if (build.getGroup() != null && (build.flags & 512) != 0 && c0758h.f3391g == 2) {
                        C0758h.m44549a(build);
                    }
                    notification = build;
                    if (build.getGroup() != null) {
                        notification = build;
                        if ((build.flags & 512) == 0) {
                            notification = build;
                            if (c0758h.f3391g == 1) {
                                C0758h.m44549a(build);
                                notification = build;
                            }
                        }
                    }
                }
            } else if (Build.VERSION.SDK_INT >= 21) {
                c0758h.f3385a.setExtras(c0758h.f3390f);
                Notification build2 = c0758h.f3385a.build();
                if (c0758h.f3387c != null) {
                    build2.contentView = c0758h.f3387c;
                }
                if (c0758h.f3388d != null) {
                    build2.bigContentView = c0758h.f3388d;
                }
                if (c0758h.f3392h != null) {
                    build2.headsUpContentView = c0758h.f3392h;
                }
                notification = build2;
                if (c0758h.f3391g != 0) {
                    if (build2.getGroup() != null && (build2.flags & 512) != 0 && c0758h.f3391g == 2) {
                        C0758h.m44549a(build2);
                    }
                    notification = build2;
                    if (build2.getGroup() != null) {
                        notification = build2;
                        if ((build2.flags & 512) == 0) {
                            notification = build2;
                            if (c0758h.f3391g == 1) {
                                C0758h.m44549a(build2);
                                notification = build2;
                            }
                        }
                    }
                }
            } else if (Build.VERSION.SDK_INT >= 20) {
                c0758h.f3385a.setExtras(c0758h.f3390f);
                Notification build3 = c0758h.f3385a.build();
                if (c0758h.f3387c != null) {
                    build3.contentView = c0758h.f3387c;
                }
                if (c0758h.f3388d != null) {
                    build3.bigContentView = c0758h.f3388d;
                }
                notification = build3;
                if (c0758h.f3391g != 0) {
                    if (build3.getGroup() != null && (build3.flags & 512) != 0 && c0758h.f3391g == 2) {
                        C0758h.m44549a(build3);
                    }
                    notification = build3;
                    if (build3.getGroup() != null) {
                        notification = build3;
                        if ((build3.flags & 512) == 0) {
                            notification = build3;
                            if (c0758h.f3391g == 1) {
                                C0758h.m44549a(build3);
                                notification = build3;
                            }
                        }
                    }
                }
            } else if (Build.VERSION.SDK_INT >= 19) {
                SparseArray<Bundle> m44542a = C0759i.m44542a(c0758h.f3389e);
                if (m44542a != null) {
                    c0758h.f3390f.putSparseParcelableArray("android.support.actionExtras", m44542a);
                }
                c0758h.f3385a.setExtras(c0758h.f3390f);
                Notification build4 = c0758h.f3385a.build();
                if (c0758h.f3387c != null) {
                    build4.contentView = c0758h.f3387c;
                }
                notification = build4;
                if (c0758h.f3388d != null) {
                    build4.bigContentView = c0758h.f3388d;
                    notification = build4;
                }
            } else if (Build.VERSION.SDK_INT >= 16) {
                Notification build5 = c0758h.f3385a.build();
                Bundle m44586a2 = C0745g.m44586a(build5);
                Bundle bundle = new Bundle(c0758h.f3390f);
                for (String str : c0758h.f3390f.keySet()) {
                    if (m44586a2.containsKey(str)) {
                        bundle.remove(str);
                    }
                }
                m44586a2.putAll(bundle);
                SparseArray<Bundle> m44542a2 = C0759i.m44542a(c0758h.f3389e);
                if (m44542a2 != null) {
                    C0745g.m44586a(build5).putSparseParcelableArray("android.support.actionExtras", m44542a2);
                }
                if (c0758h.f3387c != null) {
                    build5.contentView = c0758h.f3387c;
                }
                notification = build5;
                if (c0758h.f3388d != null) {
                    build5.bigContentView = c0758h.f3388d;
                    notification = build5;
                }
            } else {
                notification = c0758h.f3385a.getNotification();
            }
            if (c0758h.f3386b.f3317F != null) {
                notification.contentView = c0758h.f3386b.f3317F;
            }
            int i = Build.VERSION.SDK_INT;
            int i2 = Build.VERSION.SDK_INT;
            if (Build.VERSION.SDK_INT >= 16 && abstractC0756i != null && (m44586a = C0745g.m44586a(notification)) != null) {
                abstractC0756i.mo44557a(m44586a);
            }
            return notification;
        }

        /* renamed from: b */
        public final C0751e m44568b(int i) {
            this.f3327P.defaults = i;
            if ((i & 4) != 0) {
                this.f3327P.flags |= 1;
            }
            return this;
        }

        /* renamed from: b */
        public final C0751e m44567b(CharSequence charSequence) {
            this.f3334e = m44565d(charSequence);
            return this;
        }

        /* renamed from: c */
        public final C0751e m44566c(CharSequence charSequence) {
            this.f3327P.tickerText = m44565d(charSequence);
            return this;
        }
    }

    /* renamed from: androidx.core.app.g$f */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$f.class */
    public interface AbstractC0752f {
        /* renamed from: a */
        C0751e mo44552a(C0751e c0751e);
    }

    /* renamed from: androidx.core.app.g$g */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$g.class */
    public static final class C0753g extends AbstractC0756i {

        /* renamed from: a */
        private ArrayList<CharSequence> f3356a = new ArrayList<>();

        public C0753g() {
        }

        public C0753g(C0751e c0751e) {
            m44555a(c0751e);
        }

        /* renamed from: a */
        public final C0753g m44564a(CharSequence charSequence) {
            this.f3368e = C0751e.m44565d(charSequence);
            return this;
        }

        @Override // androidx.core.app.C0745g.AbstractC0756i
        /* renamed from: a */
        public final void mo44556a(AbstractC0744f abstractC0744f) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(abstractC0744f.mo44550a()).setBigContentTitle(this.f3368e);
                if (this.f3370g) {
                    bigContentTitle.setSummaryText(this.f3369f);
                }
                Iterator<CharSequence> it2 = this.f3356a.iterator();
                while (it2.hasNext()) {
                    bigContentTitle.addLine(it2.next());
                }
            }
        }

        /* renamed from: b */
        public final C0753g m44563b(CharSequence charSequence) {
            this.f3356a.add(C0751e.m44565d(charSequence));
            return this;
        }
    }

    /* renamed from: androidx.core.app.g$h */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$h.class */
    public static final class C0754h extends AbstractC0756i {

        /* renamed from: a */
        public final List<C0755a> f3357a = new ArrayList();

        /* renamed from: b */
        private C0761k f3358b;

        /* renamed from: c */
        private CharSequence f3359c;

        /* renamed from: h */
        private Boolean f3360h;

        /* renamed from: androidx.core.app.g$h$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/app/g$h$a.class */
        public static final class C0755a {

            /* renamed from: a */
            final CharSequence f3361a;

            /* renamed from: b */
            final long f3362b;

            /* renamed from: c */
            final C0761k f3363c;

            /* renamed from: d */
            Bundle f3364d;

            /* renamed from: e */
            String f3365e;

            /* renamed from: f */
            Uri f3366f;

            public C0755a(CharSequence charSequence, long j, C0761k c0761k) {
                this.f3364d = new Bundle();
                this.f3361a = charSequence;
                this.f3362b = j;
                this.f3363c = c0761k;
            }

            /* JADX WARN: Illegal instructions before constructor call */
            @java.lang.Deprecated
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public C0755a(java.lang.CharSequence r7, long r8, java.lang.CharSequence r10) {
                /*
                    r6 = this;
                    androidx.core.app.k$a r0 = new androidx.core.app.k$a
                    r1 = r0
                    r1.<init>()
                    r11 = r0
                    r0 = r11
                    r1 = r10
                    r0.f3408a = r1
                    r0 = r6
                    r1 = r7
                    r2 = r8
                    r3 = r11
                    androidx.core.app.k r3 = r3.m44535a()
                    r0.<init>(r1, r2, r3)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.C0745g.C0754h.C0755a.<init>(java.lang.CharSequence, long, java.lang.CharSequence):void");
            }
        }

        private C0754h() {
        }

        public C0754h(C0761k c0761k) {
            if (!TextUtils.isEmpty(c0761k.f3402a)) {
                this.f3358b = c0761k;
                return;
            }
            throw new IllegalArgumentException("User's name must not be empty.");
        }

        @Deprecated
        public C0754h(CharSequence charSequence) {
            C0761k.C0762a c0762a = new C0761k.C0762a();
            c0762a.f3408a = charSequence;
            this.f3358b = c0762a.m44535a();
        }

        /* renamed from: a */
        private static TextAppearanceSpan m44561a(int i) {
            return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i), null);
        }

        /* renamed from: a */
        private C0755a m44562a() {
            for (int size = this.f3357a.size() - 1; size >= 0; size--) {
                C0755a c0755a = this.f3357a.get(size);
                if (c0755a.f3363c != null && !TextUtils.isEmpty(c0755a.f3363c.f3402a)) {
                    return c0755a;
                }
            }
            if (!this.f3357a.isEmpty()) {
                List<C0755a> list = this.f3357a;
                return list.get(list.size() - 1);
            }
            return null;
        }

        /* renamed from: a */
        private CharSequence m44560a(C0755a c0755a) {
            C0811a m44449a = C0811a.m44449a();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            boolean z = Build.VERSION.SDK_INT >= 21;
            int i = z ? -16777216 : -1;
            String str = c0755a.f3363c == null ? "" : c0755a.f3363c.f3402a;
            int i2 = i;
            CharSequence charSequence = str;
            if (TextUtils.isEmpty(str)) {
                CharSequence charSequence2 = this.f3358b.f3402a;
                i2 = i;
                charSequence = charSequence2;
                if (z) {
                    i2 = i;
                    charSequence = charSequence2;
                    if (this.f3367d.f3314C != 0) {
                        i2 = this.f3367d.f3314C;
                        charSequence = charSequence2;
                    }
                }
            }
            CharSequence m44448a = m44449a.m44448a(charSequence);
            spannableStringBuilder.append(m44448a);
            spannableStringBuilder.setSpan(m44561a(i2), spannableStringBuilder.length() - m44448a.length(), spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) "  ").append(m44449a.m44448a(c0755a.f3361a == null ? "" : c0755a.f3361a));
            return spannableStringBuilder;
        }

        /* renamed from: b */
        private boolean m44558b() {
            for (int size = this.f3357a.size() - 1; size >= 0; size--) {
                C0755a c0755a = this.f3357a.get(size);
                if (c0755a.f3363c != null && c0755a.f3363c.f3402a == null) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: a */
        public final C0754h m44559a(boolean z) {
            this.f3360h = Boolean.valueOf(z);
            return this;
        }

        @Override // androidx.core.app.C0745g.AbstractC0756i
        /* renamed from: a */
        public final void mo44557a(Bundle bundle) {
            super.mo44557a(bundle);
            bundle.putCharSequence("android.selfDisplayName", this.f3358b.f3402a);
            bundle.putBundle("android.messagingStyleUser", this.f3358b.m44537a());
            bundle.putCharSequence("android.hiddenConversationTitle", this.f3359c);
            if (this.f3359c != null && this.f3360h.booleanValue()) {
                bundle.putCharSequence("android.conversationTitle", this.f3359c);
            }
            if (!this.f3357a.isEmpty()) {
                List<C0755a> list = this.f3357a;
                Parcelable[] parcelableArr = new Bundle[list.size()];
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    C0755a c0755a = list.get(i);
                    Bundle bundle2 = new Bundle();
                    if (c0755a.f3361a != null) {
                        bundle2.putCharSequence("text", c0755a.f3361a);
                    }
                    bundle2.putLong("time", c0755a.f3362b);
                    if (c0755a.f3363c != null) {
                        bundle2.putCharSequence("sender", c0755a.f3363c.f3402a);
                        if (Build.VERSION.SDK_INT >= 28) {
                            bundle2.putParcelable("sender_person", c0755a.f3363c.m44536b());
                        } else {
                            bundle2.putBundle("person", c0755a.f3363c.m44537a());
                        }
                    }
                    if (c0755a.f3365e != null) {
                        bundle2.putString("type", c0755a.f3365e);
                    }
                    if (c0755a.f3366f != null) {
                        bundle2.putParcelable("uri", c0755a.f3366f);
                    }
                    if (c0755a.f3364d != null) {
                        bundle2.putBundle("extras", c0755a.f3364d);
                    }
                    parcelableArr[i] = bundle2;
                }
                bundle.putParcelableArray("android.messages", parcelableArr);
            }
            Boolean bool = this.f3360h;
            if (bool != null) {
                bundle.putBoolean("android.isGroupConversation", bool.booleanValue());
            }
        }

        @Override // androidx.core.app.C0745g.AbstractC0756i
        /* renamed from: a */
        public final void mo44556a(AbstractC0744f abstractC0744f) {
            boolean z;
            Notification.MessagingStyle.Message message;
            if (this.f3367d == null || this.f3367d.f3330a.getApplicationInfo().targetSdkVersion >= 28 || this.f3360h != null) {
                Boolean bool = this.f3360h;
                if (bool != null) {
                    z = bool.booleanValue();
                }
                z = false;
            } else {
                if (this.f3359c != null) {
                    z = true;
                }
                z = false;
            }
            m44559a(z);
            if (Build.VERSION.SDK_INT >= 24) {
                Notification.MessagingStyle messagingStyle = Build.VERSION.SDK_INT >= 28 ? new Notification.MessagingStyle(this.f3358b.m44536b()) : new Notification.MessagingStyle(this.f3358b.f3402a);
                if (this.f3360h.booleanValue() || Build.VERSION.SDK_INT >= 28) {
                    messagingStyle.setConversationTitle(this.f3359c);
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    messagingStyle.setGroupConversation(this.f3360h.booleanValue());
                }
                for (C0755a c0755a : this.f3357a) {
                    if (Build.VERSION.SDK_INT >= 28) {
                        C0761k c0761k = c0755a.f3363c;
                        message = new Notification.MessagingStyle.Message(c0755a.f3361a, c0755a.f3362b, c0761k == null ? null : c0761k.m44536b());
                    } else {
                        message = new Notification.MessagingStyle.Message(c0755a.f3361a, c0755a.f3362b, c0755a.f3363c != null ? c0755a.f3363c.f3402a : null);
                    }
                    if (c0755a.f3365e != null) {
                        message.setData(c0755a.f3365e, c0755a.f3366f);
                    }
                    messagingStyle.addMessage(message);
                }
                messagingStyle.setBuilder(abstractC0744f.mo44550a());
                return;
            }
            C0755a m44562a = m44562a();
            if (this.f3359c != null && this.f3360h.booleanValue()) {
                abstractC0744f.mo44550a().setContentTitle(this.f3359c);
            } else if (m44562a != null) {
                abstractC0744f.mo44550a().setContentTitle("");
                if (m44562a.f3363c != null) {
                    abstractC0744f.mo44550a().setContentTitle(m44562a.f3363c.f3402a);
                }
            }
            if (m44562a != null) {
                abstractC0744f.mo44550a().setContentText(this.f3359c != null ? m44560a(m44562a) : m44562a.f3361a);
            }
            if (Build.VERSION.SDK_INT < 16) {
                return;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            boolean z2 = this.f3359c != null || m44558b();
            for (int size = this.f3357a.size() - 1; size >= 0; size--) {
                C0755a c0755a2 = this.f3357a.get(size);
                CharSequence m44560a = z2 ? m44560a(c0755a2) : c0755a2.f3361a;
                if (size != this.f3357a.size() - 1) {
                    spannableStringBuilder.insert(0, (CharSequence) StringUtils.f67179LF);
                }
                spannableStringBuilder.insert(0, m44560a);
            }
            new Notification.BigTextStyle(abstractC0744f.mo44550a()).setBigContentTitle(null).bigText(spannableStringBuilder);
        }
    }

    /* renamed from: androidx.core.app.g$i */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$i.class */
    public static abstract class AbstractC0756i {

        /* renamed from: d */
        protected C0751e f3367d;

        /* renamed from: e */
        CharSequence f3368e;

        /* renamed from: f */
        CharSequence f3369f;

        /* renamed from: g */
        boolean f3370g = false;

        /* renamed from: a */
        public void mo44557a(Bundle bundle) {
        }

        /* renamed from: a */
        public void mo44556a(AbstractC0744f abstractC0744f) {
        }

        /* renamed from: a */
        public final void m44555a(C0751e c0751e) {
            if (this.f3367d != c0751e) {
                this.f3367d = c0751e;
                if (c0751e == null) {
                    return;
                }
                c0751e.m44572a(this);
            }
        }
    }

    /* renamed from: androidx.core.app.g$j */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$j.class */
    public static final class C0757j implements AbstractC0752f {

        /* renamed from: a */
        public Bitmap f3371a;

        /* renamed from: b */
        private ArrayList<C0747a> f3372b;

        /* renamed from: c */
        private int f3373c;

        /* renamed from: d */
        private PendingIntent f3374d;

        /* renamed from: e */
        private ArrayList<Notification> f3375e;

        /* renamed from: f */
        private int f3376f;

        /* renamed from: g */
        private int f3377g;

        /* renamed from: h */
        private int f3378h;

        /* renamed from: i */
        private int f3379i;

        /* renamed from: j */
        private int f3380j;

        /* renamed from: k */
        private int f3381k;

        /* renamed from: l */
        private int f3382l;

        /* renamed from: m */
        private String f3383m;

        /* renamed from: n */
        private String f3384n;

        public C0757j() {
            this.f3372b = new ArrayList<>();
            this.f3373c = 1;
            this.f3375e = new ArrayList<>();
            this.f3377g = 8388613;
            this.f3378h = -1;
            this.f3379i = 0;
            this.f3381k = 80;
        }

        public C0757j(Notification notification) {
            this.f3372b = new ArrayList<>();
            this.f3373c = 1;
            this.f3375e = new ArrayList<>();
            this.f3377g = 8388613;
            this.f3378h = -1;
            this.f3379i = 0;
            this.f3381k = 80;
            Bundle m44586a = C0745g.m44586a(notification);
            Bundle bundle = m44586a != null ? m44586a.getBundle("android.wearable.EXTENSIONS") : null;
            if (bundle != null) {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("actions");
                if (Build.VERSION.SDK_INT >= 16 && parcelableArrayList != null) {
                    int size = parcelableArrayList.size();
                    C0747a[] c0747aArr = new C0747a[size];
                    for (int i = 0; i < size; i++) {
                        if (Build.VERSION.SDK_INT >= 20) {
                            c0747aArr[i] = C0745g.m44587a((Notification.Action) parcelableArrayList.get(i));
                        } else if (Build.VERSION.SDK_INT >= 16) {
                            c0747aArr[i] = C0759i.m44545a((Bundle) parcelableArrayList.get(i));
                        }
                    }
                    Collections.addAll(this.f3372b, c0747aArr);
                }
                this.f3373c = bundle.getInt("flags", 1);
                this.f3374d = (PendingIntent) bundle.getParcelable("displayIntent");
                Notification[] m44585a = C0745g.m44585a(bundle, "pages");
                if (m44585a != null) {
                    Collections.addAll(this.f3375e, m44585a);
                }
                this.f3371a = (Bitmap) bundle.getParcelable("background");
                this.f3376f = bundle.getInt("contentIcon");
                this.f3377g = bundle.getInt("contentIconGravity", 8388613);
                this.f3378h = bundle.getInt("contentActionIndex", -1);
                this.f3379i = bundle.getInt("customSizePreset", 0);
                this.f3380j = bundle.getInt("customContentHeight");
                this.f3381k = bundle.getInt("gravity", 80);
                this.f3382l = bundle.getInt("hintScreenTimeout");
                this.f3383m = bundle.getString("dismissalId");
                this.f3384n = bundle.getString("bridgeTag");
            }
        }

        /* renamed from: a */
        private static Notification.Action m44553a(C0747a c0747a) {
            Notification.Action.Builder builder;
            if (Build.VERSION.SDK_INT >= 23) {
                IconCompat m44584a = c0747a.m44584a();
                builder = new Notification.Action.Builder(m44584a == null ? null : m44584a.m44366c(), c0747a.f3299i, c0747a.f3300j);
            } else {
                IconCompat m44584a2 = c0747a.m44584a();
                builder = new Notification.Action.Builder((m44584a2 == null || m44584a2.m44373a() != 2) ? 0 : m44584a2.m44369b(), c0747a.f3299i, c0747a.f3300j);
            }
            Bundle bundle = c0747a.f3291a != null ? new Bundle(c0747a.f3291a) : new Bundle();
            bundle.putBoolean("android.support.allowGeneratedReplies", c0747a.f3294d);
            if (Build.VERSION.SDK_INT >= 24) {
                builder.setAllowGeneratedReplies(c0747a.f3294d);
            }
            builder.addExtras(bundle);
            C0763l[] c0763lArr = c0747a.f3292b;
            if (c0763lArr != null) {
                for (RemoteInput remoteInput : C0763l.m44534a(c0763lArr)) {
                    builder.addRemoteInput(remoteInput);
                }
            }
            return builder.build();
        }

        @Override // androidx.core.app.C0745g.AbstractC0752f
        /* renamed from: a */
        public final C0751e mo44552a(C0751e c0751e) {
            Bundle bundle = new Bundle();
            if (!this.f3372b.isEmpty()) {
                if (Build.VERSION.SDK_INT >= 16) {
                    ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f3372b.size());
                    Iterator<C0747a> it2 = this.f3372b.iterator();
                    while (it2.hasNext()) {
                        C0747a next = it2.next();
                        if (Build.VERSION.SDK_INT >= 20) {
                            arrayList.add(m44553a(next));
                        } else if (Build.VERSION.SDK_INT >= 16) {
                            arrayList.add(C0759i.m44543a(next));
                        }
                    }
                    bundle.putParcelableArrayList("actions", arrayList);
                } else {
                    bundle.putParcelableArrayList("actions", null);
                }
            }
            int i = this.f3373c;
            if (i != 1) {
                bundle.putInt("flags", i);
            }
            PendingIntent pendingIntent = this.f3374d;
            if (pendingIntent != null) {
                bundle.putParcelable("displayIntent", pendingIntent);
            }
            if (!this.f3375e.isEmpty()) {
                ArrayList<Notification> arrayList2 = this.f3375e;
                bundle.putParcelableArray("pages", (Parcelable[]) arrayList2.toArray(new Notification[arrayList2.size()]));
            }
            Bitmap bitmap = this.f3371a;
            if (bitmap != null) {
                bundle.putParcelable("background", bitmap);
            }
            int i2 = this.f3376f;
            if (i2 != 0) {
                bundle.putInt("contentIcon", i2);
            }
            int i3 = this.f3377g;
            if (i3 != 8388613) {
                bundle.putInt("contentIconGravity", i3);
            }
            int i4 = this.f3378h;
            if (i4 != -1) {
                bundle.putInt("contentActionIndex", i4);
            }
            int i5 = this.f3379i;
            if (i5 != 0) {
                bundle.putInt("customSizePreset", i5);
            }
            int i6 = this.f3380j;
            if (i6 != 0) {
                bundle.putInt("customContentHeight", i6);
            }
            int i7 = this.f3381k;
            if (i7 != 80) {
                bundle.putInt("gravity", i7);
            }
            int i8 = this.f3382l;
            if (i8 != 0) {
                bundle.putInt("hintScreenTimeout", i8);
            }
            String str = this.f3383m;
            if (str != null) {
                bundle.putString("dismissalId", str);
            }
            String str2 = this.f3384n;
            if (str2 != null) {
                bundle.putString("bridgeTag", str2);
            }
            c0751e.m44582a().putBundle("android.wearable.EXTENSIONS", bundle);
            return c0751e;
        }

        @Deprecated
        /* renamed from: a */
        public final C0757j m44554a() {
            this.f3376f = 2131689478;
            return this;
        }

        /* renamed from: a */
        public final C0757j m44551a(List<C0747a> list) {
            this.f3372b.addAll(list);
            return this;
        }

        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            C0757j c0757j = new C0757j();
            c0757j.f3372b = new ArrayList<>(this.f3372b);
            c0757j.f3373c = this.f3373c;
            c0757j.f3374d = this.f3374d;
            c0757j.f3375e = new ArrayList<>(this.f3375e);
            c0757j.f3371a = this.f3371a;
            c0757j.f3376f = this.f3376f;
            c0757j.f3377g = this.f3377g;
            c0757j.f3378h = this.f3378h;
            c0757j.f3379i = this.f3379i;
            c0757j.f3380j = this.f3380j;
            c0757j.f3381k = this.f3381k;
            c0757j.f3382l = this.f3382l;
            c0757j.f3383m = this.f3383m;
            c0757j.f3384n = this.f3384n;
            return c0757j;
        }
    }

    /* renamed from: a */
    public static Bundle m44586a(Notification notification) {
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras;
        }
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        return C0759i.m44546a(notification);
    }

    /* renamed from: a */
    static C0747a m44587a(Notification.Action action) {
        C0763l[] c0763lArr;
        RemoteInput[] remoteInputs = action.getRemoteInputs();
        IconCompat iconCompat = null;
        if (remoteInputs == null) {
            c0763lArr = null;
        } else {
            c0763lArr = new C0763l[remoteInputs.length];
            for (int i = 0; i < remoteInputs.length; i++) {
                RemoteInput remoteInput = remoteInputs[i];
                c0763lArr[i] = new C0763l(remoteInput.getResultKey(), remoteInput.getLabel(), remoteInput.getChoices(), remoteInput.getAllowFreeFormInput(), Build.VERSION.SDK_INT >= 29 ? remoteInput.getEditChoicesBeforeSending() : 0, remoteInput.getExtras(), null);
            }
        }
        boolean z = Build.VERSION.SDK_INT >= 24 ? action.getExtras().getBoolean("android.support.allowGeneratedReplies") || action.getAllowGeneratedReplies() : action.getExtras().getBoolean("android.support.allowGeneratedReplies");
        boolean z2 = action.getExtras().getBoolean("android.support.action.showsUserInterface", true);
        int semanticAction = Build.VERSION.SDK_INT >= 28 ? action.getSemanticAction() : action.getExtras().getInt("android.support.action.semanticAction", 0);
        boolean isContextual = Build.VERSION.SDK_INT >= 29 ? action.isContextual() : false;
        if (Build.VERSION.SDK_INT >= 23) {
            if (action.getIcon() == null && action.icon != 0) {
                return new C0747a(action.icon, action.title, action.actionIntent, action.getExtras(), c0763lArr, (C0763l[]) null, z, semanticAction, z2, isContextual);
            }
            if (action.getIcon() != null) {
                iconCompat = IconCompat.m44371a(action.getIcon());
            }
            return new C0747a(iconCompat, action.title, action.actionIntent, action.getExtras(), c0763lArr, (C0763l[]) null, z, semanticAction, z2, isContextual);
        }
        return new C0747a(action.icon, action.title, action.actionIntent, action.getExtras(), c0763lArr, (C0763l[]) null, z, semanticAction, z2, isContextual);
    }

    /* renamed from: a */
    static Notification[] m44585a(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Notification[]) || parcelableArray == null) {
            return (Notification[]) parcelableArray;
        }
        Notification[] notificationArr = new Notification[parcelableArray.length];
        for (int i = 0; i < parcelableArray.length; i++) {
            notificationArr[i] = (Notification) parcelableArray[i];
        }
        bundle.putParcelableArray(str, notificationArr);
        return notificationArr;
    }
}
