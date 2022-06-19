package androidx.appcompat.widget;

import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$e.class */
class ListPopupWindow$e implements View.OnTouchListener {

    /* renamed from: b */
    final /* synthetic */ ListPopupWindow f436b;

    ListPopupWindow$e(ListPopupWindow listPopupWindow) {
        this.f436b = listPopupWindow;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        PopupWindow popupWindow;
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (action == 0 && (popupWindow = this.f436b.F) != null && popupWindow.isShowing() && x >= 0 && x < this.f436b.F.getWidth() && y >= 0 && y < this.f436b.F.getHeight()) {
            ListPopupWindow listPopupWindow = this.f436b;
            listPopupWindow.B.postDelayed(listPopupWindow.x, 250L);
            return false;
        } else if (action != 1) {
            return false;
        } else {
            ListPopupWindow listPopupWindow2 = this.f436b;
            listPopupWindow2.B.removeCallbacks(listPopupWindow2.x);
            return false;
        }
    }
}
