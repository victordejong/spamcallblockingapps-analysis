package p280x;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.AbstractC0308a;
import androidx.constraintlayout.widget.ConstraintLayout;
import p015b0.C0713a;
import p280x.C4797d;
/* renamed from: x.c */
/* loaded from: classes-dex2jar.jar:x/c.class */
public class C4796c extends AbstractC0308a implements C4797d.AbstractC4800c {

    /* renamed from: i */
    public boolean f14727i;

    /* renamed from: j */
    public boolean f14728j;

    /* renamed from: k */
    public float f14729k;

    /* renamed from: l */
    public View[] f14730l;

    @Override // p280x.C4797d.AbstractC4800c
    /* renamed from: a */
    public void mo431a(C4797d c4797d, int i, int i2) {
    }

    @Override // p280x.C4797d.AbstractC4800c
    /* renamed from: b */
    public void mo430b(C4797d c4797d, int i, int i2, float f) {
    }

    public float getProgress() {
        return this.f14729k;
    }

    @Override // androidx.constraintlayout.widget.AbstractC0308a
    /* renamed from: i */
    public void mo182i(AttributeSet attributeSet) {
        super.mo182i(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0713a.f2760l);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 1) {
                    this.f14727i = obtainStyledAttributes.getBoolean(index, this.f14727i);
                } else if (index == 0) {
                    this.f14728j = obtainStyledAttributes.getBoolean(index, this.f14728j);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void setProgress(float f) {
        this.f14729k = f;
        if (this.f1279b <= 0) {
            ViewGroup viewGroup = (ViewGroup) getParent();
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                boolean z = viewGroup.getChildAt(i) instanceof C4796c;
            }
            return;
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) getParent();
        View[] viewArr = this.f1284g;
        if (viewArr == null || viewArr.length != this.f1279b) {
            this.f1284g = new View[this.f1279b];
        }
        for (int i2 = 0; i2 < this.f1279b; i2++) {
            this.f1284g[i2] = constraintLayout.m8377d(this.f1278a[i2]);
        }
        this.f14730l = this.f1284g;
        for (int i3 = 0; i3 < this.f1279b; i3++) {
            View view = this.f14730l[i3];
        }
    }
}
