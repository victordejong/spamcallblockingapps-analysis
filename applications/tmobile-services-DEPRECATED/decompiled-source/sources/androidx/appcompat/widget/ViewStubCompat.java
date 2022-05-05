package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import java.lang.ref.WeakReference;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat.class */
public final class ViewStubCompat extends View {

    /* renamed from: f */
    private int f1453f;

    /* renamed from: g */
    private int f1454g;

    /* renamed from: h */
    private WeakReference<View> f1455h;

    /* renamed from: i */
    private LayoutInflater f1456i;

    /* renamed from: j */
    private OnInflateListener f1457j;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat$OnInflateListener.class */
    public interface OnInflateListener {
        /* renamed from: a */
        void m21151a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1453f = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0042R.styleable.ViewStubCompat, i, 0);
        this.f1454g = obtainStyledAttributes.getResourceId(C0042R.styleable.ViewStubCompat_android_inflatedId, -1);
        this.f1453f = obtainStyledAttributes.getResourceId(C0042R.styleable.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(C0042R.styleable.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    /* renamed from: a */
    public View m21152a() {
        ViewParent parent = getParent();
        if (!(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        } else if (this.f1453f != 0) {
            ViewGroup viewGroup = (ViewGroup) parent;
            LayoutInflater layoutInflater = this.f1456i;
            if (layoutInflater == null) {
                layoutInflater = LayoutInflater.from(getContext());
            }
            View inflate = layoutInflater.inflate(this.f1453f, viewGroup, false);
            int i = this.f1454g;
            if (i != -1) {
                inflate.setId(i);
            }
            int indexOfChild = viewGroup.indexOfChild(this);
            viewGroup.removeViewInLayout(this);
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                viewGroup.addView(inflate, indexOfChild, layoutParams);
            } else {
                viewGroup.addView(inflate, indexOfChild);
            }
            this.f1455h = new WeakReference<>(inflate);
            OnInflateListener onInflateListener = this.f1457j;
            if (onInflateListener != null) {
                onInflateListener.m21151a(this, inflate);
            }
            return inflate;
        } else {
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f1454g;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f1456i;
    }

    public int getLayoutResource() {
        return this.f1453f;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i) {
        this.f1454g = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f1456i = layoutInflater;
    }

    public void setLayoutResource(int i) {
        this.f1453f = i;
    }

    public void setOnInflateListener(OnInflateListener onInflateListener) {
        this.f1457j = onInflateListener;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        WeakReference<View> weakReference = this.f1455h;
        if (weakReference != null) {
            View view = weakReference.get();
            if (view != null) {
                view.setVisibility(i);
                return;
            }
            throw new IllegalStateException("setVisibility called on un-referenced view");
        }
        super.setVisibility(i);
        if (i == 0 || i == 4) {
            m21152a();
        }
    }
}
