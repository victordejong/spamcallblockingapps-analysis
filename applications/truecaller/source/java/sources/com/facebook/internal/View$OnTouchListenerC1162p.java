package com.facebook.internal;

import android.view.MotionEvent;
import android.view.View;
import com.facebook.internal.DialogC1182s0;
/* renamed from: com.facebook.internal.p */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/p.class */
public final /* synthetic */ class View$OnTouchListenerC1162p implements View.OnTouchListener {

    /* renamed from: a */
    public static final /* synthetic */ View$OnTouchListenerC1162p f3174a = new View$OnTouchListenerC1162p();

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        DialogC1182s0.C1184b c1184b = DialogC1182s0.f3207m;
        if (!view.hasFocus()) {
            view.requestFocus();
            return false;
        }
        return false;
    }
}
