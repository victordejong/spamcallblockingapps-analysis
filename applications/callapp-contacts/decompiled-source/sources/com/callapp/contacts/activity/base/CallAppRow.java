package com.callapp.contacts.activity.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/CallAppRow.class */
public class CallAppRow extends BaseSwipeView {
    private boolean o;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/CallAppRow$Builder.class */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        public CallAppViewTypes f11157a;

        /* renamed from: b  reason: collision with root package name */
        public CallAppViewTypes f11158b;

        /* renamed from: c  reason: collision with root package name */
        public CallAppViewTypes f11159c;

        /* renamed from: d  reason: collision with root package name */
        private Context f11160d;

        public Builder(Context context) {
            this.f11160d = context;
        }

        public final CallAppRow a() {
            CallAppRow callAppRow = new CallAppRow(this.f11160d);
            callAppRow.a(this.f11157a, this.f11158b, this.f11159c);
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
        this.o = !isPageSwipeEnabled();
    }

    public final void a(CallAppViewTypes callAppViewTypes, CallAppViewTypes callAppViewTypes2, CallAppViewTypes callAppViewTypes3) {
        super.a();
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
        return this.o;
    }

    public void setSwipeable(boolean z) {
        this.o = z;
    }
}
