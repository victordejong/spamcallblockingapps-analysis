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
import androidx.constraintlayout.p026a.p027a.AbstractC0549i;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.C0550j;
import androidx.constraintlayout.widget.C0680c;
import androidx.constraintlayout.widget.C0687e;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintHelper.class */
public abstract class ConstraintHelper extends View {

    /* renamed from: a */
    private View[] f2900a;

    /* renamed from: b */
    private HashMap<Integer, String> f2901b;

    /* renamed from: j */
    protected int[] f2902j;

    /* renamed from: k */
    protected int f2903k;

    /* renamed from: l */
    protected Context f2904l;

    /* renamed from: m */
    protected AbstractC0549i f2905m;

    /* renamed from: n */
    protected boolean f2906n;

    /* renamed from: o */
    protected String f2907o;

    /* renamed from: p */
    protected String f2908p;

    public ConstraintHelper(Context context) {
        super(context);
        this.f2902j = new int[32];
        this.f2906n = false;
        this.f2900a = null;
        this.f2901b = new HashMap<>();
        this.f2904l = context;
        mo44729a((AttributeSet) null);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2902j = new int[32];
        this.f2906n = false;
        this.f2900a = null;
        this.f2901b = new HashMap<>();
        this.f2904l = context;
        mo44729a(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2902j = new int[32];
        this.f2906n = false;
        this.f2900a = null;
        this.f2901b = new HashMap<>();
        this.f2904l = context;
        mo44729a(attributeSet);
    }

    /* renamed from: a */
    private int m44759a(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.f2904l.getResources()) == null) {
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

    /* renamed from: a */
    private void m44763a(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.f2903k;
        int[] iArr = this.f2902j;
        if (i2 + 1 > iArr.length) {
            this.f2902j = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f2902j;
        int i3 = this.f2903k;
        iArr2[i3] = i;
        this.f2903k = i3 + 1;
    }

    /* renamed from: a */
    private void m44757a(String str) {
        if (str == null || str.length() == 0 || this.f2904l == null) {
            return;
        }
        String trim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
            getParent();
        }
        int m44751c = m44751c(trim);
        if (m44751c != 0) {
            this.f2901b.put(Integer.valueOf(m44751c), trim);
            m44763a(m44751c);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
    }

    /* renamed from: b */
    private void m44754b(String str) {
        if (str == null || str.length() == 0 || this.f2904l == null) {
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
            if ((layoutParams instanceof ConstraintLayout.LayoutParams) && trim.equals(((ConstraintLayout.LayoutParams) layoutParams).f2955V)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    m44763a(childAt.getId());
                }
            }
        }
    }

    /* renamed from: c */
    private int m44751c(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int i = 0;
        if (isInEditMode()) {
            i = 0;
            if (constraintLayout != null) {
                Object m44741a = constraintLayout.m44741a(str);
                i = 0;
                if (m44741a instanceof Integer) {
                    i = ((Integer) m44741a).intValue();
                }
            }
        }
        int i2 = i;
        if (i == 0) {
            i2 = i;
            if (constraintLayout != null) {
                i2 = m44759a(constraintLayout, str);
            }
        }
        int i3 = i2;
        if (i2 == 0) {
            try {
                i3 = C0687e.C0688a.class.getField(str).getInt(null);
            } catch (Exception e) {
                i3 = i2;
            }
        }
        int i4 = i3;
        if (i3 == 0) {
            i4 = this.f2904l.getResources().getIdentifier(str, "id", this.f2904l.getPackageName());
        }
        return i4;
    }

    /* renamed from: d */
    private void m44749d(String str) {
        this.f2907o = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f2903k = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m44757a(str.substring(i));
                return;
            } else {
                m44757a(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    /* renamed from: e */
    private void m44748e(String str) {
        this.f2908p = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f2903k = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m44754b(str.substring(i));
                return;
            } else {
                m44754b(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    /* renamed from: a */
    public void mo44731a() {
    }

    /* renamed from: a */
    public void mo44729a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0687e.C0689b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f2907o = string;
                    m44749d(string);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.f2908p = string2;
                    m44748e(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    public void mo44762a(C0541e c0541e, boolean z) {
    }

    /* renamed from: a */
    public final void m44761a(AbstractC0549i abstractC0549i, SparseArray<C0541e> sparseArray) {
        abstractC0549i.mo45178h();
        for (int i = 0; i < this.f2903k; i++) {
            abstractC0549i.mo45181a(sparseArray.get(this.f2902j[i]));
        }
    }

    /* renamed from: a */
    public void mo44760a(ConstraintLayout constraintLayout) {
    }

    /* renamed from: a */
    public void mo44758a(C0680c.C0681a c0681a, C0550j c0550j, ConstraintLayout.LayoutParams layoutParams, SparseArray<C0541e> sparseArray) {
        int i;
        if (c0681a.f3063d.f3098ae != null) {
            setReferencedIds(c0681a.f3063d.f3098ae);
        } else if (c0681a.f3063d.f3099af != null && c0681a.f3063d.f3099af.length() > 0) {
            C0680c.C0682b c0682b = c0681a.f3063d;
            String[] split = c0681a.f3063d.f3099af.split(",");
            getContext();
            int[] iArr = new int[split.length];
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= split.length) {
                    break;
                }
                int m44751c = m44751c(split[i2].trim());
                int i4 = i;
                if (m44751c != 0) {
                    iArr[i] = m44751c;
                    i4 = i + 1;
                }
                i2++;
                i3 = i4;
            }
            int[] iArr2 = iArr;
            if (i != split.length) {
                iArr2 = Arrays.copyOf(iArr, i);
            }
            c0682b.f3098ae = iArr2;
        }
        c0550j.mo45178h();
        if (c0681a.f3063d.f3098ae != null) {
            for (int i5 = 0; i5 < c0681a.f3063d.f3098ae.length; i5++) {
                C0541e c0541e = sparseArray.get(c0681a.f3063d.f3098ae[i5]);
                if (c0541e != null) {
                    c0550j.mo45181a(c0541e);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m44755b(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            m44749d(this.f2907o);
        }
        AbstractC0549i abstractC0549i = this.f2905m;
        if (abstractC0549i == null) {
            return;
        }
        abstractC0549i.mo45178h();
        for (int i = 0; i < this.f2903k; i++) {
            int i2 = this.f2902j[i];
            View viewById = constraintLayout.getViewById(i2);
            View view = viewById;
            if (viewById == null) {
                String str = this.f2901b.get(Integer.valueOf(i2));
                int m44759a = m44759a(constraintLayout, str);
                view = viewById;
                if (m44759a != 0) {
                    this.f2902j[i] = m44759a;
                    this.f2901b.put(Integer.valueOf(m44759a), str);
                    view = constraintLayout.getViewById(m44759a);
                }
            }
            if (view != null) {
                this.f2905m.mo45181a(constraintLayout.m44744a(view));
            }
        }
        this.f2905m.mo45170f_();
    }

    /* renamed from: b */
    public final int[] m44756b() {
        return Arrays.copyOf(this.f2902j, this.f2903k);
    }

    /* renamed from: c */
    public final void m44753c() {
        if (this.f2905m == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!(layoutParams instanceof ConstraintLayout.LayoutParams)) {
            return;
        }
        ((ConstraintLayout.LayoutParams) layoutParams).f2974an = (C0541e) this.f2905m;
    }

    /* renamed from: c */
    public final View[] m44752c(ConstraintLayout constraintLayout) {
        View[] viewArr = this.f2900a;
        if (viewArr == null || viewArr.length != this.f2903k) {
            this.f2900a = new View[this.f2903k];
        }
        for (int i = 0; i < this.f2903k; i++) {
            this.f2900a[i] = constraintLayout.getViewById(this.f2902j[i]);
        }
        return this.f2900a;
    }

    /* renamed from: d */
    public final void m44750d() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) parent;
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
        for (int i = 0; i < this.f2903k; i++) {
            View viewById = constraintLayout.getViewById(this.f2902j[i]);
            if (viewById != null) {
                viewById.setVisibility(visibility);
                if (elevation > BitmapDescriptorFactory.HUE_RED && Build.VERSION.SDK_INT >= 21) {
                    viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                }
            }
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f2907o;
        if (str != null) {
            m44749d(str);
        }
        String str2 = this.f2908p;
        if (str2 != null) {
            m44748e(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f2906n) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f2907o = null;
        this.f2903k = 0;
        for (int i : iArr) {
            m44763a(i);
        }
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.f2907o == null) {
            m44763a(i);
        }
    }
}
