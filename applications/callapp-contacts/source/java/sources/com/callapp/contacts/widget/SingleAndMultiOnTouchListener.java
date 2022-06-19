package com.callapp.contacts.widget;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SingleAndMultiOnTouchListener.class */
public abstract class SingleAndMultiOnTouchListener implements View.OnTouchListener {

    /* renamed from: a */
    private boolean f28941a = false;

    /* renamed from: a */
    public abstract boolean mo26614a(View view, MotionEvent motionEvent, boolean z);

    /* renamed from: a */
    public abstract boolean mo26613a(boolean z);

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z = true;
        if (motionEvent.getPointerCount() > 1) {
            boolean mo26613a = mo26613a(this.f28941a);
            this.f28941a = true;
            return mo26613a;
        }
        boolean mo26614a = mo26614a(view, motionEvent, this.f28941a);
        if (this.f28941a) {
            if (motionEvent.getAction() == 1) {
                z = false;
            }
            this.f28941a = z;
        }
        return mo26614a;
    }
}
