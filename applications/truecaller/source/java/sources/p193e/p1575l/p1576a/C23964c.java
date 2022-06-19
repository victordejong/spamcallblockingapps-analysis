package p193e.p1575l.p1576a;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import p1727n3.p1807k.p1809b.C26467a;
/* renamed from: e.l.a.c */
/* loaded from: classes2-dex2jar.jar:e/l/a/c.class */
public class C23964c {

    /* renamed from: a */
    public final CharSequence f66349a;

    /* renamed from: b */
    public final CharSequence f66350b;

    /* renamed from: e */
    public Rect f66353e;

    /* renamed from: f */
    public Drawable f66354f;

    /* renamed from: g */
    public Typeface f66355g;

    /* renamed from: h */
    public Typeface f66356h;

    /* renamed from: c */
    public float f66351c = 0.96f;

    /* renamed from: d */
    public int f66352d = 44;

    /* renamed from: i */
    public int f66357i = -1;

    /* renamed from: j */
    public int f66358j = -1;

    /* renamed from: k */
    public int f66359k = -1;

    /* renamed from: l */
    public int f66360l = -1;

    /* renamed from: m */
    public int f66361m = -1;

    /* renamed from: n */
    public int f66362n = 20;

    /* renamed from: o */
    public int f66363o = 18;

    /* renamed from: p */
    public boolean f66364p = false;

    /* renamed from: q */
    public boolean f66365q = true;

    /* renamed from: r */
    public boolean f66366r = true;

    /* renamed from: s */
    public boolean f66367s = false;

    /* renamed from: t */
    public float f66368t = 0.54f;

    public C23964c(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence != null) {
            this.f66349a = charSequence;
            this.f66350b = charSequence2;
            return;
        }
        throw new IllegalArgumentException("Cannot pass null title");
    }

    /* renamed from: a */
    public final Integer m5646a(Context context, Integer num, int i) {
        if (i != -1) {
            Object obj = C26467a.f74235a;
            return Integer.valueOf(C26467a.C26471d.m1787a(context, i));
        }
        return null;
    }

    /* renamed from: b */
    public final int m5645b(Context context, int i, int i2) {
        return i2 != -1 ? context.getResources().getDimensionPixelSize(i2) : (int) TypedValue.applyDimension(2, i, context.getResources().getDisplayMetrics());
    }
}
