package com.callapp.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CallAppTextView.class */
public class CallAppTextView extends AppCompatTextView {

    /* renamed from: a */
    private onSizeChanged f28613a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CallAppTextView$onSizeChanged.class */
    public interface onSizeChanged {
    }

    public CallAppTextView(Context context) {
        super(context);
    }

    public CallAppTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CallAppTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    public void setOnSizeChangedListener(onSizeChanged onsizechanged) {
        this.f28613a = onsizechanged;
    }
}
