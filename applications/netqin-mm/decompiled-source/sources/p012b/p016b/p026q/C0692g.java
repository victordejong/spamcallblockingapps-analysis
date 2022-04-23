package p012b.p016b.p026q;

import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
/* renamed from: b.b.q.g */
/* loaded from: classes-dex2jar.jar:b/b/q/g.class */
public class C0692g {
    /* renamed from: a */
    public static InputConnection m36400a(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            ViewParent parent = view.getParent();
            while (true) {
                if (!(parent instanceof View)) {
                    break;
                } else if (parent instanceof AbstractC0713m0) {
                    editorInfo.hintText = ((AbstractC0713m0) parent).m36283a();
                    break;
                } else {
                    parent = parent.getParent();
                }
            }
        }
        return inputConnection;
    }
}
