package p026c0;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Objects;
/* renamed from: c0.m */
/* loaded from: classes-dex2jar.jar:c0/m.class */
public class C0805m {

    /* renamed from: a */
    public Context f2964a;

    /* renamed from: e */
    public CharSequence f2968e;

    /* renamed from: f */
    public CharSequence f2969f;

    /* renamed from: g */
    public PendingIntent f2970g;

    /* renamed from: h */
    public Bitmap f2971h;

    /* renamed from: k */
    public AbstractC0806n f2974k;

    /* renamed from: m */
    public Bundle f2976m;

    /* renamed from: o */
    public String f2978o;

    /* renamed from: q */
    public Notification f2980q;

    /* renamed from: b */
    public ArrayList<C0803k> f2965b = new ArrayList<>();

    /* renamed from: c */
    public ArrayList<C0810r> f2966c = new ArrayList<>();

    /* renamed from: d */
    public ArrayList<C0803k> f2967d = new ArrayList<>();

    /* renamed from: j */
    public boolean f2973j = true;

    /* renamed from: l */
    public boolean f2975l = false;

    /* renamed from: n */
    public int f2977n = 0;

    /* renamed from: i */
    public int f2972i = 0;
    @Deprecated

    /* renamed from: r */
    public ArrayList<String> f2981r = new ArrayList<>();

    /* renamed from: p */
    public boolean f2979p = true;

    public C0805m(Context context, String str) {
        Notification notification = new Notification();
        this.f2980q = notification;
        this.f2964a = context;
        this.f2978o = str;
        notification.when = System.currentTimeMillis();
        this.f2980q.audioStreamType = -1;
    }

    /* renamed from: b */
    public static CharSequence m7358b(CharSequence charSequence) {
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
    public Notification m7359a() {
        Notification notification;
        Bundle bundle;
        C0807o c0807o = new C0807o(this);
        AbstractC0806n abstractC0806n = c0807o.f2984b.f2974k;
        if (abstractC0806n != null) {
            new Notification.BigTextStyle(c0807o.f2983a).setBigContentTitle(null).bigText(((C0804l) abstractC0806n).f2963b);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            notification = c0807o.f2983a.build();
        } else if (i >= 24) {
            notification = c0807o.f2983a.build();
        } else {
            c0807o.f2983a.setExtras(c0807o.f2986d);
            notification = c0807o.f2983a.build();
        }
        Objects.requireNonNull(c0807o.f2984b);
        if (abstractC0806n != null) {
            Objects.requireNonNull(c0807o.f2984b.f2974k);
        }
        if (abstractC0806n != null && (bundle = notification.extras) != null) {
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", "androidx.core.app.NotificationCompat$BigTextStyle");
        }
        return notification;
    }

    /* renamed from: c */
    public C0805m m7357c(CharSequence charSequence) {
        this.f2969f = m7358b(charSequence);
        return this;
    }

    /* renamed from: d */
    public C0805m m7356d(CharSequence charSequence) {
        this.f2968e = m7358b(charSequence);
        return this;
    }

    /* renamed from: e */
    public final void m7355e(int i, boolean z) {
        if (z) {
            Notification notification = this.f2980q;
            notification.flags = i | notification.flags;
            return;
        }
        Notification notification2 = this.f2980q;
        notification2.flags = (i ^ (-1)) & notification2.flags;
    }

    /* renamed from: f */
    public C0805m m7354f(Bitmap bitmap) {
        Bitmap bitmap2 = bitmap;
        if (bitmap != null) {
            if (Build.VERSION.SDK_INT >= 27) {
                bitmap2 = bitmap;
            } else {
                Resources resources = this.f2964a.getResources();
                int dimensionPixelSize = resources.getDimensionPixelSize(2131165303);
                int dimensionPixelSize2 = resources.getDimensionPixelSize(2131165302);
                if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                    double min = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
                    bitmap2 = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * min), (int) Math.ceil(bitmap.getHeight() * min), true);
                } else {
                    bitmap2 = bitmap;
                }
            }
        }
        this.f2971h = bitmap2;
        return this;
    }

    /* renamed from: g */
    public C0805m m7353g(AbstractC0806n abstractC0806n) {
        if (this.f2974k != abstractC0806n) {
            this.f2974k = abstractC0806n;
            if (abstractC0806n.f2982a != this) {
                abstractC0806n.f2982a = this;
                m7353g(abstractC0806n);
            }
        }
        return this;
    }
}
