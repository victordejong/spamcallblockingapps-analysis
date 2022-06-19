package androidx.appcompat.widget;

import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$e.class */
public class ListPopupWindow$e implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ ListPopupWindow f564a;

    public ListPopupWindow$e(ListPopupWindow listPopupWindow) {
        this.f564a = listPopupWindow;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        PopupWindow popupWindow;
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (action == 0 && (popupWindow = this.f564a.G) != null && popupWindow.isShowing() && x >= 0 && x < this.f564a.G.getWidth() && y >= 0 && y < this.f564a.G.getHeight()) {
            ListPopupWindow listPopupWindow = this.f564a;
            listPopupWindow.C.postDelayed(listPopupWindow.y, 250L);
            return false;
        } else if (action != 1) {
            return false;
        } else {
            ListPopupWindow listPopupWindow2 = this.f564a;
            listPopupWindow2.C.removeCallbacks(listPopupWindow2.y);
            return false;
        }
    }
}
