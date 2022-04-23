package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.a;
import androidx.core.view.v;
import androidx.core.view.y;
import androidx.core.view.z;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a.class */
public abstract class a extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    protected final C0024a f1036a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f1037b;

    /* renamed from: c  reason: collision with root package name */
    protected ActionMenuView f1038c;

    /* renamed from: d  reason: collision with root package name */
    protected ActionMenuPresenter f1039d;
    protected int e;
    protected y f;
    private boolean g;
    private boolean h;

    /* renamed from: androidx.appcompat.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a$a.class */
    protected final class C0024a implements z {

        /* renamed from: a  reason: collision with root package name */
        int f1040a;

        /* renamed from: c  reason: collision with root package name */
        private boolean f1042c = false;

        protected C0024a() {
        }

        public final C0024a a(y yVar, int i) {
            a.this.f = yVar;
            this.f1040a = i;
            return this;
        }

        @Override // androidx.core.view.z
        public final void a(View view) {
            a.super.setVisibility(0);
            this.f1042c = false;
        }

        @Override // androidx.core.view.z
        public final void b(View view) {
            if (!this.f1042c) {
                a.this.f = null;
                a.super.setVisibility(this.f1040a);
            }
        }

        @Override // androidx.core.view.z
        public final void c(View view) {
            this.f1042c = true;
        }
    }

    a(Context context) {
        this(context, null);
    }

    a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1036a = new C0024a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(a.C0018a.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f1037b = context;
        } else {
            this.f1037b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int a(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int a(View view, int i, int i2) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int a(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i2 + ((i3 - measuredHeight) / 2);
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    public y a(int i, long j) {
        y yVar = this.f;
        if (yVar != null) {
            yVar.b();
        }
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
            y a2 = v.m(this).a(1.0f);
            a2.a(j);
            a2.a(this.f1036a.a(a2, i));
            return a2;
        }
        y a3 = v.m(this).a(BitmapDescriptorFactory.HUE_RED);
        a3.a(j);
        a3.a(this.f1036a.a(a3, i));
        return a3;
    }

    public boolean a() {
        ActionMenuPresenter actionMenuPresenter = this.f1039d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.e();
        }
        return false;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, a.j.ActionBar, a.C0018a.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(a.j.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f1039d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.c();
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.h = false;
        }
        if (!this.h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.h = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.h = false;
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.g = false;
        }
        if (!this.g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.g = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.g = false;
        return true;
    }

    public void setContentHeight(int i) {
        this.e = i;
        requestLayout();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            y yVar = this.f;
            if (yVar != null) {
                yVar.b();
            }
            super.setVisibility(i);
        }
    }
}
