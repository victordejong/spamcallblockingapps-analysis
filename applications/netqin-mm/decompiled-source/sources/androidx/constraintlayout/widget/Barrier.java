package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import p012b.p036g.p037a.p038i.C0805b;
import p012b.p036g.p039b.C0825c;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Barrier.class */
public class Barrier extends ConstraintHelper {

    /* renamed from: g */
    public int f947g;

    /* renamed from: h */
    public int f948h;

    /* renamed from: i */
    public C0805b f949i;

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

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: a */
    public void mo38702a(AttributeSet attributeSet) {
        super.mo38702a(attributeSet);
        this.f949i = new C0805b();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0825c.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0825c.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0825c.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f949i.m35911c(obtainStyledAttributes.getBoolean(index, true));
                }
            }
        }
        this.f953d = this.f949i;
        m38720a();
    }

    public int getType() {
        return this.f947g;
    }

    public void setAllowsGoneWidget(boolean z) {
        this.f949i.m35911c(z);
    }

    public void setType(int i) {
        this.f947g = i;
        this.f948h = i;
        if (Build.VERSION.SDK_INT >= 17) {
            if (1 == getResources().getConfiguration().getLayoutDirection()) {
                int i2 = this.f947g;
                if (i2 == 5) {
                    this.f948h = 1;
                } else if (i2 == 6) {
                    this.f948h = 0;
                }
            } else {
                int i3 = this.f947g;
                if (i3 == 5) {
                    this.f948h = 0;
                } else if (i3 == 6) {
                    this.f948h = 1;
                }
            }
        } else if (i == 5) {
            this.f948h = 0;
        } else if (i == 6) {
            this.f948h = 1;
        }
        this.f949i.m35910u(this.f948h);
    }
}
