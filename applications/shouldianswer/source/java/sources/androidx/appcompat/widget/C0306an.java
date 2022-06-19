package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.core.graphics.C0569a;
/* renamed from: androidx.appcompat.widget.an */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/an.class */
public class C0306an {

    /* renamed from: i */
    private static final ThreadLocal<TypedValue> f1270i = new ThreadLocal<>();

    /* renamed from: a */
    static final int[] f1262a = {-16842910};

    /* renamed from: b */
    static final int[] f1263b = {16842908};

    /* renamed from: c */
    static final int[] f1264c = {16843518};

    /* renamed from: d */
    static final int[] f1265d = {16842919};

    /* renamed from: e */
    static final int[] f1266e = {16842912};

    /* renamed from: f */
    static final int[] f1267f = {16842913};

    /* renamed from: g */
    static final int[] f1268g = {-16842919, -16842908};

    /* renamed from: h */
    static final int[] f1269h = new int[0];

    /* renamed from: j */
    private static final int[] f1271j = new int[1];

    /* renamed from: a */
    public static int m7173a(Context context, int i) {
        int[] iArr = f1271j;
        iArr[0] = i;
        C0311as m7157a = C0311as.m7157a(context, (AttributeSet) null, iArr);
        try {
            return m7157a.m7153b(0, 0);
        } finally {
            m7157a.m7164a();
        }
    }

    /* renamed from: a */
    static int m7172a(Context context, int i, float f) {
        int m7173a = m7173a(context, i);
        return C0569a.m6171b(m7173a, Math.round(Color.alpha(m7173a) * f));
    }

    /* renamed from: a */
    private static TypedValue m7174a() {
        TypedValue typedValue = f1270i.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            f1270i.set(typedValue2);
        }
        return typedValue2;
    }

    /* renamed from: b */
    public static ColorStateList m7171b(Context context, int i) {
        int[] iArr = f1271j;
        iArr[0] = i;
        C0311as m7157a = C0311as.m7157a(context, (AttributeSet) null, iArr);
        try {
            return m7157a.m7148e(0);
        } finally {
            m7157a.m7164a();
        }
    }

    /* renamed from: c */
    public static int m7170c(Context context, int i) {
        ColorStateList m7171b = m7171b(context, i);
        if (m7171b == null || !m7171b.isStateful()) {
            TypedValue m7174a = m7174a();
            context.getTheme().resolveAttribute(16842803, m7174a, true);
            return m7172a(context, i, m7174a.getFloat());
        }
        return m7171b.getColorForState(f1262a, m7171b.getDefaultColor());
    }
}
