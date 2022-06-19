package p000;

import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;
import carbon.widget.EditText;
/* renamed from: ff0 */
/* loaded from: classes-dex2jar.jar:ff0.class */
public final /* synthetic */ class ff0 implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ EditText f6614a;

    /* renamed from: b */
    public final /* synthetic */ PopupWindow f6615b;

    public /* synthetic */ ff0(EditText editText, PopupWindow popupWindow) {
        this.f6614a = editText;
        this.f6615b = popupWindow;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f6614a.B(this.f6615b, view, motionEvent);
    }
}
