package p019b4;

import android.graphics.Paint;
import android.graphics.Path;
import p087f0.C2694a;
/* renamed from: b4.a */
/* loaded from: classes-dex2jar.jar:b4/a.class */
public class C0728a {

    /* renamed from: i */
    public static final int[] f2776i = new int[3];

    /* renamed from: j */
    public static final float[] f2777j = {0.0f, 0.5f, 1.0f};

    /* renamed from: k */
    public static final int[] f2778k = new int[4];

    /* renamed from: l */
    public static final float[] f2779l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: b */
    public final Paint f2781b;

    /* renamed from: c */
    public final Paint f2782c;

    /* renamed from: d */
    public int f2783d;

    /* renamed from: e */
    public int f2784e;

    /* renamed from: f */
    public int f2785f;

    /* renamed from: g */
    public final Path f2786g = new Path();

    /* renamed from: h */
    public Paint f2787h = new Paint();

    /* renamed from: a */
    public final Paint f2780a = new Paint();

    public C0728a() {
        m7429a(-16777216);
        this.f2787h.setColor(0);
        Paint paint = new Paint(4);
        this.f2781b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f2782c = new Paint(paint);
    }

    /* renamed from: a */
    public void m7429a(int i) {
        this.f2783d = C2694a.m3254e(i, 68);
        this.f2784e = C2694a.m3254e(i, 20);
        this.f2785f = C2694a.m3254e(i, 0);
        this.f2780a.setColor(this.f2783d);
    }
}
