package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import java.util.HashMap;
import p000.C0012a7;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintHelper.class */
public abstract class ConstraintHelper extends View {

    /* renamed from: a */
    public int[] f681a;

    /* renamed from: b */
    public int f682b;

    /* renamed from: c */
    public Context f683c;

    /* renamed from: d */
    public AbstractC1277d6 f684d;

    /* renamed from: f */
    public boolean f685f;

    /* renamed from: g */
    public String f686g;

    /* renamed from: h */
    public String f687h;

    /* renamed from: j */
    public View[] f688j;

    /* renamed from: k */
    public HashMap<Integer, String> f689k;

    public ConstraintHelper(Context context) {
        super(context);
        this.f681a = new int[32];
        this.f685f = false;
        this.f688j = null;
        this.f689k = new HashMap<>();
        this.f683c = context;
        m6854n(null);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f681a = new int[32];
        this.f685f = false;
        this.f688j = null;
        this.f689k = new HashMap<>();
        this.f683c = context;
        m6854n(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f681a = new int[32];
        this.f685f = false;
        this.f688j = null;
        this.f689k = new HashMap<>();
        this.f683c = context;
        m6854n(attributeSet);
    }

    /* renamed from: e */
    public final void m6863e(String str) {
        if (str == null || str.length() == 0 || this.f683c == null) {
            return;
        }
        String trim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
            ConstraintLayout constraintLayout = (ConstraintLayout) getParent();
        }
        int m6856l = m6856l(trim);
        if (m6856l != 0) {
            this.f689k.put(Integer.valueOf(m6856l), trim);
            m6862f(m6856l);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
    }

    /* renamed from: f */
    public final void m6862f(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.f682b;
        int[] iArr = this.f681a;
        if (i2 + 1 > iArr.length) {
            this.f681a = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f681a;
        int i3 = this.f682b;
        iArr2[i3] = i;
        this.f682b = i3 + 1;
    }

    /* renamed from: g */
    public final void m6861g(String str) {
        if (str == null || str.length() == 0 || this.f683c == null) {
            return;
        }
        String trim = str.trim();
        ConstraintLayout constraintLayout = null;
        if (getParent() instanceof ConstraintLayout) {
            constraintLayout = (ConstraintLayout) getParent();
        }
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.LayoutParams) && trim.equals(((ConstraintLayout.LayoutParams) layoutParams).f710U)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    m6862f(childAt.getId());
                }
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f681a, this.f682b);
    }

    /* renamed from: h */
    public void m6860h() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        m6859i((ConstraintLayout) parent);
    }

    /* renamed from: i */
    public void m6859i(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
        for (int i = 0; i < this.f682b; i++) {
            View viewById = constraintLayout.getViewById(this.f681a[i]);
            if (viewById != null) {
                viewById.setVisibility(visibility);
                if (elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                    viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                }
            }
        }
    }

    /* renamed from: j */
    public final int[] m6858j(View view, String str) {
        int i;
        String[] split = str.split(",");
        view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= split.length) {
                break;
            }
            int m6856l = m6856l(split[i2].trim());
            int i4 = i;
            if (m6856l != 0) {
                iArr[i] = m6856l;
                i4 = i + 1;
            }
            i2++;
            i3 = i4;
        }
        int[] iArr2 = iArr;
        if (i != split.length) {
            iArr2 = Arrays.copyOf(iArr, i);
        }
        return iArr2;
    }

    /* renamed from: k */
    public final int m6857k(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.f683c.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            if (childAt.getId() != -1) {
                String str2 = null;
                try {
                    str2 = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException e) {
                }
                if (str.equals(str2)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    /* renamed from: l */
    public final int m6856l(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int i = 0;
        if (isInEditMode()) {
            i = 0;
            if (constraintLayout != null) {
                Object designInformation = constraintLayout.getDesignInformation(0, str);
                i = 0;
                if (designInformation instanceof Integer) {
                    i = ((Integer) designInformation).intValue();
                }
            }
        }
        int i2 = i;
        if (i == 0) {
            i2 = i;
            if (constraintLayout != null) {
                i2 = m6857k(constraintLayout, str);
            }
        }
        int i3 = i2;
        if (i2 == 0) {
            try {
                i3 = C0285c7.class.getField(str).getInt(null);
            } catch (Exception e) {
                i3 = i2;
            }
        }
        int i4 = i3;
        if (i3 == 0) {
            i4 = this.f683c.getResources().getIdentifier(str, "id", this.f683c.getPackageName());
        }
        return i4;
    }

    /* renamed from: m */
    public View[] m6855m(ConstraintLayout constraintLayout) {
        View[] viewArr = this.f688j;
        if (viewArr == null || viewArr.length != this.f682b) {
            this.f688j = new View[this.f682b];
        }
        for (int i = 0; i < this.f682b; i++) {
            this.f688j[i] = constraintLayout.getViewById(this.f681a[i]);
        }
        return this.f688j;
    }

    /* renamed from: n */
    public void m6854n(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C1278d7.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C1278d7.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f686g = string;
                    setIds(string);
                } else if (index == C1278d7.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.f687h = string2;
                    setReferenceTags(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: o */
    public void m6853o(C0012a7.C0013a c0013a, e6 e6Var, ConstraintLayout.LayoutParams layoutParams, SparseArray<z5> sparseArray) {
        C0012a7.C0014b c0014b = c0013a.f83d;
        int[] iArr = c0014b.f122e0;
        if (iArr != null) {
            setReferencedIds(iArr);
        } else {
            String str = c0014b.f124f0;
            if (str != null && str.length() > 0) {
                C0012a7.C0014b c0014b2 = c0013a.f83d;
                c0014b2.f122e0 = m6858j(this, c0014b2.f124f0);
            }
        }
        e6Var.b();
        if (c0013a.f83d.f122e0 != null) {
            int i = 0;
            while (true) {
                int[] iArr2 = c0013a.f83d.f122e0;
                if (i >= iArr2.length) {
                    return;
                }
                z5 z5Var = sparseArray.get(iArr2[i]);
                if (z5Var != null) {
                    e6Var.a(z5Var);
                }
                i++;
            }
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f686g;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f687h;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f685f) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    /* renamed from: p */
    public void m6852p(z5 z5Var, boolean z) {
    }

    /* renamed from: q */
    public void m6851q(ConstraintLayout constraintLayout) {
    }

    /* renamed from: r */
    public void m6850r(ConstraintLayout constraintLayout) {
    }

    /* renamed from: s */
    public void m6849s(ConstraintLayout constraintLayout) {
    }

    public void setIds(String str) {
        this.f686g = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f682b = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m6863e(str.substring(i));
                return;
            } else {
                m6863e(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    public void setReferenceTags(String str) {
        this.f687h = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f682b = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m6861g(str.substring(i));
                return;
            } else {
                m6861g(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f686g = null;
        this.f682b = 0;
        for (int i : iArr) {
            m6862f(i);
        }
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.f686g == null) {
            m6862f(i);
        }
    }

    /* renamed from: t */
    public void m6848t(a6 a6Var, AbstractC1277d6 abstractC1277d6, SparseArray<z5> sparseArray) {
        abstractC1277d6.m2809b();
        for (int i = 0; i < this.f682b; i++) {
            abstractC1277d6.m2810a(sparseArray.get(this.f681a[i]));
        }
    }

    /* renamed from: u */
    public void m6847u(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.f686g);
        }
        AbstractC1277d6 abstractC1277d6 = this.f684d;
        if (abstractC1277d6 == null) {
            return;
        }
        abstractC1277d6.m2809b();
        for (int i = 0; i < this.f682b; i++) {
            int i2 = this.f681a[i];
            View viewById = constraintLayout.getViewById(i2);
            View view = viewById;
            if (viewById == null) {
                String str = this.f689k.get(Integer.valueOf(i2));
                int m6857k = m6857k(constraintLayout, str);
                view = viewById;
                if (m6857k != 0) {
                    this.f681a[i] = m6857k;
                    this.f689k.put(Integer.valueOf(m6857k), str);
                    view = constraintLayout.getViewById(m6857k);
                }
            }
            if (view != null) {
                this.f684d.m2810a(constraintLayout.getViewWidget(view));
            }
        }
        this.f684d.m2808c(constraintLayout.mLayoutWidget);
    }

    /* renamed from: v */
    public void m6846v() {
        if (this.f684d == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!(layoutParams instanceof ConstraintLayout.LayoutParams)) {
            return;
        }
        ((ConstraintLayout.LayoutParams) layoutParams).f741m0 = this.f684d;
    }
}
