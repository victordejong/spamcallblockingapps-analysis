package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.a.a.a;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.f;
import androidx.constraintlayout.a.a.j;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import androidx.constraintlayout.widget.e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Barrier.class */
public class Barrier extends ConstraintHelper {

    /* renamed from: a  reason: collision with root package name */
    public int f1579a;

    /* renamed from: b  reason: collision with root package name */
    public a f1580b;

    /* renamed from: c  reason: collision with root package name */
    private int f1581c;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setVisibility(8);
    }

    private void a(e eVar, int i, boolean z) {
        this.f1581c = i;
        if (Build.VERSION.SDK_INT < 17) {
            int i2 = this.f1579a;
            if (i2 == 5) {
                this.f1581c = 0;
            } else if (i2 == 6) {
                this.f1581c = 1;
            }
        } else if (z) {
            int i3 = this.f1579a;
            if (i3 == 5) {
                this.f1581c = 1;
            } else if (i3 == 6) {
                this.f1581c = 0;
            }
        } else {
            int i4 = this.f1579a;
            if (i4 == 5) {
                this.f1581c = 0;
            } else if (i4 == 6) {
                this.f1581c = 1;
            }
        }
        if (eVar instanceof a) {
            ((a) eVar).f1313a = this.f1581c;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void a(AttributeSet attributeSet) {
        super.a(attributeSet);
        this.f1580b = new a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, e.b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == e.b.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f1580b.f1314b = obtainStyledAttributes.getBoolean(index, true);
                } else if (index == e.b.ConstraintLayout_Layout_barrierMargin) {
                    this.f1580b.f1315c = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.m = this.f1580b;
        c();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void a(androidx.constraintlayout.a.a.e eVar, boolean z) {
        a(eVar, this.f1579a, z);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void a(c.a aVar, j jVar, ConstraintLayout.LayoutParams layoutParams, SparseArray<androidx.constraintlayout.a.a.e> sparseArray) {
        super.a(aVar, jVar, layoutParams, sparseArray);
        if (jVar instanceof a) {
            a aVar2 = (a) jVar;
            a(aVar2, aVar.f1628d.ab, ((f) jVar.S).f1377d);
            aVar2.f1314b = aVar.f1628d.aj;
            aVar2.f1315c = aVar.f1628d.ac;
        }
    }

    public void setAllowsGoneWidget(boolean z) {
        this.f1580b.f1314b = z;
    }

    public void setDpMargin(int i) {
        this.f1580b.f1315c = (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i) {
        this.f1580b.f1315c = i;
    }

    public void setType(int i) {
        this.f1579a = i;
    }
}
