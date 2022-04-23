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
import androidx.constraintlayout.a.a.i;
import androidx.constraintlayout.a.a.j;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import androidx.constraintlayout.widget.e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintHelper.class */
public abstract class ConstraintHelper extends View {

    /* renamed from: a  reason: collision with root package name */
    private View[] f1582a;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<Integer, String> f1583b;
    protected int[] j;
    protected int k;
    protected Context l;
    protected i m;
    protected boolean n;
    protected String o;
    protected String p;

    public ConstraintHelper(Context context) {
        super(context);
        this.j = new int[32];
        this.n = false;
        this.f1582a = null;
        this.f1583b = new HashMap<>();
        this.l = context;
        a((AttributeSet) null);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.j = new int[32];
        this.n = false;
        this.f1582a = null;
        this.f1583b = new HashMap<>();
        this.l = context;
        a(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = new int[32];
        this.n = false;
        this.f1582a = null;
        this.f1583b = new HashMap<>();
        this.l = context;
        a(attributeSet);
    }

    private int a(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.l.getResources()) == null) {
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

    private void a(int i) {
        if (i != getId()) {
            int i2 = this.k;
            int[] iArr = this.j;
            if (i2 + 1 > iArr.length) {
                this.j = Arrays.copyOf(iArr, iArr.length * 2);
            }
            int[] iArr2 = this.j;
            int i3 = this.k;
            iArr2[i3] = i;
            this.k = i3 + 1;
        }
    }

    private void a(String str) {
        if (str != null && str.length() != 0 && this.l != null) {
            String trim = str.trim();
            if (getParent() instanceof ConstraintLayout) {
                getParent();
            }
            int c2 = c(trim);
            if (c2 != 0) {
                this.f1583b.put(Integer.valueOf(c2), trim);
                a(c2);
                return;
            }
            Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
        }
    }

    private void b(String str) {
        if (!(str == null || str.length() == 0 || this.l == null)) {
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
                if ((layoutParams instanceof ConstraintLayout.LayoutParams) && trim.equals(((ConstraintLayout.LayoutParams) layoutParams).V)) {
                    if (childAt.getId() == -1) {
                        Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                    } else {
                        a(childAt.getId());
                    }
                }
            }
        }
    }

    private int c(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int i = 0;
        if (isInEditMode()) {
            i = 0;
            if (constraintLayout != null) {
                Object a2 = constraintLayout.a(str);
                i = 0;
                if (a2 instanceof Integer) {
                    i = ((Integer) a2).intValue();
                }
            }
        }
        int i2 = i;
        if (i == 0) {
            i2 = i;
            if (constraintLayout != null) {
                i2 = a(constraintLayout, str);
            }
        }
        int i3 = i2;
        if (i2 == 0) {
            try {
                i3 = e.a.class.getField(str).getInt(null);
            } catch (Exception e) {
                i3 = i2;
            }
        }
        int i4 = i3;
        if (i3 == 0) {
            i4 = this.l.getResources().getIdentifier(str, "id", this.l.getPackageName());
        }
        return i4;
    }

    private void d(String str) {
        this.o = str;
        if (str != null) {
            int i = 0;
            this.k = 0;
            while (true) {
                int indexOf = str.indexOf(44, i);
                if (indexOf == -1) {
                    a(str.substring(i));
                    return;
                } else {
                    a(str.substring(i, indexOf));
                    i = indexOf + 1;
                }
            }
        }
    }

    private void e(String str) {
        this.p = str;
        if (str != null) {
            int i = 0;
            this.k = 0;
            while (true) {
                int indexOf = str.indexOf(44, i);
                if (indexOf == -1) {
                    b(str.substring(i));
                    return;
                } else {
                    b(str.substring(i, indexOf));
                    i = indexOf + 1;
                }
            }
        }
    }

    public void a() {
    }

