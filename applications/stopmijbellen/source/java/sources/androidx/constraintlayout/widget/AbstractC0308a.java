package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.Arrays;
import java.util.HashMap;
import p015b0.C0713a;
import p258v.AbstractC4569g;
import p258v.C4566d;
import p291y.C4951d;
/* renamed from: androidx.constraintlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a.class */
public abstract class AbstractC0308a extends View {

    /* renamed from: a */
    public int[] f1278a;

    /* renamed from: b */
    public int f1279b;

    /* renamed from: c */
    public Context f1280c;

    /* renamed from: d */
    public AbstractC4569g f1281d;

    /* renamed from: e */
    public String f1282e;

    /* renamed from: f */
    public String f1283f;

    /* renamed from: g */
    public View[] f1284g;

    /* renamed from: h */
    public HashMap<Integer, String> f1285h;

    public AbstractC0308a(Context context) {
        super(context);
        this.f1278a = new int[32];
        this.f1284g = null;
        this.f1285h = new HashMap<>();
        this.f1280c = context;
        mo182i(null);
    }

    public AbstractC0308a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1278a = new int[32];
        this.f1284g = null;
        this.f1285h = new HashMap<>();
        this.f1280c = context;
        mo182i(attributeSet);
    }

    /* renamed from: c */
    public final void m8366c(String str) {
        if (str == null || str.length() == 0 || this.f1280c == null) {
            return;
        }
        String trim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
            ConstraintLayout constraintLayout = (ConstraintLayout) getParent();
        }
        ConstraintLayout constraintLayout2 = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int i = 0;
        if (isInEditMode()) {
            i = 0;
            if (constraintLayout2 != null) {
                Object m8378c = constraintLayout2.m8378c(0, trim);
                i = 0;
                if (m8378c instanceof Integer) {
                    i = ((Integer) m8378c).intValue();
                }
            }
        }
        int i2 = i;
        if (i == 0) {
            i2 = i;
            if (constraintLayout2 != null) {
                i2 = m8362h(constraintLayout2, trim);
            }
        }
        int i3 = i2;
        if (i2 == 0) {
            try {
                i3 = C4951d.class.getField(trim).getInt(null);
            } catch (Exception e) {
                i3 = i2;
            }
        }
        int i4 = i3;
        if (i3 == 0) {
            i4 = this.f1280c.getResources().getIdentifier(trim, FacebookAdapter.KEY_ID, this.f1280c.getPackageName());
        }
        if (i4 != 0) {
            this.f1285h.put(Integer.valueOf(i4), trim);
            m8365d(i4);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
    }

    /* renamed from: d */
    public final void m8365d(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.f1279b;
        int[] iArr = this.f1278a;
        if (i2 + 1 > iArr.length) {
            this.f1278a = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f1278a;
        int i3 = this.f1279b;
        iArr2[i3] = i;
        this.f1279b = i3 + 1;
    }

    /* renamed from: e */
    public final void m8364e(String str) {
        if (str == null || str.length() == 0 || this.f1280c == null) {
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
            if ((layoutParams instanceof ConstraintLayout.C0305a) && trim.equals(((ConstraintLayout.C0305a) layoutParams).f1224Y)) {
                if (childAt.getId() == -1) {
                    StringBuilder m8752j = C0082b.m8752j("to use ConstraintTag view ");
                    m8752j.append(childAt.getClass().getSimpleName());
                    m8752j.append(" must have an ID");
                    Log.w("ConstraintHelper", m8752j.toString());
                } else {
                    m8365d(childAt.getId());
                }
            }
        }
    }

    /* renamed from: f */
    public void m8363f(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i = 0; i < this.f1279b; i++) {
            View m8377d = constraintLayout.m8377d(this.f1278a[i]);
            if (m8377d != null) {
                m8377d.setVisibility(visibility);
                if (elevation > 0.0f) {
                    m8377d.setTranslationZ(m8377d.getTranslationZ() + elevation);
                }
            }
        }
    }

    /* renamed from: g */
    public void mo183g(ConstraintLayout constraintLayout) {
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f1278a, this.f1279b);
    }

    /* renamed from: h */
    public final int m8362h(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || (resources = this.f1280c.getResources()) == null) {
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

    /* renamed from: i */
    public void mo182i(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0713a.f2754f);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 35) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f1282e = string;
                    setIds(string);
                } else if (index == 36) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.f1283f = string2;
                    setReferenceTags(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: j */
    public void mo8361j(C4566d c4566d, boolean z) {
    }

    /* renamed from: k */
    public void m8360k() {
        if (this.f1281d == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!(layoutParams instanceof ConstraintLayout.C0305a)) {
            return;
        }
        ((ConstraintLayout.C0305a) layoutParams).f1259q0 = (C4566d) this.f1281d;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f1282e;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f1283f;
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

    public void setIds(String str) {
        this.f1282e = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f1279b = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m8366c(str.substring(i));
                return;
            } else {
                m8366c(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    public void setReferenceTags(String str) {
        this.f1283f = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f1279b = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m8364e(str.substring(i));
                return;
            } else {
                m8364e(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f1282e = null;
        this.f1279b = 0;
        for (int i : iArr) {
            m8365d(i);
        }
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.f1282e == null) {
            m8365d(i);
        }
    }
}
