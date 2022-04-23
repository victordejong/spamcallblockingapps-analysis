package com.android.contacts.widget;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.android.contacts.detail.ContactDetailDisplayUtils;
import com.android.contacts.util.ThemeUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/AlphaTouchInterceptorOverlay.class */
public class AlphaTouchInterceptorOverlay extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private View f2183a;
    private float c = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    private View f2184b = this;

    public AlphaTouchInterceptorOverlay(Context context) {
        super(context);
        this.f2183a = new View(context);
        this.f2183a.setBackgroundResource(ThemeUtils.getSelectableItemBackground(context.getTheme()));
        addView(this.f2183a);
    }

    public void setAlphaLayer(View view) {
        if (this.f2184b != view) {
            if (this.f2184b == this) {
                ContactDetailDisplayUtils.setAlphaOnViewBackground(this, 0.0f);
            }
            View view2 = view;
            if (view == null) {
                view2 = this;
            }
            this.f2184b = view2;
            setAlphaLayerValue(this.c);
        }
    }

    public void setAlphaLayerValue(float f) {
        this.c = f;
        if (this.f2184b != null) {
            ContactDetailDisplayUtils.setAlphaOnViewBackground(this.f2184b, this.c);
        }
    }

    public void setOverlayClickable(boolean z) {
        this.f2183a.setClickable(z);
    }

    public void setOverlayOnClickListener(View.OnClickListener onClickListener) {
        this.f2183a.setOnClickListener(onClickListener);
    }
}
