package p1727n3.p1795i.p1802c;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.C0114R;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import java.util.HashMap;
import p1727n3.p1795i.p1799b.p1800h.AbstractC26366h;
import p1727n3.p1795i.p1799b.p1800h.C26363d;
import p1727n3.p1795i.p1799b.p1800h.C26367i;
import p1727n3.p1795i.p1802c.C26389d;
/* renamed from: n3.i.c.b */
/* loaded from: classes-dex2jar.jar:n3/i/c/b.class */
public abstract class AbstractC26385b extends View {

    /* renamed from: a */
    public int[] f73860a;

    /* renamed from: b */
    public int f73861b;

    /* renamed from: c */
    public Context f73862c;

    /* renamed from: d */
    public AbstractC26366h f73863d;

    /* renamed from: e */
    public String f73864e;

    /* renamed from: f */
    public String f73865f;

    /* renamed from: g */
    public View[] f73866g;

    /* renamed from: h */
    public HashMap<Integer, String> f73867h;

    public AbstractC26385b(Context context) {
        super(context);
        this.f73860a = new int[32];
        this.f73866g = null;
        this.f73867h = new HashMap<>();
        this.f73862c = context;
        mo1941l(null);
    }

    public AbstractC26385b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f73860a = new int[32];
        this.f73866g = null;
        this.f73867h = new HashMap<>();
        this.f73862c = context;
        mo1941l(attributeSet);
    }

    /* renamed from: e */
    public final void m1989e(String str) {
        if (str == null || str.length() == 0 || this.f73862c == null) {
            return;
        }
        String trim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
            ConstraintLayout constraintLayout = (ConstraintLayout) getParent();
        }
        int m1983k = m1983k(trim);
        if (m1983k == 0) {
            return;
        }
        this.f73867h.put(Integer.valueOf(m1983k), trim);
        m1988f(m1983k);
    }

    /* renamed from: f */
    public final void m1988f(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.f73861b;
        int[] iArr = this.f73860a;
        if (i2 + 1 > iArr.length) {
            this.f73860a = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f73860a;
        int i3 = this.f73861b;
        iArr2[i3] = i;
        this.f73861b = i3 + 1;
    }

    /* renamed from: g */
    public final void m1987g(String str) {
        if (str == null || str.length() == 0 || this.f73862c == null) {
            return;
        }
        String trim = str.trim();
        ConstraintLayout constraintLayout = null;
        if (getParent() instanceof ConstraintLayout) {
            constraintLayout = (ConstraintLayout) getParent();
        }
        if (constraintLayout == null) {
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.C0111a) && trim.equals(((ConstraintLayout.C0111a) layoutParams).f617U)) {
                if (childAt.getId() == -1) {
                    childAt.getClass().getSimpleName();
                } else {
                    m1988f(childAt.getId());
                }
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f73860a, this.f73861b);
    }

    /* renamed from: h */
    public void m1986h(View view) {
        if (view == this || view.getId() == -1 || view.getParent() == null) {
            return;
        }
        this.f73864e = null;
        m1988f(view.getId());
        requestLayout();
    }

    /* renamed from: i */
    public void m1985i() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) parent;
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i = 0; i < this.f73861b; i++) {
            View m43035Q0 = constraintLayout.m43035Q0(this.f73860a[i]);
            if (m43035Q0 != null) {
                m43035Q0.setVisibility(visibility);
                if (elevation > 0.0f) {
                    m43035Q0.setTranslationZ(m43035Q0.getTranslationZ() + elevation);
                }
            }
        }
    }

    /* renamed from: j */
    public final int m1984j(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.f73862c.getResources()) == null) {
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
    public final int m1983k(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int i = 0;
        if (isInEditMode()) {
            i = 0;
            if (constraintLayout != null) {
                Object m43036P0 = constraintLayout.m43036P0(0, str);
                i = 0;
                if (m43036P0 instanceof Integer) {
                    i = ((Integer) m43036P0).intValue();
                }
            }
        }
        int i2 = i;
        if (i == 0) {
            i2 = i;
            if (constraintLayout != null) {
                i2 = m1984j(constraintLayout, str);
            }
        }
        int i3 = i2;
        if (i2 == 0) {
            try {
                i3 = C0114R.C0116id.class.getField(str).getInt(null);
            } catch (Exception e) {
                i3 = i2;
            }
        }
        int i4 = i3;
        if (i3 == 0) {
            i4 = this.f73862c.getResources().getIdentifier(str, "id", this.f73862c.getPackageName());
        }
        return i4;
    }

    /* renamed from: l */
    public void mo1941l(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0114R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0114R.styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f73864e = string;
                    setIds(string);
                } else if (index == C0114R.styleable.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.f73865f = string2;
                    setReferenceTags(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: m */
    public void mo1982m(C26389d.C26390a c26390a, C26367i c26367i, ConstraintLayout.C0111a c0111a, SparseArray<C26363d> sparseArray) {
        int i;
        C26389d.C26391b c26391b = c26390a.f73891d;
        int[] iArr = c26391b.f73930e0;
        if (iArr != null) {
            setReferencedIds(iArr);
        } else {
            String str = c26391b.f73932f0;
            if (str != null && str.length() > 0) {
                C26389d.C26391b c26391b2 = c26390a.f73891d;
                String[] split = c26391b2.f73932f0.split(",");
                getContext();
                int[] iArr2 = new int[split.length];
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    i = i3;
                    if (i2 >= split.length) {
                        break;
                    }
                    int m1983k = m1983k(split[i2].trim());
                    int i4 = i;
                    if (m1983k != 0) {
                        iArr2[i] = m1983k;
                        i4 = i + 1;
                    }
                    i2++;
                    i3 = i4;
                }
                int[] iArr3 = iArr2;
                if (i != split.length) {
                    iArr3 = Arrays.copyOf(iArr2, i);
                }
                c26391b2.f73930e0 = iArr3;
            }
        }
        c26367i.mo2042b();
        if (c26390a.f73891d.f73930e0 != null) {
            int i5 = 0;
            while (true) {
                int[] iArr4 = c26390a.f73891d.f73930e0;
                if (i5 >= iArr4.length) {
                    return;
                }
                C26363d c26363d = sparseArray.get(iArr4[i5]);
                if (c26363d != null) {
                    c26367i.mo2043a(c26363d);
                }
                i5++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
        r0 = r5.f73861b - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r8 >= r0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0030, code lost:
        r0 = r5.f73860a;
        r0 = r8 + 1;
        r0[r8] = r0[r0];
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
        r5.f73860a[r0] = 0;
        r5.f73861b = r0;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1981n(android.view.View r6) {
        /*
            r5 = this;
            r0 = r6
            int r0 = r0.getId()
            r7 = r0
            r0 = r7
            r1 = -1
            if (r0 != r1) goto Lb
            return
        Lb:
            r0 = r5
            r1 = 0
            r0.f73864e = r1
            r0 = 0
            r8 = r0
        L12:
            r0 = r8
            r1 = r5
            int r1 = r1.f73861b
            if (r0 >= r1) goto L59
            r0 = r5
            int[] r0 = r0.f73860a
            r1 = r8
            r0 = r0[r1]
            r1 = r7
            if (r0 != r1) goto L53
        L24:
            r0 = r5
            int r0 = r0.f73861b
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L44
            r0 = r5
            int[] r0 = r0.f73860a
            r6 = r0
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
            r0 = r6
            r1 = r8
            r2 = r6
            r3 = r7
            r2 = r2[r3]
            r0[r1] = r2
            r0 = r7
            r8 = r0
            goto L24
        L44:
            r0 = r5
            int[] r0 = r0.f73860a
            r1 = r7
            r2 = 0
            r0[r1] = r2
            r0 = r5
            r1 = r7
            r0.f73861b = r1
            goto L59
        L53:
            int r8 = r8 + 1
            goto L12
        L59:
            r0 = r5
            r0.requestLayout()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1802c.AbstractC26385b.m1981n(android.view.View):void");
    }

    /* renamed from: o */
    public void mo1980o(C26363d c26363d, boolean z) {
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f73864e;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f73865f;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    /* renamed from: p */
    public void mo1979p(ConstraintLayout constraintLayout) {
    }

    /* renamed from: q */
    public void m1978q() {
    }

    /* renamed from: r */
    public void m1977r() {
    }

    /* renamed from: s */
    public void m1976s(AbstractC26366h abstractC26366h, SparseArray sparseArray) {
        abstractC26366h.mo2042b();
        for (int i = 0; i < this.f73861b; i++) {
            abstractC26366h.mo2043a((C26363d) sparseArray.get(this.f73860a[i]));
        }
    }

    public void setIds(String str) {
        this.f73864e = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f73861b = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m1989e(str.substring(i));
                return;
            } else {
                m1989e(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    public void setReferenceTags(String str) {
        this.f73865f = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f73861b = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m1987g(str.substring(i));
                return;
            } else {
                m1987g(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f73864e = null;
        this.f73861b = 0;
        for (int i : iArr) {
            m1988f(i);
        }
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.f73864e == null) {
            m1988f(i);
        }
    }

    /* renamed from: t */
    public void m1975t() {
        if (this.f73863d == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!(layoutParams instanceof ConstraintLayout.C0111a)) {
            return;
        }
        ((ConstraintLayout.C0111a) layoutParams).f646l0 = (C26363d) this.f73863d;
    }
}
