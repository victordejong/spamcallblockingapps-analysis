package p193e.p194a.p294b.p295a.p308b;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import s1.z.c.l;
/* renamed from: e.a.b.a.b.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/b/c.class */
public final class View$OnFocusChangeListenerC7643c implements View.OnFocusChangeListener {

    /* renamed from: a */
    public static final View$OnFocusChangeListenerC7643c f24015a = new View$OnFocusChangeListenerC7643c();

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        l.e(view, "v");
        if (z) {
            EditText editText = (EditText) view;
            if (!editText.isFocused()) {
                return;
            }
            Editable text = editText.getText();
            if (text == null || text.length() == 0) {
                return;
            }
            Editable text2 = editText.getText();
            int i = 0;
            if (text2 != null) {
                i = text2.length();
            }
            editText.setSelection(i);
        }
    }
}
