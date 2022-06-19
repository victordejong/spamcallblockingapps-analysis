package p193e.p194a.p1129p5;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import android.util.TypedValue;
import com.razorpay.AnalyticsConstants;
import java.util.Arrays;
import javax.inject.Inject;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.p5.i0 */
/* loaded from: classes15-dex2jar.jar:e/a/p5/i0.class */
public final class C19235i0 implements AbstractC19233h0 {

    /* renamed from: a */
    public final Context f53605a;

    @Inject
    public C19235i0(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f53605a = context;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19223c0
    /* renamed from: H */
    public int mo13770H(int i) {
        return this.f53605a.getResources().getDimensionPixelSize(i);
    }

    @Override // p193e.p194a.p1129p5.AbstractC19223c0
    /* renamed from: a */
    public int mo13769a(int i) {
        return this.f53605a.getResources().getColor(i);
    }

    @Override // p193e.p194a.p1129p5.AbstractC19223c0
    /* renamed from: b */
    public String mo13768b(int i, Object... objArr) {
        l.e(objArr, "formatArgs");
        String string = this.f53605a.getString(i, Arrays.copyOf(objArr, objArr.length));
        l.d(string, "context.getString(resId, *formatArgs)");
        return string;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19223c0
    /* renamed from: c */
    public Drawable mo13767c(int i) {
        Drawable m3540a = C25440a.m3540a(this.f53605a, i);
        if (m3540a != null) {
            return m3540a;
        }
        throw new Resources.NotFoundException(String.valueOf(i));
    }

    @Override // p193e.p194a.p1129p5.AbstractC19223c0
    /* renamed from: d */
    public Integer[] mo13766d(int i) {
        int[] intArray = this.f53605a.getResources().getIntArray(i);
        l.d(intArray, "context.resources.getIntArray(resId)");
        return i.e1(intArray);
    }

    @Override // p193e.p194a.p1129p5.AbstractC19223c0
    /* renamed from: e */
    public int mo13765e(int i) {
        TypedValue typedValue = new TypedValue();
        this.f53605a.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19233h0
    /* renamed from: f */
    public Drawable mo13764f(int i, int i2) {
        Drawable m13535l0 = C19291g.m13535l0(this.f53605a, i, i2);
        l.d(m13535l0, "ThemeUtils.getTintedDraw…, drawableRes, colorAttr)");
        return m13535l0;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19233h0
    /* renamed from: g */
    public Drawable mo13763g(int i) {
        return C19291g.m13600P(this.f53605a, i);
    }

    @Override // p193e.p194a.p1129p5.AbstractC19223c0
    /* renamed from: h */
    public int mo13762h(int i) {
        return this.f53605a.getResources().getInteger(i);
    }

    @Override // p193e.p194a.p1129p5.AbstractC19223c0
    /* renamed from: i */
    public String[] mo13761i(int i) {
        String[] stringArray = this.f53605a.getResources().getStringArray(i);
        l.d(stringArray, "context.resources.getStringArray(resId)");
        return stringArray;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19223c0
    /* renamed from: j */
    public boolean mo13760j(int i) {
        boolean z = false;
        try {
            Resources resources = this.f53605a.getResources();
            ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
            if (resources.getDrawable(i, null) != null) {
                z = true;
            }
        } catch (Resources.NotFoundException e) {
        }
        return z;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19223c0
    /* renamed from: k */
    public String mo13759k(int i, int i2, Object... objArr) {
        l.e(objArr, "formatArgs");
        String quantityString = this.f53605a.getResources().getQuantityString(i, i2, Arrays.copyOf(objArr, objArr.length));
        l.d(quantityString, "context.resources.getQua…d, quantity, *formatArgs)");
        return quantityString;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19233h0
    /* renamed from: l */
    public int mo13758l(int i) {
        return C19291g.m13612L(this.f53605a, i);
    }

    @Override // p193e.p194a.p1129p5.AbstractC19223c0
    /* renamed from: m */
    public Drawable mo13757m(int i) {
        ColorDrawable colorDrawable;
        int i2;
        TypedValue typedValue = new TypedValue();
        if (!this.f53605a.getTheme().resolveAttribute(i, typedValue, true)) {
            colorDrawable = null;
        } else if (typedValue.resourceId != 0 || (i2 = typedValue.type) < 28 || i2 > 31) {
            Resources resources = this.f53605a.getResources();
            l.d(resources, "context.resources");
            colorDrawable = C19291g.m13597Q(resources, typedValue.resourceId, this.f53605a.getTheme());
        } else {
            colorDrawable = new ColorDrawable(typedValue.data);
        }
        return colorDrawable;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19223c0
    /* renamed from: n */
    public CharSequence mo13756n(int i, Object... objArr) {
        Spanned spanned;
        l.e(objArr, "formatArgs");
        if (Build.VERSION.SDK_INT >= 24) {
            spanned = Html.fromHtml(mo13768b(i, Arrays.copyOf(objArr, objArr.length)), 0);
            l.d(spanned, "Html.fromHtml(getString(…AGRAPH_LINES_CONSECUTIVE)");
        } else {
            spanned = Html.fromHtml(mo13768b(i, Arrays.copyOf(objArr, objArr.length)));
            l.d(spanned, "Html.fromHtml(getString(resId, *formatArgs))");
        }
        return spanned;
    }
}
