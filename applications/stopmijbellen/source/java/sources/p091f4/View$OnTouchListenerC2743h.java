package p091f4;

import android.view.MotionEvent;
import android.view.View;
import android.widget.AutoCompleteTextView;
import com.google.android.material.textfield.C1815b;
/* renamed from: f4.h */
/* loaded from: classes-dex2jar.jar:f4/h.class */
public class View$OnTouchListenerC2743h implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ AutoCompleteTextView f9399a;

    /* renamed from: b */
    public final /* synthetic */ C1815b f9400b;

    public View$OnTouchListenerC2743h(C1815b c1815b, AutoCompleteTextView autoCompleteTextView) {
        this.f9400b = c1815b;
        this.f9399a = autoCompleteTextView;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (this.f9400b.m4506i()) {
                this.f9400b.f6866j = false;
            }
            C1815b.m4508g(this.f9400b, this.f9399a);
            return false;
        }
        return false;
    }
}
