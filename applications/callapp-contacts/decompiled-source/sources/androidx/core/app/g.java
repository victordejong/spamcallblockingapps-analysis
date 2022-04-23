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
import androidx.core.a;
import androidx.core.app.k;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:androidx/core/app/g.class */
public final class g {

    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Bundle f1724a;

        /* renamed from: b  reason: collision with root package name */
        final l[] f1725b;

        /* renamed from: c  reason: collision with root package name */
        final l[] f1726c;

        /* renamed from: d  reason: collision with root package name */
        boolean f1727d;
        boolean e;
        final int f;
        final boolean g;
        @Deprecated
        public int h;
        public CharSequence i;
        public PendingIntent j;
        private IconCompat k;

        public a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i == 0 ? null : IconCompat.a("", i), charSequence, pendingIntent);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, l[] lVarArr, l[] lVarArr2, boolean z, int i2, boolean z2, boolean z3) {
            this(i == 0 ? null : IconCompat.a("", i), charSequence, pendingIntent, bundle, lVarArr, lVarArr2, z, i2, z2, z3);
        }

        public a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), (l[]) null, (l[]) null, true, 0, true, false);
        }

        a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, l[] lVarArr, l[] lVarArr2, boolean z, int i, boolean z2, boolean z3) {
            this.e = true;
            this.k = iconCompat;
            if (iconCompat != null && iconCompat.a() == 2) {
                this.h = iconCompat.b();
            }
            this.i = e.d(charSequence);
            this.j = pendingIntent;
            this.f1724a = bundle == null ? new Bundle() : bundle;
            this.f1725b = lVarArr;
            this.f1726c = lVarArr2;
            this.f1727d = z;
            this.f = i;
            this.e = z2;
            this.g = z3;
        }

        public final IconCompat a() {
            int i;
            if (this.k == null && (i = this.h) != 0) {
                this.k = IconCompat.a("", i);
            }
            return this.k;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$b.class */
    public static final class b extends i {

        /* renamed from: a  reason: collision with root package name */
        public Bitmap f1728a;

        /* renamed from: b  reason: collision with root package name */
        public Bitmap f1729b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f1730c;

        public b() {
        }

        public b(e eVar) {
            a(eVar);
        }

        @Override // androidx.core.app.g.i
        public final void a(androidx.core.app.f fVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigPictureStyle bigPicture = new Notification.BigPictureStyle(fVar.a()).setBigContentTitle(this.e).bigPicture(this.f1728a);
                if (this.f1730c) {
                    bigPicture.bigLargeIcon(this.f1729b);
                }
                if (this.g) {
                    bigPicture.setSummaryText(this.f);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$c.class */
    public static final class c extends i {

        /* renamed from: a  reason: collision with root package name */
        private CharSequence f1731a;

        public c() {
        }

        public c(e eVar) {
            a(eVar);
        }

        public final c a(CharSequence charSequence) {
            this.f1731a = e.d(charSequence);
            return this;
        }

        @Override // androidx.core.app.g.i
        public final void a(androidx.core.app.f fVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigText = new Notification.BigTextStyle(fVar.a()).setBigContentTitle(this.e).bigText(this.f1731a);
                if (this.g) {
                    bigText.setSummaryText(this.f);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        PendingIntent f1732a;

        /* renamed from: b  reason: collision with root package name */
        PendingIntent f1733b;

        /* renamed from: c  reason: collision with root package name */
        IconCompat f1734c;

        /* renamed from: d  reason: collision with root package name */
        int f1735d;
        int e;
        int f;

        private d(PendingIntent pendingIntent, PendingIntent pendingIntent2, IconCompat iconCompat, int i, int i2, int i3) {
            this.f1732a = pendingIntent;
            this.f1734c = iconCompat;
            this.f1735d = i;
            this.e = i2;
            this.f1733b = pendingIntent2;
            this.f = i3;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$e.class */
    public static final class e {
        public String A;
        public Bundle B;
        public int C;
        public int D;
        Notification E;
        public RemoteViews F;
        public RemoteViews G;
        RemoteViews H;
        public String I;
        int J;
        String K;
        long L;
        int M;
        boolean N;
        d O;
        public Notification P;
        public boolean Q;
        @Deprecated
        public ArrayList<String> R;

        /* renamed from: a  reason: collision with root package name */
        public Context f1736a;

        /* renamed from: b  reason: collision with root package name */
        public ArrayList<a> f1737b;

        /* renamed from: c  reason: collision with root package name */
        ArrayList<a> f1738c;

        /* renamed from: d  reason: collision with root package name */
        CharSequence f1739d;
        CharSequence e;
        public PendingIntent f;
        PendingIntent g;
        RemoteViews h;
        Bitmap i;
        CharSequence j;
        public int k;
        public int l;
        public boolean m;
        boolean n;
        i o;
        CharSequence p;
        CharSequence[] q;
        public int r;
        public int s;
        public boolean t;
        public String u;
        boolean v;
        String w;
        public boolean x;
        boolean y;
        boolean z;

        @Deprecated
        public e(Context context) {
            this(context, null);
        }

        public e(Context context, String str) {
            this.f1737b = new ArrayList<>();
            this.f1738c = new ArrayList<>();
            this.m = true;
            this.x = false;
            this.C = 0;
            this.D = 0;
            this.J = 0;
            this.M = 0;
            Notification notification = new Notification();
            this.P = notification;
            this.f1736a = context;
            this.I = str;
            notification.when = System.currentTimeMillis();
            this.P.audioStreamType = -1;
            this.l = 0;
            this.R = new ArrayList<>();
            this.N = true;
        }

        protected static CharSequence d(CharSequence charSequence) {
            if (charSequence == null) {
                return charSequence;
            }
            CharSequence charSequence2 = charSequence;
            if (charSequence.length() > 5120) {
                charSequence2 = charSequence.subSequence(0, 5120);
            }
            return charSequence2;
        }

        public final Bundle a() {
            if (this.B == null) {
                this.B = new Bundle();
            }
            return this.B;
        }

        public final e a(int i) {
            this.P.icon = i;
            return this;
        }

        public final e a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f1737b.add(new a(i, charSequence, pendingIntent));
            return this;
        }

        public final e a(long j) {
            this.P.when = j;
            return this;
        }

        public final e a(PendingIntent pendingIntent) {
            this.P.deleteIntent = pendingIntent;
            return this;
        }

        public final e a(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (bitmap != null) {
                if (Build.VERSION.SDK_INT >= 27) {
                    bitmap2 = bitmap;
                } else {
                    Resources resources = this.f1736a.getResources();
                    int dimensionPixelSize = resources.getDimensionPixelSize(a.b.compat_notification_large_icon_max_width);
                    int dimensionPixelSize2 = resources.getDimensionPixelSize(a.b.compat_notification_large_icon_max_height);
                    if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                        double min = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
                        bitmap2 = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * min), (int) Math.ceil(bitmap.getHeight() * min), true);
                    } else {
                        bitmap2 = bitmap;
                    }
                }
            }
            this.i = bitmap2;
            return this;
        }

        public final e a(Uri uri) {
            this.P.sound = uri;
            this.P.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                this.P.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        public final e a(a aVar) {
            this.f1737b.add(aVar);
            return this;
        }

        public final e a(f fVar) {
            fVar.a(this);
            return this;
        }

        public final e a(i iVar) {
            if (this.o != iVar) {
                this.o = iVar;
                if (iVar != null) {
                    iVar.a(this);
                }
            }
            return this;
        }

        public final e a(CharSequence charSequence) {
            this.f1739d = d(charSequence);
            return this;
        }

        public final e a(boolean z) {
            a(16, z);
            return this;
        }

        public final void a(int i, boolean z) {
            if (z) {
                Notification notification = this.P;
                notification.flags = i | notification.flags;
                return;
            }
            Notification notification2 = this.P;
            notification2.flags = (i ^ (-1)) & notification2.flags;
        }

        public final Notification b() {
            Notification notification;
            Bundle a2;
            androidx.core.app.h hVar = new androidx.core.app.h(this);
            i iVar = hVar.f1754b.o;
            if (iVar != null) {
                iVar.a(hVar);
            }
            if (Build.VERSION.SDK_INT >= 26) {
                notification = hVar.f1753a.build();
            } else if (Build.VERSION.SDK_INT >= 24) {
                Notification build = hVar.f1753a.build();
                notification = build;
                if (hVar.g != 0) {
                    if (!(build.getGroup() == null || (build.flags & 512) == 0 || hVar.g != 2)) {
                        androidx.core.app.h.a(build);
                    }
                    notification = build;
                    if (build.getGroup() != null) {
                        notification = build;
                        if ((build.flags & 512) == 0) {
                            notification = build;
                            if (hVar.g == 1) {
                                androidx.core.app.h.a(build);
                                notification = build;
                            }
                        }
                    }
                }
            } else if (Build.VERSION.SDK_INT >= 21) {
                hVar.f1753a.setExtras(hVar.f);
                Notification build2 = hVar.f1753a.build();
                if (hVar.f1755c != null) {
                    build2.contentView = hVar.f1755c;
                }
                if (hVar.f1756d != null) {
                    build2.bigContentView = hVar.f1756d;
                }
                if (hVar.h != null) {
                    build2.headsUpContentView = hVar.h;
                }
                notification = build2;
                if (hVar.g != 0) {
                    if (!(build2.getGroup() == null || (build2.flags & 512) == 0 || hVar.g != 2)) {
                        androidx.core.app.h.a(build2);
                    }
                    notification = build2;
                    if (build2.getGroup() != null) {
                        notification = build2;
                        if ((build2.flags & 512) == 0) {
                            notification = build2;
                            if (hVar.g == 1) {
                                androidx.core.app.h.a(build2);
                                notification = build2;
                            }
                        }
                    }
                }
            } else if (Build.VERSION.SDK_INT >= 20) {
                hVar.f1753a.setExtras(hVar.f);
                Notification build3 = hVar.f1753a.build();
                if (hVar.f1755c != null) {
                    build3.contentView = hVar.f1755c;
                }
                if (hVar.f1756d != null) {
                    build3.bigContentView = hVar.f1756d;
                }
                notification = build3;
                if (hVar.g != 0) {
                    if (!(build3.getGroup() == null || (build3.flags & 512) == 0 || hVar.g != 2)) {
                        androidx.core.app.h.a(build3);
                    }
                    notification = build3;
                    if (build3.getGroup() != null) {
                        notification = build3;
                        if ((build3.flags & 512) == 0) {
                            notification = build3;
                            if (hVar.g == 1) {
                                androidx.core.app.h.a(build3);
                                notification = build3;
                            }
                        }
                    }
                }
            } else if (Build.VERSION.SDK_INT >= 19) {
                SparseArray<Bundle> a3 = androidx.core.app.i.a(hVar.e);
                if (a3 != null) {
                    hVar.f.putSparseParcelableArray("android.support.actionExtras", a3);
                }
                hVar.f1753a.setExtras(hVar.f);
                Notification build4 = hVar.f1753a.build();
                if (hVar.f1755c != null) {
                    build4.contentView = hVar.f1755c;
                }
                notification = build4;
                if (hVar.f1756d != null) {
                    build4.bigContentView = hVar.f1756d;
                    notification = build4;
                }
            } else if (Build.VERSION.SDK_INT >= 16) {
                Notification build5 = hVar.f1753a.build();
                Bundle a4 = g.a(build5);
                Bundle bundle = new Bundle(hVar.f);
                for (String str : hVar.f.keySet()) {
                    if (a4.containsKey(str)) {
                        bundle.remove(str);
                    }
                }
                a4.putAll(bundle);
                SparseArray<Bundle> a5 = androidx.core.app.i.a(hVar.e);
                if (a5 != null) {
                    g.a(build5).putSparseParcelableArray("android.support.actionExtras", a5);
                }
                if (hVar.f1755c != null) {
                    build5.contentView = hVar.f1755c;
                }
                notification = build5;
                if (hVar.f1756d != null) {
                    build5.bigContentView = hVar.f1756d;
                    notification = build5;
                }
            } else {
                notification = hVar.f1753a.getNotification();
            }
            if (hVar.f1754b.F != null) {
                notification.contentView = hVar.f1754b.F;
            }
            int i = Build.VERSION.SDK_INT;
            int i2 = Build.VERSION.SDK_INT;
            if (!(Build.VERSION.SDK_INT < 16 || iVar == null || (a2 = g.a(notification)) == null)) {
                iVar.a(a2);
            }
            return notification;
        }

        public final e b(int i) {
            this.P.defaults = i;
            if ((i & 4) != 0) {
                this.P.flags |= 1;
            }
            return this;
        }

        public final e b(CharSequence charSequence) {
            this.e = d(charSequence);
            return this;
        }

        public final e c(CharSequence charSequence) {
            this.P.tickerText = d(charSequence);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$f.class */
    public interface f {
        e a(e eVar);
    }

    /* renamed from: androidx.core.app.g$g  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$g.class */
    public static final class C0042g extends i {

        /* renamed from: a  reason: collision with root package name */
        private ArrayList<CharSequence> f1740a = new ArrayList<>();

        public C0042g() {
        }

        public C0042g(e eVar) {
            a(eVar);
        }

        public final C0042g a(CharSequence charSequence) {
            this.e = e.d(charSequence);
            return this;
        }

        @Override // androidx.core.app.g.i
        public final void a(androidx.core.app.f fVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(fVar.a()).setBigContentTitle(this.e);
                if (this.g) {
                    bigContentTitle.setSummaryText(this.f);
                }
                Iterator<CharSequence> it2 = this.f1740a.iterator();
                while (it2.hasNext()) {
                    bigContentTitle.addLine(it2.next());
                }
            }
        }

        public final C0042g b(CharSequence charSequence) {
            this.f1740a.add(e.d(charSequence));
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$h.class */
    public static final class h extends i {

        /* renamed from: a  reason: collision with root package name */
        public final List<a> f1741a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private k f1742b;

        /* renamed from: c  reason: collision with root package name */
        private CharSequence f1743c;
        private Boolean h;

        /* loaded from: classes-dex2jar.jar:androidx/core/app/g$h$a.class */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            final CharSequence f1744a;

            /* renamed from: b  reason: collision with root package name */
            final long f1745b;

            /* renamed from: c  reason: collision with root package name */
            final k f1746c;

            /* renamed from: d  reason: collision with root package name */
            Bundle f1747d;
            String e;
            Uri f;

            public a(CharSequence charSequence, long j, k kVar) {
                this.f1747d = new Bundle();
                this.f1744a = charSequence;
                this.f1745b = j;
                this.f1746c = kVar;
            }

            /* JADX WARN: Illegal instructions before constructor call */
            @java.lang.Deprecated
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public a(java.lang.CharSequence r7, long r8, java.lang.CharSequence r10) {
                /*
                    r6 = this;
                    androidx.core.app.k$a r0 = new androidx.core.app.k$a
                    r1 = r0
                    r1.<init>()
                    r11 = r0
                    r0 = r11
                    r1 = r10
                    r0.f1769a = r1
                    r0 = r6
                    r1 = r7
                    r2 = r8
                    r3 = r11
                    androidx.core.app.k r3 = r3.a()
                    r0.<init>(r1, r2, r3)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.g.h.a.<init>(java.lang.CharSequence, long, java.lang.CharSequence):void");
            }
        }

        private h() {
        }

        public h(k kVar) {
            if (!TextUtils.isEmpty(kVar.f1765a)) {
                this.f1742b = kVar;
                return;
            }
            throw new IllegalArgumentException("User's name must not be empty.");
        }

        @Deprecated
        public h(CharSequence charSequence) {
            k.a aVar = new k.a();
            aVar.f1769a = charSequence;
            this.f1742b = aVar.a();
        }

        private static TextAppearanceSpan a(int i) {
            return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i), null);
        }

        private a a() {
            for (int size = this.f1741a.size() - 1; size >= 0; size--) {
                a aVar = this.f1741a.get(size);
                if (!(aVar.f1746c == null || TextUtils.isEmpty(aVar.f1746c.f1765a))) {
                    return aVar;
                }
            }
            if (this.f1741a.isEmpty()) {
                return null;
            }
            List<a> list = this.f1741a;
            return list.get(list.size() - 1);
        }

        private CharSequence a(a aVar) {
            androidx.core.d.a a2 = androidx.core.d.a.a();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            boolean z = Build.VERSION.SDK_INT >= 21;
            int i = z ? -16777216 : -1;
            k kVar = aVar.f1746c;
            CharSequence charSequence = "";
            String str = kVar == null ? "" : aVar.f1746c.f1765a;
            int i2 = i;
            CharSequence charSequence2 = str;
            if (TextUtils.isEmpty(str)) {
                CharSequence charSequence3 = this.f1742b.f1765a;
                i2 = i;
                charSequence2 = charSequence3;
                if (z) {
                    i2 = i;
                    charSequence2 = charSequence3;
                    if (this.f1748d.C != 0) {
                        i2 = this.f1748d.C;
                        charSequence2 = charSequence3;
                    }
                }
            }
            CharSequence a3 = a2.a(charSequence2);
            spannableStringBuilder.append(a3);
            spannableStringBuilder.setSpan(a(i2), spannableStringBuilder.length() - a3.length(), spannableStringBuilder.length(), 33);
            if (aVar.f1744a != null) {
                charSequence = aVar.f1744a;
            }
            spannableStringBuilder.append((CharSequence) "  ").append(a2.a(charSequence));
            return spannableStringBuilder;
        }

        private boolean b() {
            for (int size = this.f1741a.size() - 1; size >= 0; size--) {
                a aVar = this.f1741a.get(size);
                if (aVar.f1746c != null && aVar.f1746c.f1765a == null) {
                    return true;
                }
            }
            return false;
        }

        public final h a(boolean z) {
            this.h = Boolean.valueOf(z);
            return this;
        }

        @Override // androidx.core.app.g.i
        public final void a(Bundle bundle) {
            super.a(bundle);
            bundle.putCharSequence("android.selfDisplayName", this.f1742b.f1765a);
            bundle.putBundle("android.messagingStyleUser", this.f1742b.a());
            bundle.putCharSequence("android.hiddenConversationTitle", this.f1743c);
            if (this.f1743c != null && this.h.booleanValue()) {
                bundle.putCharSequence("android.conversationTitle", this.f1743c);
            }
            if (!this.f1741a.isEmpty()) {
                List<a> list = this.f1741a;
                Parcelable[] parcelableArr = new Bundle[list.size()];
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    a aVar = list.get(i);
                    Bundle bundle2 = new Bundle();
                    if (aVar.f1744a != null) {
                        bundle2.putCharSequence("text", aVar.f1744a);
                    }
                    bundle2.putLong("time", aVar.f1745b);
                    if (aVar.f1746c != null) {
                        bundle2.putCharSequence("sender", aVar.f1746c.f1765a);
                        if (Build.VERSION.SDK_INT >= 28) {
                            bundle2.putParcelable("sender_person", aVar.f1746c.b());
                        } else {
                            bundle2.putBundle("person", aVar.f1746c.a());
                        }
                    }
                    if (aVar.e != null) {
                        bundle2.putString("type", aVar.e);
                    }
                    if (aVar.f != null) {
                        bundle2.putParcelable("uri", aVar.f);
                    }
                    if (aVar.f1747d != null) {
                        bundle2.putBundle("extras", aVar.f1747d);
                    }
                    parcelableArr[i] = bundle2;
                }
                bundle.putParcelableArray("android.messages", parcelableArr);
            }
            Boolean bool = this.h;
            if (bool != null) {
                bundle.putBoolean("android.isGroupConversation", bool.booleanValue());
            }
        }

        @Override // androidx.core.app.g.i
        public final void a(androidx.core.app.f fVar) {
            boolean z;
            Notification.MessagingStyle.Message message;
            if (this.f1748d == null || this.f1748d.f1736a.getApplicationInfo().targetSdkVersion >= 28 || this.h != null) {
                Boolean bool = this.h;
                if (bool != null) {
                    z = bool.booleanValue();
                }
                z = false;
            } else {
                if (this.f1743c != null) {
                    z = true;
                }
                z = false;
            }
            a(z);
            if (Build.VERSION.SDK_INT >= 24) {
                Notification.MessagingStyle messagingStyle = Build.VERSION.SDK_INT >= 28 ? new Notification.MessagingStyle(this.f1742b.b()) : new Notification.MessagingStyle(this.f1742b.f1765a);
                if (this.h.booleanValue() || Build.VERSION.SDK_INT >= 28) {
                    messagingStyle.setConversationTitle(this.f1743c);
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    messagingStyle.setGroupConversation(this.h.booleanValue());
                }
                for (a aVar : this.f1741a) {
                    if (Build.VERSION.SDK_INT >= 28) {
                        k kVar = aVar.f1746c;
                        message = new Notification.MessagingStyle.Message(aVar.f1744a, aVar.f1745b, kVar == null ? null : kVar.b());
                    } else {
                        message = new Notification.MessagingStyle.Message(aVar.f1744a, aVar.f1745b, aVar.f1746c != null ? aVar.f1746c.f1765a : null);
                    }
                    if (aVar.e != null) {
                        message.setData(aVar.e, aVar.f);
                    }
                    messagingStyle.addMessage(message);
                }
                messagingStyle.setBuilder(fVar.a());
                return;
            }
            a a2 = a();
            if (this.f1743c != null && this.h.booleanValue()) {
                fVar.a().setContentTitle(this.f1743c);
            } else if (a2 != null) {
                fVar.a().setContentTitle("");
                if (a2.f1746c != null) {
                    fVar.a().setContentTitle(a2.f1746c.f1765a);
                }
            }
            if (a2 != null) {
                fVar.a().setContentText(this.f1743c != null ? a(a2) : a2.f1744a);
            }
            if (Build.VERSION.SDK_INT >= 16) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                boolean z2 = this.f1743c != null || b();
                for (int size = this.f1741a.size() - 1; size >= 0; size--) {
                    a aVar2 = this.f1741a.get(size);
                    CharSequence a3 = z2 ? a(aVar2) : aVar2.f1744a;
                    if (size != this.f1741a.size() - 1) {
                        spannableStringBuilder.insert(0, (CharSequence) StringUtils.LF);
                    }
                    spannableStringBuilder.insert(0, a3);
                }
                new Notification.BigTextStyle(fVar.a()).setBigContentTitle(null).bigText(spannableStringBuilder);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$i.class */
    public static abstract class i {

        /* renamed from: d  reason: collision with root package name */
        protected e f1748d;
        CharSequence e;
        CharSequence f;
        boolean g = false;

        public void a(Bundle bundle) {
        }

        public void a(androidx.core.app.f fVar) {
        }

        public final void a(e eVar) {
            if (this.f1748d != eVar) {
                this.f1748d = eVar;
                if (eVar != null) {
                    eVar.a(this);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$j.class */
    public static final class j implements f {

        /* renamed from: a  reason: collision with root package name */
        public Bitmap f1749a;

        /* renamed from: b  reason: collision with root package name */
        private ArrayList<a> f1750b;

        /* renamed from: c  reason: collision with root package name */
        private int f1751c;

        /* renamed from: d  reason: collision with root package name */
        private PendingIntent f1752d;
        private ArrayList<Notification> e;
        private int f;
        private int g;
        private int h;
        private int i;
        private int j;
        private int k;
        private int l;
        private String m;
        private String n;

        public j() {
            this.f1750b = new ArrayList<>();
            this.f1751c = 1;
            this.e = new ArrayList<>();
            this.g = 8388613;
            this.h = -1;
            this.i = 0;
            this.k = 80;
        }

        public j(Notification notification) {
            this.f1750b = new ArrayList<>();
            this.f1751c = 1;
            this.e = new ArrayList<>();
            this.g = 8388613;
            this.h = -1;
            this.i = 0;
            this.k = 80;
            Bundle a2 = g.a(notification);
            Bundle bundle = a2 != null ? a2.getBundle("android.wearable.EXTENSIONS") : null;
            if (bundle != null) {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("actions");
                if (Build.VERSION.SDK_INT >= 16 && parcelableArrayList != null) {
                    int size = parcelableArrayList.size();
                    a[] aVarArr = new a[size];
                    for (int i = 0; i < size; i++) {
                        if (Build.VERSION.SDK_INT >= 20) {
                            aVarArr[i] = g.a((Notification.Action) parcelableArrayList.get(i));
                        } else if (Build.VERSION.SDK_INT >= 16) {
                            aVarArr[i] = androidx.core.app.i.a((Bundle) parcelableArrayList.get(i));
                        }
                    }
                    Collections.addAll(this.f1750b, aVarArr);
                }
                this.f1751c = bundle.getInt("flags", 1);
                this.f1752d = (PendingIntent) bundle.getParcelable("displayIntent");
                Notification[] a3 = g.a(bundle, "pages");
                if (a3 != null) {
                    Collections.addAll(this.e, a3);
                }
                this.f1749a = (Bitmap) bundle.getParcelable("background");
                this.f = bundle.getInt("contentIcon");
                this.g = bundle.getInt("contentIconGravity", 8388613);
                this.h = bundle.getInt("contentActionIndex", -1);
                this.i = bundle.getInt("customSizePreset", 0);
                this.j = bundle.getInt("customContentHeight");
                this.k = bundle.getInt("gravity", 80);
                this.l = bundle.getInt("hintScreenTimeout");
                this.m = bundle.getString("dismissalId");
                this.n = bundle.getString("bridgeTag");
            }
        }

        private static Notification.Action a(a aVar) {
            Notification.Action.Builder builder;
            if (Build.VERSION.SDK_INT >= 23) {
                IconCompat a2 = aVar.a();
                builder = new Notification.Action.Builder(a2 == null ? null : a2.c(), aVar.i, aVar.j);
            } else {
                IconCompat a3 = aVar.a();
                builder = new Notification.Action.Builder((a3 == null || a3.a() != 2) ? 0 : a3.b(), aVar.i, aVar.j);
            }
            Bundle bundle = aVar.f1724a != null ? new Bundle(aVar.f1724a) : new Bundle();
            bundle.putBoolean("android.support.allowGeneratedReplies", aVar.f1727d);
            if (Build.VERSION.SDK_INT >= 24) {
                builder.setAllowGeneratedReplies(aVar.f1727d);
            }
            builder.addExtras(bundle);
            l[] lVarArr = aVar.f1725b;
            if (lVarArr != null) {
                for (RemoteInput remoteInput : l.a(lVarArr)) {
                    builder.addRemoteInput(remoteInput);
                }
            }
            return builder.build();
        }

        @Override // androidx.core.app.g.f
        public final e a(e eVar) {
            Bundle bundle = new Bundle();
            if (!this.f1750b.isEmpty()) {
                if (Build.VERSION.SDK_INT >= 16) {
                    ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f1750b.size());
                    Iterator<a> it2 = this.f1750b.iterator();
                    while (it2.hasNext()) {
                        a next = it2.next();
                        if (Build.VERSION.SDK_INT >= 20) {
                            arrayList.add(a(next));
                        } else if (Build.VERSION.SDK_INT >= 16) {
                            arrayList.add(androidx.core.app.i.a(next));
                        }
                    }
                    bundle.putParcelableArrayList("actions", arrayList);
                } else {
                    bundle.putParcelableArrayList("actions", null);
                }
            }
            int i = this.f1751c;
            if (i != 1) {
                bundle.putInt("flags", i);
            }
            PendingIntent pendingIntent = this.f1752d;
            if (pendingIntent != null) {
                bundle.putParcelable("displayIntent", pendingIntent);
            }
            if (!this.e.isEmpty()) {
                ArrayList<Notification> arrayList2 = this.e;
                bundle.putParcelableArray("pages", (Parcelable[]) arrayList2.toArray(new Notification[arrayList2.size()]));
            }
            Bitmap bitmap = this.f1749a;
            if (bitmap != null) {
                bundle.putParcelable("background", bitmap);
            }
            int i2 = this.f;
            if (i2 != 0) {
                bundle.putInt("contentIcon", i2);
            }
            int i3 = this.g;
            if (i3 != 8388613) {
                bundle.putInt("contentIconGravity", i3);
            }
            int i4 = this.h;
            if (i4 != -1) {
                bundle.putInt("contentActionIndex", i4);
            }
            int i5 = this.i;
            if (i5 != 0) {
                bundle.putInt("customSizePreset", i5);
            }
            int i6 = this.j;
            if (i6 != 0) {
                bundle.putInt("customContentHeight", i6);
            }
            int i7 = this.k;
            if (i7 != 80) {
                bundle.putInt("gravity", i7);
            }
            int i8 = this.l;
            if (i8 != 0) {
                bundle.putInt("hintScreenTimeout", i8);
            }
            String str = this.m;
            if (str != null) {
                bundle.putString("dismissalId", str);
            }
            String str2 = this.n;
            if (str2 != null) {
                bundle.putString("bridgeTag", str2);
            }
            eVar.a().putBundle("android.wearable.EXTENSIONS", bundle);
            return eVar;
        }

        @Deprecated
        public final j a() {
            this.f = 2131689478;
            return this;
        }

        public final j a(List<a> list) {
            this.f1750b.addAll(list);
            return this;
        }

        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            j jVar = new j();
            jVar.f1750b = new ArrayList<>(this.f1750b);
            jVar.f1751c = this.f1751c;
            jVar.f1752d = this.f1752d;
            jVar.e = new ArrayList<>(this.e);
            jVar.f1749a = this.f1749a;
            jVar.f = this.f;
            jVar.g = this.g;
            jVar.h = this.h;
            jVar.i = this.i;
            jVar.j = this.j;
            jVar.k = this.k;
            jVar.l = this.l;
            jVar.m = this.m;
            jVar.n = this.n;
            return jVar;
        }
    }

    public static Bundle a(Notification notification) {
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return androidx.core.app.i.a(notification);
        }
        return null;
    }

    static a a(Notification.Action action) {
        l[] lVarArr;
        RemoteInput[] remoteInputs = action.getRemoteInputs();
        IconCompat iconCompat = null;
        if (remoteInputs == null) {
            lVarArr = null;
        } else {
            lVarArr = new l[remoteInputs.length];
            for (int i2 = 0; i2 < remoteInputs.length; i2++) {
                RemoteInput remoteInput = remoteInputs[i2];
                lVarArr[i2] = new l(remoteInput.getResultKey(), remoteInput.getLabel(), remoteInput.getChoices(), remoteInput.getAllowFreeFormInput(), Build.VERSION.SDK_INT >= 29 ? remoteInput.getEditChoicesBeforeSending() : 0, remoteInput.getExtras(), null);
            }
        }
        boolean z = Build.VERSION.SDK_INT >= 24 ? action.getExtras().getBoolean("android.support.allowGeneratedReplies") || action.getAllowGeneratedReplies() : action.getExtras().getBoolean("android.support.allowGeneratedReplies");
        boolean z2 = action.getExtras().getBoolean("android.support.action.showsUserInterface", true);
        int semanticAction = Build.VERSION.SDK_INT >= 28 ? action.getSemanticAction() : action.getExtras().getInt("android.support.action.semanticAction", 0);
        boolean isContextual = Build.VERSION.SDK_INT >= 29 ? action.isContextual() : false;
        if (Build.VERSION.SDK_INT < 23) {
            return new a(action.icon, action.title, action.actionIntent, action.getExtras(), lVarArr, (l[]) null, z, semanticAction, z2, isContextual);
        }
        if (action.getIcon() == null && action.icon != 0) {
            return new a(action.icon, action.title, action.actionIntent, action.getExtras(), lVarArr, (l[]) null, z, semanticAction, z2, isContextual);
        }
        if (action.getIcon() != null) {
            iconCompat = IconCompat.a(action.getIcon());
        }
        return new a(iconCompat, action.title, action.actionIntent, action.getExtras(), lVarArr, (l[]) null, z, semanticAction, z2, isContextual);
    }

    static Notification[] a(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Notification[]) || parcelableArray == null) {
            return (Notification[]) parcelableArray;
        }
        Notification[] notificationArr = new Notification[parcelableArray.length];
        for (int i2 = 0; i2 < parcelableArray.length; i2++) {
            notificationArr[i2] = (Notification) parcelableArray[i2];
        }
        bundle.putParcelableArray(str, notificationArr);
        return notificationArr;
    }
}
