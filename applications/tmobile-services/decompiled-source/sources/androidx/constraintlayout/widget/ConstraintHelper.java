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
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import androidx.constraintlayout.widget.C0178R;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.Arrays;
import java.util.HashMap;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintHelper.class */
public abstract class ConstraintHelper extends View {

    /* renamed from: f */
    protected int[] f2496f;

    /* renamed from: g */
    protected int f2497g;

    /* renamed from: h */
    protected Context f2498h;

    /* renamed from: i */
    protected Helper f2499i;

    /* renamed from: j */
    protected boolean f2500j;

    /* renamed from: k */
    protected String f2501k;

    /* renamed from: l */
    private View[] f2502l;

    /* renamed from: m */
    private HashMap<Integer, String> f2503m;

    public ConstraintHelper(Context context) {
        super(context);
        this.f2496f = new int[32];
        this.f2500j = false;
        this.f2502l = null;
        this.f2503m = new HashMap<>();
        this.f2498h = context;
        mo19955m(null);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2496f = new int[32];
        this.f2500j = false;
        this.f2502l = null;
        this.f2503m = new HashMap<>();
        this.f2498h = context;
        mo19955m(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2496f = new int[32];
        this.f2500j = false;
        this.f2502l = null;
        this.f2503m = new HashMap<>();
        this.f2498h = context;
        mo19955m(attributeSet);
    }

    /* renamed from: e */
    private void m20065e(String str) {
        if (str != null && str.length() != 0 && this.f2498h != null) {
            String trim = str.trim();
            if (getParent() instanceof ConstraintLayout) {
                ConstraintLayout constraintLayout = (ConstraintLayout) getParent();
            }
            int k = m20059k(trim);
            if (k != 0) {
                this.f2503m.put(Integer.valueOf(k), trim);
                m20064f(k);
                return;
            }
            Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
        }
    }

    /* renamed from: f */
    private void m20064f(int i) {
        if (i != getId()) {
            int i2 = this.f2497g;
            int[] iArr = this.f2496f;
            if (i2 + 1 > iArr.length) {
                this.f2496f = Arrays.copyOf(iArr, iArr.length * 2);
            }
            int[] iArr2 = this.f2496f;
            int i3 = this.f2497g;
            iArr2[i3] = i;
            this.f2497g = i3 + 1;
        }
    }

    /* renamed from: i */
    private int[] m20061i(View view, String str) {
        String[] split = str.split(",");
        view.getContext();
        int[] iArr = new int[split.length];
        int i = 0;
        for (String str2 : split) {
            int k = m20059k(str2.trim());
            i = i;
            if (k != 0) {
                iArr[i] = k;
                i++;
            }
        }
        int[] iArr2 = iArr;
        if (i != split.length) {
            iArr2 = Arrays.copyOf(iArr, i);
        }
        return iArr2;
    }

    /* renamed from: j */
    private int m20060j(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.f2498h.getResources()) == null) {
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
    private int m20059k(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int i = 0;
        if (isInEditMode()) {
            i = 0;
            if (constraintLayout != null) {
                Object f = constraintLayout.m20045f(0, str);
                i = 0;
                if (f instanceof Integer) {
                    i = ((Integer) f).intValue();
                }
            }
        }
        int i2 = i;
        if (i == 0) {
            i2 = i;
            if (constraintLayout != null) {
                i2 = m20060j(constraintLayout, str);
            }
        }
        int i3 = i2;
        if (i2 == 0) {
            try {
                i3 = C0178R.C0181id.class.getField(str).getInt(null);
            } catch (Exception e) {
                i3 = i2;
            }
        }
        int i4 = i3;
        if (i3 == 0) {
            i4 = this.f2498h.getResources().getIdentifier(str, Name.MARK, this.f2498h.getPackageName());
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void m20063g() {
        ViewParent parent = getParent();
        if (parent != null && (parent instanceof ConstraintLayout)) {
            m20062h((ConstraintLayout) parent);
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f2496f, this.f2497g);
    }

    /* renamed from: h */
    protected void m20062h(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
        for (int i = 0; i < this.f2497g; i++) {
            View h = constraintLayout.m20043h(this.f2496f[i]);
            if (h != null) {
                h.setVisibility(visibility);
                if (elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                    h.setTranslationZ(h.getTranslationZ() + elevation);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l */
    public View[] m20058l(ConstraintLayout constraintLayout) {
        View[] viewArr = this.f2502l;
        if (viewArr == null || viewArr.length != this.f2497g) {
            this.f2502l = new View[this.f2497g];
        }
        for (int i = 0; i < this.f2497g; i++) {
            this.f2502l[i] = constraintLayout.m20043h(this.f2496f[i]);
        }
        return this.f2502l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: m */
    public void mo19955m(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0178R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f2501k = string;
                    setIds(string);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: n */
    public void mo20057n(ConstraintSet.Constraint constraint, HelperWidget helperWidget, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        ConstraintSet.Layout layout = constraint.f2624d;
        int[] iArr = layout.f2663e0;
        if (iArr != null) {
            setReferencedIds(iArr);
        } else {
            String str = layout.f2665f0;
            if (str != null && str.length() > 0) {
                ConstraintSet.Layout layout2 = constraint.f2624d;
                layout2.f2663e0 = m20061i(this, layout2.f2665f0);
            }
        }
        helperWidget.mo20197b();
        if (constraint.f2624d.f2663e0 != null) {
            int i = 0;
            while (true) {
                int[] iArr2 = constraint.f2624d.f2663e0;
                if (i < iArr2.length) {
                    ConstraintWidget constraintWidget = sparseArray.get(iArr2[i]);
                    if (constraintWidget != null) {
                        helperWidget.mo20198a(constraintWidget);
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: o */
    public void mo20056o(ConstraintWidget constraintWidget, boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f2501k;
        if (str != null) {
            setIds(str);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f2500j) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    /* renamed from: p */
    public void mo19966p(ConstraintLayout constraintLayout) {
    }

    /* renamed from: q */
    public void m20055q(ConstraintLayout constraintLayout) {
    }

    /* renamed from: r */
    public void mo20054r(ConstraintLayout constraintLayout) {
    }

    /* renamed from: s */
    public void m20053s(ConstraintWidgetContainer constraintWidgetContainer, Helper helper, SparseArray<ConstraintWidget> sparseArray) {
        helper.mo20197b();
        for (int i = 0; i < this.f2497g; i++) {
            helper.mo20198a(sparseArray.get(this.f2496f[i]));
        }
    }

    protected void setIds(String str) {
        this.f2501k = str;
        if (str != null) {
            int i = 0;
            this.f2497g = 0;
            while (true) {
                int indexOf = str.indexOf(44, i);
                if (indexOf == -1) {
                    m20065e(str.substring(i));
                    return;
                } else {
                    m20065e(str.substring(i, indexOf));
                    i = indexOf + 1;
                }
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f2501k = null;
        this.f2497g = 0;
        for (int i : iArr) {
            m20064f(i);
        }
    }

    /* renamed from: t */
    public void m20052t(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.f2501k);
        }
        Helper helper = this.f2499i;
        if (helper != null) {
            helper.mo20197b();
            for (int i = 0; i < this.f2497g; i++) {
                int i2 = this.f2496f[i];
                View h = constraintLayout.m20043h(i2);
                View view = h;
                if (h == null) {
                    String str = this.f2503m.get(Integer.valueOf(i2));
                    int j = m20060j(constraintLayout, str);
                    view = h;
                    if (j != 0) {
                        this.f2496f[i] = j;
                        this.f2503m.put(Integer.valueOf(j), str);
                        view = constraintLayout.m20043h(j);
                    }
                }
                if (view != null) {
                    this.f2499i.mo20198a(constraintLayout.m20042o(view));
                }
            }
            this.f2499i.mo20190c(constraintLayout.f2506h);
        }
    }

    /* renamed from: u */
    public void m20051u() {
        if (this.f2499i != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams instanceof ConstraintLayout.LayoutParams) {
                ((ConstraintLayout.LayoutParams) layoutParams).f2575m0 = (ConstraintWidget) this.f2499i;
            }
        }
    }
}
