package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.core.graphics.C0529a;
/* renamed from: androidx.appcompat.widget.ak */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ak.class */
public class C0312ak {

    /* renamed from: i */
    private static final ThreadLocal<TypedValue> f1327i = new ThreadLocal<>();

    /* renamed from: a */
    static final int[] f1319a = {-16842910};

    /* renamed from: b */
    static final int[] f1320b = {16842908};

    /* renamed from: c */
    static final int[] f1321c = {16843518};

    /* renamed from: d */
    static final int[] f1322d = {16842919};

    /* renamed from: e */
    static final int[] f1323e = {16842912};

    /* renamed from: f */
    static final int[] f1324f = {16842913};

    /* renamed from: g */
    static final int[] f1325g = {-16842919, -16842908};

    /* renamed from: h */
    static final int[] f1326h = new int[0];

    /* renamed from: j */
    private static final int[] f1328j = new int[1];

    /* renamed from: a */
    public static int m21450a(Context context, int i) {
        f1328j[0] = i;
        C0317ap m21434a = C0317ap.m21434a(context, (AttributeSet) null, f1328j);
        try {
            return m21434a.m21430b(0, 0);
        } finally {
            m21434a.m21441a();
        }
    }

    /* renamed from: a */
    static int m21449a(Context context, int i, float f) {
        int m21450a = m21450a(context, i);
        return C0529a.m20633b(m21450a, Math.round(Color.alpha(m21450a) * f));
    }

    /* renamed from: a */
    private static TypedValue m21451a() {
        TypedValue typedValue = f1327i.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            f1327i.set(typedValue2);
        }
        return typedValue2;
    }

    /* renamed from: b */
    public static ColorStateList m21448b(Context context, int i) {
        f1328j[0] = i;
        C0317ap m21434a = C0317ap.m21434a(context, (AttributeSet) null, f1328j);
        try {
            return m21434a.m21425e(0);
        } finally {
            m21434a.m21441a();
        }
    }

    /* renamed from: c */
    public static int m21447c(Context context, int i) {
        int m21449a;
        ColorStateList m21448b = m21448b(context, i);
        if (m21448b == null || !m21448b.isStateful()) {
            TypedValue m21451a = m21451a();
            context.getTheme().resolveAttribute(16842803, m21451a, true);
            m21449a = m21449a(context, i, m21451a.getFloat());
        } else {
            m21449a = m21448b.getColorForState(f1319a, m21448b.getDefaultColor());
        }
        return m21449a;
    }
}
