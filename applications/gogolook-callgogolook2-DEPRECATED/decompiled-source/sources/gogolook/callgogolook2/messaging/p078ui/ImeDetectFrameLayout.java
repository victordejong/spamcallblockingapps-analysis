package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import p459j.p460a.p474c0.p499h.C12140a0;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: gogolook.callgogolook2.messaging.ui.ImeDetectFrameLayout */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/ImeDetectFrameLayout.class */
public class ImeDetectFrameLayout extends FrameLayout {
    public ImeDetectFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int measuredHeight = getMeasuredHeight();
        super.onMeasure(i, i2);
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", "ImeDetectFrameLayout measuredHeight: " + measuredHeight + " getMeasuredHeight(): " + getMeasuredHeight());
        }
        if (measuredHeight != getMeasuredHeight() && (getContext() instanceof C12140a0.AbstractC12141a)) {
            ((C12140a0.AbstractC12141a) getContext()).mo7035c(i2);
        }
    }
}
