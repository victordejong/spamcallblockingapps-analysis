package carbon.beta;

import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
/* loaded from: classes-dex2jar.jar:carbon/beta/MarshmallowEditText$a.class */
public class MarshmallowEditText$a implements WindowManager {
    public MarshmallowEditText$a(MarshmallowEditText marshmallowEditText) {
    }

    @Override // android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        view.setLayoutParams((WindowManager.LayoutParams) layoutParams);
    }

    @Override // android.view.WindowManager
    public Display getDefaultDisplay() {
        return null;
    }

    @Override // android.view.ViewManager
    public void removeView(View view) {
    }

    @Override // android.view.WindowManager
    public void removeViewImmediate(View view) {
    }

    @Override // android.view.ViewManager
    public void updateViewLayout(View view, ViewGroup.LayoutParams layoutParams) {
        view.setLayoutParams((WindowManager.LayoutParams) layoutParams);
    }
}
