package androidx.appcompat.widget;

import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatHintHelper.class */
class AppCompatHintHelper {
    private AppCompatHintHelper() {
    }

    public static InputConnection onCreateInputConnection(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            ViewParent parent = view.getParent();
            while (true) {
                ViewParent viewParent = parent;
                if (!(viewParent instanceof View)) {
                    break;
                } else if (viewParent instanceof WithHint) {
                    editorInfo.hintText = ((WithHint) viewParent).getHint();
                    break;
                } else {
                    parent = viewParent.getParent();
                }
            }
        }
        return inputConnection;
    }
}
