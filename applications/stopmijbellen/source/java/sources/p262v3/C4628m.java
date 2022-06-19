package p262v3;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import com.google.android.gms.common.api.Api;
import java.lang.reflect.Constructor;
import java.util.Objects;
/* renamed from: v3.m */
/* loaded from: classes-dex2jar.jar:v3/m.class */
public final class C4628m {

    /* renamed from: m */
    public static final int f14301m;

    /* renamed from: n */
    public static boolean f14302n;

    /* renamed from: o */
    public static Constructor<StaticLayout> f14303o;

    /* renamed from: p */
    public static Object f14304p;

    /* renamed from: a */
    public CharSequence f14305a;

    /* renamed from: b */
    public final TextPaint f14306b;

    /* renamed from: c */
    public final int f14307c;

    /* renamed from: d */
    public int f14308d;

    /* renamed from: k */
    public boolean f14315k;

    /* renamed from: e */
    public Layout.Alignment f14309e = Layout.Alignment.ALIGN_NORMAL;

    /* renamed from: f */
    public int f14310f = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* renamed from: g */
    public float f14311g = 0.0f;

    /* renamed from: h */
    public float f14312h = 1.0f;

    /* renamed from: i */
    public int f14313i = f14301m;

    /* renamed from: j */
    public boolean f14314j = true;

    /* renamed from: l */
    public TextUtils.TruncateAt f14316l = null;

    /* renamed from: v3.m$a */
    /* loaded from: classes-dex2jar.jar:v3/m$a.class */
    public static class C4629a extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C4629a(java.lang.Throwable r5) {
            /*
                r4 = this;
                java.lang.String r0 = "Error thrown initializing StaticLayout "
                java.lang.StringBuilder r0 = android.support.p012v4.media.C0082b.m8752j(r0)
                r6 = r0
                r0 = r6
                r1 = r5
                java.lang.String r1 = r1.getMessage()
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r6
                java.lang.String r1 = r1.toString()
                r2 = r5
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p262v3.C4628m.C4629a.<init>(java.lang.Throwable):void");
        }
    }

    static {
        f14301m = Build.VERSION.SDK_INT >= 23 ? 1 : 0;
    }

    public C4628m(CharSequence charSequence, TextPaint textPaint, int i) {
        this.f14305a = charSequence;
        this.f14306b = textPaint;
        this.f14307c = i;
        this.f14308d = charSequence.length();
    }

    /* renamed from: a */
    public StaticLayout m693a() throws C4629a {
        if (this.f14305a == null) {
            this.f14305a = "";
        }
        int max = Math.max(0, this.f14307c);
        CharSequence charSequence = this.f14305a;
        CharSequence charSequence2 = charSequence;
        if (this.f14310f == 1) {
            charSequence2 = TextUtils.ellipsize(charSequence, this.f14306b, max, this.f14316l);
        }
        int min = Math.min(charSequence2.length(), this.f14308d);
        this.f14308d = min;
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            if (this.f14315k && this.f14310f == 1) {
                this.f14309e = Layout.Alignment.ALIGN_OPPOSITE;
            }
            StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence2, 0, min, this.f14306b, max);
            obtain.setAlignment(this.f14309e);
            obtain.setIncludePad(this.f14314j);
            obtain.setTextDirection(this.f14315k ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
            TextUtils.TruncateAt truncateAt = this.f14316l;
            if (truncateAt != null) {
                obtain.setEllipsize(truncateAt);
            }
            obtain.setMaxLines(this.f14310f);
            float f = this.f14311g;
            if (f != 0.0f || this.f14312h != 1.0f) {
                obtain.setLineSpacing(f, this.f14312h);
            }
            if (this.f14310f > 1) {
                obtain.setHyphenationFrequency(this.f14313i);
            }
            return obtain.build();
        }
        if (!f14302n) {
            try {
                f14304p = this.f14315k && i >= 23 ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
                Class cls = Integer.TYPE;
                Class cls2 = Float.TYPE;
                Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls, cls, TextPaint.class, cls, Layout.Alignment.class, TextDirectionHeuristic.class, cls2, cls2, Boolean.TYPE, TextUtils.TruncateAt.class, cls, cls);
                f14303o = declaredConstructor;
                declaredConstructor.setAccessible(true);
                f14302n = true;
            } catch (Exception e) {
                throw new C4629a(e);
            }
        }
        try {
            Constructor<StaticLayout> constructor = f14303o;
            Objects.requireNonNull(constructor);
            int i2 = this.f14308d;
            TextPaint textPaint = this.f14306b;
            Layout.Alignment alignment = this.f14309e;
            Object obj = f14304p;
            Objects.requireNonNull(obj);
            return constructor.newInstance(charSequence2, 0, Integer.valueOf(i2), textPaint, Integer.valueOf(max), alignment, obj, Float.valueOf(1.0f), Float.valueOf(0.0f), Boolean.valueOf(this.f14314j), null, Integer.valueOf(max), Integer.valueOf(this.f14310f));
        } catch (Exception e2) {
            throw new C4629a(e2);
        }
    }
}
