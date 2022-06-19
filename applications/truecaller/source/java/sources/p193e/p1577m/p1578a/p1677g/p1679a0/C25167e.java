package p193e.p1577m.p1578a.p1677g.p1679a0;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.google.android.material.timepicker.TimePickerView;
import java.util.Objects;
/* renamed from: e.m.a.g.a0.e */
/* loaded from: classes3-dex2jar.jar:e/m/a/g/a0/e.class */
public class C25167e extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a */
    public final /* synthetic */ TimePickerView f70419a;

    public C25167e(TimePickerView timePickerView) {
        this.f70419a = timePickerView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        boolean onDoubleTap = super.onDoubleTap(motionEvent);
        TimePickerView timePickerView = this.f70419a;
        int i = TimePickerView.x;
        Objects.requireNonNull(timePickerView);
        return onDoubleTap;
    }
}