    public void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, e.b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = obtainStyledAttributes.getString(index);
                    this.o = string;
                    d(string);
                } else if (index == e.b.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.p = string2;
                    e(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void a(androidx.constraintlayout.a.a.e eVar, boolean z) {
    }

    public final void a(i iVar, SparseArray<androidx.constraintlayout.a.a.e> sparseArray) {
        iVar.h();
        for (int i = 0; i < this.k; i++) {
            iVar.a(sparseArray.get(this.j[i]));
        }
    }

    public void a(ConstraintLayout constraintLayout) {
    }

    public void a(c.a aVar, j jVar, ConstraintLayout.LayoutParams layoutParams, SparseArray<androidx.constraintlayout.a.a.e> sparseArray) {
        if (aVar.f1628d.ae != null) {
            setReferencedIds(aVar.f1628d.ae);
        } else if (aVar.f1628d.af != null && aVar.f1628d.af.length() > 0) {
            c.b bVar = aVar.f1628d;
            String[] split = aVar.f1628d.af.split(",");
            getContext();
            int[] iArr = new int[split.length];
            int i = 0;
            for (String str : split) {
                int c2 = c(str.trim());
                i = i;
                if (c2 != 0) {
                    iArr[i] = c2;
                    i++;
                }
            }
            int[] iArr2 = iArr;
            if (i != split.length) {
                iArr2 = Arrays.copyOf(iArr, i);
            }
            bVar.ae = iArr2;
        }
        jVar.h();
        if (aVar.f1628d.ae != null) {
            for (int i2 = 0; i2 < aVar.f1628d.ae.length; i2++) {
                androidx.constraintlayout.a.a.e eVar = sparseArray.get(aVar.f1628d.ae[i2]);
                if (eVar != null) {
                    jVar.a(eVar);
                }
            }
        }
    }

    public final void b(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            d(this.o);
        }
        i iVar = this.m;
        if (iVar != null) {
            iVar.h();
            for (int i = 0; i < this.k; i++) {
                int i2 = this.j[i];
                View viewById = constraintLayout.getViewById(i2);
                View view = viewById;
                if (viewById == null) {
                    String str = this.f1583b.get(Integer.valueOf(i2));
                    int a2 = a(constraintLayout, str);
                    view = viewById;
                    if (a2 != 0) {
                        this.j[i] = a2;
                        this.f1583b.put(Integer.valueOf(a2), str);
                        view = constraintLayout.getViewById(a2);
                    }
                }
                if (view != null) {
                    this.m.a(constraintLayout.a(view));
                }
            }
            this.m.f_();
        }
    }

    public final int[] b() {
        return Arrays.copyOf(this.j, this.k);
    }

    public final void c() {
        if (this.m != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams instanceof ConstraintLayout.LayoutParams) {
                ((ConstraintLayout.LayoutParams) layoutParams).an = (androidx.constraintlayout.a.a.e) this.m;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final View[] c(ConstraintLayout constraintLayout) {
        View[] viewArr = this.f1582a;
        if (viewArr == null || viewArr.length != this.k) {
            this.f1582a = new View[this.k];
        }
        for (int i = 0; i < this.k; i++) {
            this.f1582a[i] = constraintLayout.getViewById(this.j[i]);
        }
        return this.f1582a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        ViewParent parent = getParent();
        if (parent != null && (parent instanceof ConstraintLayout)) {
            ConstraintLayout constraintLayout = (ConstraintLayout) parent;
            int visibility = getVisibility();
            float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : BitmapDescriptorFactory.HUE_RED;
            for (int i = 0; i < this.k; i++) {
                View viewById = constraintLayout.getViewById(this.j[i]);
                if (viewById != null) {
                    viewById.setVisibility(visibility);
                    if (elevation > BitmapDescriptorFactory.HUE_RED && Build.VERSION.SDK_INT >= 21) {
                        viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.o;
        if (str != null) {
            d(str);
        }
        String str2 = this.p;
        if (str2 != null) {
            e(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.n) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.o = null;
        this.k = 0;
        for (int i : iArr) {
            a(i);
        }
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.o == null) {
            a(i);
        }
    }
}
