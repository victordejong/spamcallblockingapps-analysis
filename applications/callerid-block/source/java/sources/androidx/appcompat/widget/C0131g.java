package androidx.appcompat.widget;

import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
/* renamed from: androidx.appcompat.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/g.class */
class C0131g {
    /* renamed from: a */
    public static InputConnection m14598a(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            ViewParent parent = view.getParent();
            while (true) {
                ViewParent viewParent = parent;
                if (!(viewParent instanceof View)) {
                    break;
                } else if (viewParent instanceof AbstractC0141k0) {
                    editorInfo.hintText = ((AbstractC0141k0) viewParent).m14561a();
                    break;
                } else {
                    parent = viewParent.getParent();
                }
            }
        }
        return inputConnection;
    }
}
