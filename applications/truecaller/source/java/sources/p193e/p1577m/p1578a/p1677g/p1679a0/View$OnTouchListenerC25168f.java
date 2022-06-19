package p193e.p1577m.p1578a.p1677g.p1679a0;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import com.google.android.material.timepicker.TimePickerView;
/* renamed from: e.m.a.g.a0.f */
/* loaded from: classes3-dex2jar.jar:e/m/a/g/a0/f.class */
public class View$OnTouchListenerC25168f implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ GestureDetector f70420a;

    public View$OnTouchListenerC25168f(TimePickerView timePickerView, GestureDetector gestureDetector) {
        this.f70420a = gestureDetector;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (((Checkable) view).isChecked()) {
            return this.f70420a.onTouchEvent(motionEvent);
        }
        return false;
    }
}
