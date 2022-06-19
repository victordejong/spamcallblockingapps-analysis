package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import p015b0.C0713a;
import p258v.C4562a;
import p258v.C4566d;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Barrier.class */
public class Barrier extends AbstractC0308a {

    /* renamed from: i */
    public int f1179i;

    /* renamed from: j */
    public int f1180j;

    /* renamed from: k */
    public C4562a f1181k;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public boolean getAllowsGoneWidget() {
        return this.f1181k.f14007u0;
    }

    public int getMargin() {
        return this.f1181k.f14008v0;
    }

    public int getType() {
        return this.f1179i;
    }

    @Override // androidx.constraintlayout.widget.AbstractC0308a
    /* renamed from: i */
    public void mo182i(AttributeSet attributeSet) {
        super.mo182i(attributeSet);
        this.f1181k = new C4562a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0713a.f2754f);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 26) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == 25) {
                    this.f1181k.f14007u0 = obtainStyledAttributes.getBoolean(index, true);
                } else if (index == 27) {
                    this.f1181k.f14008v0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f1281d = this.f1181k;
        m8360k();
    }

    @Override // androidx.constraintlayout.widget.AbstractC0308a
    /* renamed from: j */
    public void mo8361j(C4566d c4566d, boolean z) {
        int i = this.f1179i;
        this.f1180j = i;
        if (z) {
            if (i == 5) {
                this.f1180j = 1;
            } else if (i == 6) {
                this.f1180j = 0;
            }
        } else if (i == 5) {
            this.f1180j = 0;
        } else if (i == 6) {
            this.f1180j = 1;
        }
        if (c4566d instanceof C4562a) {
            ((C4562a) c4566d).f14006t0 = this.f1180j;
        }
    }

    public void setAllowsGoneWidget(boolean z) {
        this.f1181k.f14007u0 = z;
    }

    public void setDpMargin(int i) {
        this.f1181k.f14008v0 = (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i) {
        this.f1181k.f14008v0 = i;
    }

    public void setType(int i) {
        this.f1179i = i;
    }
}
