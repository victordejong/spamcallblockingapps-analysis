package com.callapp.contacts.activity.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/CallAppRow.class */
public class CallAppRow extends BaseSwipeView {

    /* renamed from: o */
    private boolean f20366o;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/CallAppRow$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public CallAppViewTypes f20367a;

        /* renamed from: b */
        public CallAppViewTypes f20368b;

        /* renamed from: c */
        public CallAppViewTypes f20369c;

        /* renamed from: d */
        private Context f20370d;

        public Builder(Context context) {
            this.f20370d = context;
        }

        /* renamed from: a */
        public final CallAppRow m31474a() {
            CallAppRow callAppRow = new CallAppRow(this.f20370d);
            callAppRow.m31475a(this.f20367a, this.f20368b, this.f20369c);
            return callAppRow;
        }
    }

    public CallAppRow(Context context) {
        this(context, null);
    }

    public CallAppRow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CallAppRow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20366o = !isPageSwipeEnabled();
    }

    /* renamed from: a */
    public final void m31475a(CallAppViewTypes callAppViewTypes, CallAppViewTypes callAppViewTypes2, CallAppViewTypes callAppViewTypes3) {
        super.m31481a();
        setLongClickable(false);
        FrameLayout frameLayout = (FrameLayout) findViewById(2131362315);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(2131363178);
        FrameLayout frameLayout3 = (FrameLayout) findViewById(2131363676);
        if (callAppViewTypes != null) {
            LayoutInflater.from(getContext()).inflate(callAppViewTypes.getLayoutResId(), (ViewGroup) frameLayout2, true);
        }
        if (callAppViewTypes2 != null) {
            LayoutInflater.from(getContext()).inflate(callAppViewTypes2.getLayoutResId(), (ViewGroup) frameLayout, true);
        }
        if (callAppViewTypes3 != null) {
            LayoutInflater.from(getContext()).inflate(callAppViewTypes3.getLayoutResId(), (ViewGroup) frameLayout3, true);
        }
        setBackgroundColor(ThemeUtils.getColor(2131100145));
    }

    @Override // com.callapp.contacts.activity.base.BaseSwipeView
    public int getLayoutResId() {
        return 2131559132;
    }

    @Override // com.callapp.contacts.activity.base.BaseSwipeView
    public boolean isSwipeable() {
        return this.f20366o;
    }

    public void setSwipeable(boolean z) {
        this.f20366o = z;
    }
}
