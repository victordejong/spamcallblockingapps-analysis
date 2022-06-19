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
import androidx.constraintlayout.solver.widgets.AbstractC0213g;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.d;
import androidx.constraintlayout.solver.widgets.h;
import androidx.constraintlayout.widget.C0221b;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintHelper.class */
public abstract class ConstraintHelper extends View {

    /* renamed from: b */
    protected int[] f1307b;

    /* renamed from: c */
    protected int f1308c;

    /* renamed from: d */
    protected Context f1309d;

    /* renamed from: e */
    protected AbstractC0213g f1310e;

    /* renamed from: f */
    protected boolean f1311f;

    /* renamed from: g */
    protected String f1312g;

    /* renamed from: h */
    private View[] f1313h;

    /* renamed from: i */
    private HashMap<Integer, String> f1314i;

    public ConstraintHelper(Context context) {
        super(context);
        this.f1307b = new int[32];
        this.f1311f = false;
        this.f1313h = null;
        this.f1314i = new HashMap<>();
        this.f1309d = context;
        m13854m(null);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1307b = new int[32];
        this.f1311f = false;
        this.f1313h = null;
        this.f1314i = new HashMap<>();
        this.f1309d = context;
        m13854m(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1307b = new int[32];
        this.f1311f = false;
        this.f1313h = null;
        this.f1314i = new HashMap<>();
        this.f1309d = context;
        m13854m(attributeSet);
    }

    /* renamed from: e */
    private void m13862e(String str) {
        if (str == null || str.length() == 0 || this.f1309d == null) {
            return;
        }
        String trim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
            ConstraintLayout constraintLayout = (ConstraintLayout) getParent();
        }
        int m13856k = m13856k(trim);
        if (m13856k != 0) {
            this.f1314i.put(Integer.valueOf(m13856k), trim);
            m13861f(m13856k);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
    }

    /* renamed from: f */
    private void m13861f(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.f1308c;
        int[] iArr = this.f1307b;
        if (i2 + 1 > iArr.length) {
            this.f1307b = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f1307b;
        int i3 = this.f1308c;
        iArr2[i3] = i;
        this.f1308c = i3 + 1;
    }

    /* renamed from: i */
    private int[] m13858i(View view, String str) {
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
            int m13856k = m13856k(split[i2].trim());
            int i4 = i;
            if (m13856k != 0) {
                iArr[i] = m13856k;
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

    /* renamed from: j */
    private int m13857j(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.f1309d.getResources()) == null) {
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

    /* renamed from: k */
    private int m13856k(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int i = 0;
        if (isInEditMode()) {
            i = 0;
            if (constraintLayout != null) {
                Object m13841i = constraintLayout.m13841i(0, str);
                i = 0;
                if (m13841i instanceof Integer) {
                    i = ((Integer) m13841i).intValue();
                }
            }
        }
        int i2 = i;
        if (i == 0) {
            i2 = i;
            if (constraintLayout != null) {
                i2 = m13857j(constraintLayout, str);
            }
        }
        int i3 = i2;
        if (i2 == 0) {
            try {
                i3 = C0228d.class.getField(str).getInt(null);
            } catch (Exception e) {
                i3 = i2;
            }
        }
        int i4 = i3;
        if (i3 == 0) {
            i4 = this.f1309d.getResources().getIdentifier(str, "id", this.f1309d.getPackageName());
        }
        return i4;
    }

    /* renamed from: g */
    protected void m13860g() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        m13859h((ConstraintLayout) parent);
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f1307b, this.f1308c);
    }

    /* renamed from: h */
    protected void m13859h(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
        for (int i = 0; i < this.f1308c; i++) {
            View m13839n = constraintLayout.m13839n(this.f1307b[i]);
            if (m13839n != null) {
                m13839n.setVisibility(visibility);
                if (elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                    m13839n.setTranslationZ(m13839n.getTranslationZ() + elevation);
                }
            }
        }
    }

    /* renamed from: l */
    protected View[] m13855l(ConstraintLayout constraintLayout) {
        View[] viewArr = this.f1313h;
        if (viewArr == null || viewArr.length != this.f1308c) {
            this.f1313h = new View[this.f1308c];
        }
        for (int i = 0; i < this.f1308c; i++) {
            this.f1313h[i] = constraintLayout.m13839n(this.f1307b[i]);
        }
        return this.f1313h;
    }

    /* renamed from: m */
    protected void m13854m(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0229e.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0229e.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f1312g = string;
                    setIds(string);
                }
            }
        }
    }

    /* renamed from: n */
    public void m13853n(C0221b.C0222a c0222a, h hVar, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        C0221b.C0223b c0223b = c0222a.f1429d;
        int[] iArr = c0223b.f1468e0;
        if (iArr != null) {
            setReferencedIds(iArr);
        } else {
            String str = c0223b.f1470f0;
            if (str != null && str.length() > 0) {
                C0221b.C0223b c0223b2 = c0222a.f1429d;
                c0223b2.f1468e0 = m13858i(this, c0223b2.f1470f0);
            }
        }
        hVar.c();
        if (c0222a.f1429d.f1468e0 != null) {
            int i = 0;
            while (true) {
                int[] iArr2 = c0222a.f1429d.f1468e0;
                if (i >= iArr2.length) {
                    return;
                }
                ConstraintWidget constraintWidget = sparseArray.get(iArr2[i]);
                if (constraintWidget != null) {
                    hVar.a(constraintWidget);
                }
                i++;
            }
        }
    }

    /* renamed from: o */
    public void m13852o(ConstraintWidget constraintWidget, boolean z) {
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f1312g;
        if (str != null) {
            setIds(str);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f1311f) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    /* renamed from: p */
    public void m13851p(ConstraintLayout constraintLayout) {
    }

    /* renamed from: q */
    public void m13850q(ConstraintLayout constraintLayout) {
    }

    /* renamed from: r */
    public void m13849r(ConstraintLayout constraintLayout) {
    }

    /* renamed from: s */
    public void m13848s(d dVar, AbstractC0213g abstractC0213g, SparseArray<ConstraintWidget> sparseArray) {
        abstractC0213g.m13880c();
        for (int i = 0; i < this.f1308c; i++) {
            abstractC0213g.m13882a(sparseArray.get(this.f1307b[i]));
        }
    }

    protected void setIds(String str) {
        this.f1312g = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f1308c = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m13862e(str.substring(i));
                return;
            } else {
                m13862e(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f1312g = null;
        this.f1308c = 0;
        for (int i : iArr) {
            m13861f(i);
        }
    }

    /* renamed from: t */
    public void m13847t(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.f1312g);
        }
        AbstractC0213g abstractC0213g = this.f1310e;
        if (abstractC0213g == null) {
            return;
        }
        abstractC0213g.m13880c();
        for (int i = 0; i < this.f1308c; i++) {
            int i2 = this.f1307b[i];
            View m13839n = constraintLayout.m13839n(i2);
            View view = m13839n;
            if (m13839n == null) {
                String str = this.f1314i.get(Integer.valueOf(i2));
                int m13857j = m13857j(constraintLayout, str);
                view = m13839n;
                if (m13857j != 0) {
                    this.f1307b[i] = m13857j;
                    this.f1314i.put(Integer.valueOf(m13857j), str);
                    view = constraintLayout.m13839n(m13857j);
                }
            }
            if (view != null) {
                this.f1310e.m13882a(constraintLayout.m13838o(view));
            }
        }
        this.f1310e.m13881b(constraintLayout.f1317d);
    }

    /* renamed from: u */
    public void m13846u() {
        if (this.f1310e == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!(layoutParams instanceof ConstraintLayout.LayoutParams)) {
            return;
        }
        ((ConstraintLayout.LayoutParams) layoutParams).f1383m0 = (ConstraintWidget) this.f1310e;
    }
}
