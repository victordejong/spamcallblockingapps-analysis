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
import androidx.constraintlayout.solver.widgets.AbstractC0498g;
import androidx.constraintlayout.solver.widgets.C0493d;
import androidx.constraintlayout.solver.widgets.C0499h;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.C0515b;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintHelper.class */
public abstract class ConstraintHelper extends View {

    /* renamed from: d */
    protected int[] f2470d;

    /* renamed from: e */
    protected int f2471e;

    /* renamed from: f */
    protected Context f2472f;

    /* renamed from: g */
    protected AbstractC0498g f2473g;

    /* renamed from: h */
    protected boolean f2474h;

    /* renamed from: i */
    protected String f2475i;

    /* renamed from: j */
    protected String f2476j;

    /* renamed from: k */
    private View[] f2477k;

    /* renamed from: l */
    private HashMap<Integer, String> f2478l;

    public ConstraintHelper(Context context) {
        super(context);
        this.f2470d = new int[32];
        this.f2474h = false;
        this.f2477k = null;
        this.f2478l = new HashMap<>();
        this.f2472f = context;
        mo33660n(null);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2470d = new int[32];
        this.f2474h = false;
        this.f2477k = null;
        this.f2478l = new HashMap<>();
        this.f2472f = context;
        mo33660n(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2470d = new int[32];
        this.f2474h = false;
        this.f2477k = null;
        this.f2478l = new HashMap<>();
        this.f2472f = context;
        mo33660n(attributeSet);
    }

    /* renamed from: e */
    private void m33708e(String str) {
        if (str == null || str.length() == 0 || this.f2472f == null) {
            return;
        }
        String trim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
            ConstraintLayout constraintLayout = (ConstraintLayout) getParent();
        }
        int m33701l = m33701l(trim);
        if (m33701l != 0) {
            this.f2478l.put(Integer.valueOf(m33701l), trim);
            m33707f(m33701l);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
    }

    /* renamed from: f */
    private void m33707f(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.f2471e;
        int[] iArr = this.f2470d;
        if (i2 + 1 > iArr.length) {
            this.f2470d = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f2470d;
        int i3 = this.f2471e;
        iArr2[i3] = i;
        this.f2471e = i3 + 1;
    }

    /* renamed from: g */
    private void m33706g(String str) {
        if (str == null || str.length() == 0 || this.f2472f == null) {
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
            if ((layoutParams instanceof ConstraintLayout.LayoutParams) && trim.equals(((ConstraintLayout.LayoutParams) layoutParams).f2523V)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    m33707f(childAt.getId());
                }
            }
        }
    }

    /* renamed from: j */
    private int[] m33703j(View view, String str) {
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
            int m33701l = m33701l(split[i2].trim());
            int i4 = i;
            if (m33701l != 0) {
                iArr[i] = m33701l;
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
    private int m33702k(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.f2472f.getResources()) == null) {
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
    private int m33701l(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int i = 0;
        if (isInEditMode()) {
            i = 0;
            if (constraintLayout != null) {
                Object m33687g = constraintLayout.m33687g(0, str);
                i = 0;
                if (m33687g instanceof Integer) {
                    i = ((Integer) m33687g).intValue();
                }
            }
        }
        int i2 = i;
        if (i == 0) {
            i2 = i;
            if (constraintLayout != null) {
                i2 = m33702k(constraintLayout, str);
            }
        }
        int i3 = i2;
        if (i2 == 0) {
            try {
                i3 = C0522d.class.getField(str).getInt(null);
            } catch (Exception e) {
                i3 = i2;
            }
        }
        int i4 = i3;
        if (i3 == 0) {
            i4 = this.f2472f.getResources().getIdentifier(str, "id", this.f2472f.getPackageName());
        }
        return i4;
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f2470d, this.f2471e);
    }

    /* renamed from: h */
    public void m33705h() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        m33704i((ConstraintLayout) parent);
    }

    /* renamed from: i */
    protected void m33704i(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
        for (int i = 0; i < this.f2471e; i++) {
            View m33685o = constraintLayout.m33685o(this.f2470d[i]);
            if (m33685o != null) {
                m33685o.setVisibility(visibility);
                if (elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                    m33685o.setTranslationZ(m33685o.getTranslationZ() + elevation);
                }
            }
        }
    }

    /* renamed from: m */
    public View[] m33700m(ConstraintLayout constraintLayout) {
        View[] viewArr = this.f2477k;
        if (viewArr == null || viewArr.length != this.f2471e) {
            this.f2477k = new View[this.f2471e];
        }
        for (int i = 0; i < this.f2471e; i++) {
            this.f2477k[i] = constraintLayout.m33685o(this.f2470d[i]);
        }
        return this.f2477k;
    }

    /* renamed from: n */
    public void mo33660n(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0523e.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f2475i = string;
                    setIds(string);
                } else if (index == C0523e.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.f2476j = string2;
                    setReferenceTags(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: o */
    public void mo33699o(C0515b.C0516a c0516a, C0499h c0499h, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        C0515b.C0517b c0517b = c0516a.f2624d;
        int[] iArr = c0517b.f2664f0;
        if (iArr != null) {
            setReferencedIds(iArr);
        } else {
            String str = c0517b.f2666g0;
            if (str != null && str.length() > 0) {
                C0515b.C0517b c0517b2 = c0516a.f2624d;
                c0517b2.f2664f0 = m33703j(this, c0517b2.f2666g0);
            }
        }
        c0499h.mo33767b();
        if (c0516a.f2624d.f2664f0 != null) {
            int i = 0;
            while (true) {
                int[] iArr2 = c0516a.f2624d.f2664f0;
                if (i >= iArr2.length) {
                    return;
                }
                ConstraintWidget constraintWidget = sparseArray.get(iArr2[i]);
                if (constraintWidget != null) {
                    c0499h.mo33768a(constraintWidget);
                }
                i++;
            }
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f2475i;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f2476j;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f2474h) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    /* renamed from: p */
    public void mo33698p(ConstraintWidget constraintWidget, boolean z) {
    }

    /* renamed from: q */
    public void mo33664q(ConstraintLayout constraintLayout) {
    }

    /* renamed from: r */
    public void m33697r(ConstraintLayout constraintLayout) {
    }

    /* renamed from: s */
    public void mo33696s(ConstraintLayout constraintLayout) {
    }

    protected void setIds(String str) {
        this.f2475i = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f2471e = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m33708e(str.substring(i));
                return;
            } else {
                m33708e(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    protected void setReferenceTags(String str) {
        this.f2476j = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f2471e = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m33706g(str.substring(i));
                return;
            } else {
                m33706g(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f2475i = null;
        this.f2471e = 0;
        for (int i : iArr) {
            m33707f(i);
        }
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.f2475i == null) {
            m33707f(i);
        }
    }

    /* renamed from: t */
    public void m33695t(C0493d c0493d, AbstractC0498g abstractC0498g, SparseArray<ConstraintWidget> sparseArray) {
        abstractC0498g.mo33767b();
        for (int i = 0; i < this.f2471e; i++) {
            abstractC0498g.mo33768a(sparseArray.get(this.f2470d[i]));
        }
    }

    /* renamed from: u */
    public void m33694u(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.f2475i);
        }
        AbstractC0498g abstractC0498g = this.f2473g;
        if (abstractC0498g == null) {
            return;
        }
        abstractC0498g.mo33767b();
        for (int i = 0; i < this.f2471e; i++) {
            int i2 = this.f2470d[i];
            View m33685o = constraintLayout.m33685o(i2);
            View view = m33685o;
            if (m33685o == null) {
                String str = this.f2478l.get(Integer.valueOf(i2));
                int m33702k = m33702k(constraintLayout, str);
                view = m33685o;
                if (m33702k != 0) {
                    this.f2470d[i] = m33702k;
                    this.f2478l.put(Integer.valueOf(m33702k), str);
                    view = constraintLayout.m33685o(m33702k);
                }
            }
            if (view != null) {
                this.f2473g.mo33768a(constraintLayout.m33684p(view));
            }
        }
        this.f2473g.mo33760c(constraintLayout.f2481f);
    }

    /* renamed from: v */
    public void m33693v() {
        if (this.f2473g == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!(layoutParams instanceof ConstraintLayout.LayoutParams)) {
            return;
        }
        ((ConstraintLayout.LayoutParams) layoutParams).f2555n0 = (ConstraintWidget) this.f2473g;
    }
}
