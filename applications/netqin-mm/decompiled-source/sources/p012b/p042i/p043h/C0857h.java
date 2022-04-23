package p012b.p042i.p043h;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import p012b.p042i.C0832b;
import p012b.p042i.C0833c;
/* renamed from: b.i.h.h */
/* loaded from: classes-dex2jar.jar:b/i/h/h.class */
public class C0857h {

    /* renamed from: b.i.h.h$a */
    /* loaded from: classes-dex2jar.jar:b/i/h/h$a.class */
    public static class C0858a {

        /* renamed from: a */
        public final Bundle f3984a;

        /* renamed from: b */
        public IconCompat f3985b;

        /* renamed from: c */
        public final C0865k[] f3986c;

        /* renamed from: d */
        public final C0865k[] f3987d;

        /* renamed from: e */
        public boolean f3988e;

        /* renamed from: f */
        public boolean f3989f;

        /* renamed from: g */
        public final int f3990g;

        /* renamed from: h */
        public final boolean f3991h;
        @Deprecated

        /* renamed from: i */
        public int f3992i;

        /* renamed from: j */
        public CharSequence f3993j;

        /* renamed from: k */
        public PendingIntent f3994k;

        public C0858a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i != 0 ? IconCompat.m38570a(null, "", i) : null, charSequence, pendingIntent);
        }

        public C0858a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true, false);
        }

        public C0858a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, C0865k[] kVarArr, C0865k[] kVarArr2, boolean z, int i, boolean z2, boolean z3) {
            this.f3989f = true;
            this.f3985b = iconCompat;
            if (iconCompat != null && iconCompat.m38558i() == 2) {
                this.f3992i = iconCompat.m38560g();
            }
            this.f3993j = C0861d.m35729d(charSequence);
            this.f3994k = pendingIntent;
            this.f3984a = bundle == null ? new Bundle() : bundle;
            this.f3986c = kVarArr;
            this.f3987d = kVarArr2;
            this.f3988e = z;
            this.f3990g = i;
            this.f3989f = z2;
            this.f3991h = z3;
        }

        /* renamed from: a */
        public PendingIntent m35767a() {
            return this.f3994k;
        }

        /* renamed from: b */
        public boolean m35766b() {
            return this.f3988e;
        }

        /* renamed from: c */
        public C0865k[] m35765c() {
            return this.f3987d;
        }

        /* renamed from: d */
        public Bundle m35764d() {
            return this.f3984a;
        }

        @Deprecated
        /* renamed from: e */
        public int m35763e() {
            return this.f3992i;
        }

        /* renamed from: f */
        public IconCompat m35762f() {
            int i;
            if (this.f3985b == null && (i = this.f3992i) != 0) {
                this.f3985b = IconCompat.m38570a(null, "", i);
            }
            return this.f3985b;
        }

        /* renamed from: g */
        public C0865k[] m35761g() {
            return this.f3986c;
        }

        /* renamed from: h */
        public int m35760h() {
            return this.f3990g;
        }

        /* renamed from: i */
        public boolean m35759i() {
            return this.f3989f;
        }

        /* renamed from: j */
        public CharSequence m35758j() {
            return this.f3993j;
        }

        /* renamed from: k */
        public boolean m35757k() {
            return this.f3991h;
        }
    }

    /* renamed from: b.i.h.h$b */
    /* loaded from: classes-dex2jar.jar:b/i/h/h$b.class */
    public static class C0859b extends AbstractC0862e {

        /* renamed from: e */
        public CharSequence f3995e;

        /* renamed from: a */
        public C0859b m35756a(CharSequence charSequence) {
            this.f3995e = C0861d.m35729d(charSequence);
            return this;
        }

        @Override // p012b.p042i.p043h.C0857h.AbstractC0862e
        /* renamed from: a */
        public void mo34569a(AbstractC0856g gVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigText = new Notification.BigTextStyle(gVar.mo35718a()).setBigContentTitle(this.f4042b).bigText(this.f3995e);
                if (this.f4044d) {
                    bigText.setSummaryText(this.f4043c);
                }
            }
        }
    }

    /* renamed from: b.i.h.h$c */
    /* loaded from: classes-dex2jar.jar:b/i/h/h$c.class */
    public static final class C0860c {
        /* renamed from: a */
        public static Notification.BubbleMetadata m35754a(C0860c cVar) {
            if (cVar == null) {
                return null;
            }
            new Notification.BubbleMetadata.Builder();
            cVar.m35755a();
            throw null;
        }

        /* renamed from: a */
        public boolean m35755a() {
            throw null;
        }
    }

    /* renamed from: b.i.h.h$d */
    /* loaded from: classes-dex2jar.jar:b/i/h/h$d.class */
    public static class C0861d {

        /* renamed from: A */
        public boolean f3996A;

        /* renamed from: B */
        public String f3997B;

        /* renamed from: C */
        public Bundle f3998C;

        /* renamed from: D */
        public int f3999D;

        /* renamed from: E */
        public int f4000E;

        /* renamed from: F */
        public Notification f4001F;

        /* renamed from: G */
        public RemoteViews f4002G;

        /* renamed from: H */
        public RemoteViews f4003H;

        /* renamed from: I */
        public RemoteViews f4004I;

        /* renamed from: J */
        public String f4005J;

        /* renamed from: K */
        public int f4006K;

        /* renamed from: L */
        public String f4007L;

        /* renamed from: M */
        public long f4008M;

        /* renamed from: N */
        public int f4009N;

        /* renamed from: O */
        public boolean f4010O;

        /* renamed from: P */
        public C0860c f4011P;

        /* renamed from: Q */
        public Notification f4012Q;

        /* renamed from: R */
        public boolean f4013R;
        @Deprecated

        /* renamed from: S */
        public ArrayList<String> f4014S;

        /* renamed from: a */
        public Context f4015a;

        /* renamed from: b */
        public ArrayList<C0858a> f4016b;

        /* renamed from: c */
        public ArrayList<C0858a> f4017c;

        /* renamed from: d */
        public CharSequence f4018d;

        /* renamed from: e */
        public CharSequence f4019e;

        /* renamed from: f */
        public PendingIntent f4020f;

        /* renamed from: g */
        public PendingIntent f4021g;

        /* renamed from: h */
        public RemoteViews f4022h;

        /* renamed from: i */
        public Bitmap f4023i;

        /* renamed from: j */
        public CharSequence f4024j;

        /* renamed from: k */
        public int f4025k;

        /* renamed from: l */
        public int f4026l;

        /* renamed from: m */
        public boolean f4027m;

        /* renamed from: n */
        public boolean f4028n;

        /* renamed from: o */
        public boolean f4029o;

        /* renamed from: p */
        public AbstractC0862e f4030p;

        /* renamed from: q */
        public CharSequence f4031q;

        /* renamed from: r */
        public CharSequence[] f4032r;

        /* renamed from: s */
        public int f4033s;

        /* renamed from: t */
        public int f4034t;

        /* renamed from: u */
        public boolean f4035u;

        /* renamed from: v */
        public String f4036v;

        /* renamed from: w */
        public boolean f4037w;

        /* renamed from: x */
        public String f4038x;

        /* renamed from: y */
        public boolean f4039y;

        /* renamed from: z */
        public boolean f4040z;

        @Deprecated
        public C0861d(Context context) {
            this(context, null);
        }

        public C0861d(Context context, String str) {
            this.f4016b = new ArrayList<>();
            this.f4017c = new ArrayList<>();
            this.f4027m = true;
            this.f4039y = false;
            this.f3999D = 0;
            this.f4000E = 0;
            this.f4006K = 0;
            this.f4009N = 0;
            Notification notification = new Notification();
            this.f4012Q = notification;
            this.f4015a = context;
            this.f4005J = str;
            notification.when = System.currentTimeMillis();
            this.f4012Q.audioStreamType = -1;
            this.f4026l = 0;
            this.f4014S = new ArrayList<>();
            this.f4010O = true;
        }

        /* renamed from: d */
        public static CharSequence m35729d(CharSequence charSequence) {
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
        public Notification m35753a() {
            return new C0863i(this).m35715b();
        }

        /* renamed from: a */
        public final Bitmap m35747a(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (bitmap != null) {
                if (Build.VERSION.SDK_INT >= 27) {
                    bitmap2 = bitmap;
                } else {
                    Resources resources = this.f4015a.getResources();
                    int dimensionPixelSize = resources.getDimensionPixelSize(C0832b.compat_notification_large_icon_max_width);
                    int dimensionPixelSize2 = resources.getDimensionPixelSize(C0832b.compat_notification_large_icon_max_height);
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

        /* renamed from: a */
        public C0861d m35752a(int i) {
            this.f3999D = i;
            return this;
        }

        /* renamed from: a */
        public C0861d m35751a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f4016b.add(new C0858a(i, charSequence, pendingIntent));
            return this;
        }

        /* renamed from: a */
        public C0861d m35749a(long j) {
            this.f4012Q.when = j;
            return this;
        }

        /* renamed from: a */
        public C0861d m35748a(PendingIntent pendingIntent) {
            this.f4020f = pendingIntent;
            return this;
        }

        /* renamed from: a */
        public C0861d m35746a(C0858a aVar) {
            this.f4016b.add(aVar);
            return this;
        }

        /* renamed from: a */
        public C0861d m35745a(AbstractC0862e eVar) {
            if (this.f4030p != eVar) {
                this.f4030p = eVar;
                if (eVar != null) {
                    eVar.m35721a(this);
                }
            }
            return this;
        }

        /* renamed from: a */
        public C0861d m35744a(CharSequence charSequence) {
            this.f4019e = m35729d(charSequence);
            return this;
        }

        /* renamed from: a */
        public C0861d m35743a(String str) {
            this.f4005J = str;
            return this;
        }

        /* renamed from: a */
        public C0861d m35742a(boolean z) {
            m35750a(16, z);
            return this;
        }

        /* renamed from: a */
        public final void m35750a(int i, boolean z) {
            if (z) {
                Notification notification = this.f4012Q;
                notification.flags = i | notification.flags;
                return;
            }
            Notification notification2 = this.f4012Q;
            notification2.flags = (i ^ (-1)) & notification2.flags;
        }

        /* renamed from: b */
        public int m35741b() {
            return this.f3999D;
        }

        /* renamed from: b */
        public C0861d m35740b(int i) {
            this.f4026l = i;
            return this;
        }

        /* renamed from: b */
        public C0861d m35739b(PendingIntent pendingIntent) {
            this.f4012Q.deleteIntent = pendingIntent;
            return this;
        }

        /* renamed from: b */
        public C0861d m35738b(Bitmap bitmap) {
            this.f4023i = m35747a(bitmap);
            return this;
        }

        /* renamed from: b */
        public C0861d m35737b(CharSequence charSequence) {
            this.f4018d = m35729d(charSequence);
            return this;
        }

        /* renamed from: b */
        public C0861d m35736b(boolean z) {
            this.f4039y = z;
            return this;
        }

        /* renamed from: c */
        public Bundle m35735c() {
            if (this.f3998C == null) {
                this.f3998C = new Bundle();
            }
            return this.f3998C;
        }

        /* renamed from: c */
        public C0861d m35734c(int i) {
            this.f4012Q.icon = i;
            return this;
        }

        /* renamed from: c */
        public C0861d m35733c(CharSequence charSequence) {
            this.f4012Q.tickerText = m35729d(charSequence);
            return this;
        }

        /* renamed from: c */
        public C0861d m35732c(boolean z) {
            m35750a(2, z);
            return this;
        }

        /* renamed from: d */
        public int m35731d() {
            return this.f4026l;
        }

        /* renamed from: d */
        public C0861d m35730d(int i) {
            this.f4000E = i;
            return this;
        }

        /* renamed from: d */
        public C0861d m35728d(boolean z) {
            m35750a(8, z);
            return this;
        }

        /* renamed from: e */
        public long m35727e() {
            return this.f4027m ? this.f4012Q.when : 0L;
        }
    }

    /* renamed from: b.i.h.h$e */
    /* loaded from: classes-dex2jar.jar:b/i/h/h$e.class */
    public static abstract class AbstractC0862e {

        /* renamed from: a */
        public C0861d f4041a;

        /* renamed from: b */
        public CharSequence f4042b;

        /* renamed from: c */
        public CharSequence f4043c;

        /* renamed from: d */
        public boolean f4044d = false;

        /* renamed from: a */
        public Bitmap m35726a(int i, int i2) {
            return m35725a(i, i2, 0);
        }

        /* renamed from: a */
        public final Bitmap m35725a(int i, int i2, int i3) {
            return m35722a(IconCompat.m38572a(this.f4041a.f4015a, i), i2, i3);
        }

        /* renamed from: a */
        public final Bitmap m35724a(int i, int i2, int i3, int i4) {
            int i5 = C0833c.notification_icon_background;
            int i6 = i4;
            if (i4 == 0) {
                i6 = 0;
            }
            Bitmap a = m35725a(i5, i6, i2);
            Canvas canvas = new Canvas(a);
            Drawable mutate = this.f4041a.f4015a.getResources().getDrawable(i).mutate();
            mutate.setFilterBitmap(true);
            int i7 = (i2 - i3) / 2;
            int i8 = i3 + i7;
            mutate.setBounds(i7, i7, i8, i8);
            mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
            mutate.draw(canvas);
            return a;
        }

        /* renamed from: a */
        public final Bitmap m35722a(IconCompat iconCompat, int i, int i2) {
            Drawable c = iconCompat.m38565c(this.f4041a.f4015a);
            int intrinsicWidth = i2 == 0 ? c.getIntrinsicWidth() : i2;
            int i3 = i2;
            if (i2 == 0) {
                i3 = c.getIntrinsicHeight();
            }
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, i3, Bitmap.Config.ARGB_8888);
            c.setBounds(0, 0, intrinsicWidth, i3);
            if (i != 0) {
                c.mutate().setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
            }
            c.draw(new Canvas(createBitmap));
            return createBitmap;
        }

        /* JADX WARN: Removed duplicated region for block: B:68:0x02cb  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x02e4  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x02f6  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x0302  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0330  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x03c4  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x03c9  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x03de  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x03e4  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.widget.RemoteViews m35720a(boolean r11, int r12, boolean r13) {
            /*
                Method dump skipped, instructions count: 1010
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p042i.p043h.C0857h.AbstractC0862e.m35720a(boolean, int, boolean):android.widget.RemoteViews");
        }

        /* renamed from: a */
        public void m35723a(Bundle bundle) {
        }

        /* renamed from: a */
        public abstract void mo34569a(AbstractC0856g gVar);

        /* renamed from: a */
        public void m35721a(C0861d dVar) {
            if (this.f4041a != dVar) {
                this.f4041a = dVar;
                if (dVar != null) {
                    dVar.m35745a(this);
                }
            }
        }

        /* renamed from: b */
        public RemoteViews mo34565b(AbstractC0856g gVar) {
            return null;
        }

        /* renamed from: c */
        public RemoteViews mo34563c(AbstractC0856g gVar) {
            return null;
        }

        /* renamed from: d */
        public RemoteViews m35719d(AbstractC0856g gVar) {
            return null;
        }
    }

    /* renamed from: a */
    public static Bundle m35768a(Notification notification) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return notification.extras;
        }
        if (i >= 16) {
            return C0864j.m35712a(notification);
        }
        return null;
    }
}
