package p193e.p194a.p1164r.p1169b0;

import android.text.Selection;
import android.text.SpannableString;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import s1.z.c.l;
/* renamed from: e.a.r.b0.b */
/* loaded from: classes16-dex2jar.jar:e/a/r/b0/b.class */
public final class View$OnTouchListenerC19732b implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ TextView f54775a;

    public View$OnTouchListenerC19732b(TextView textView) {
        this.f54775a = textView;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        l.d(motionEvent, "event");
        if (motionEvent.getAction() == 0) {
            view.requestFocus();
            return false;
        } else if (motionEvent.getAction() != 1) {
            return false;
        } else {
            Selection.removeSelection(SpannableString.valueOf(this.f54775a.getText()));
            return false;
        }
    }
}
