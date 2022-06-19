package p1727n3.p1807k.p1824j;

import android.content.ClipData;
import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.tenor.android.core.constant.StringConstant;
import p1727n3.p1807k.p1821i.AbstractC26610o;
import p1727n3.p1807k.p1821i.C26564c;
/* renamed from: n3.k.j.i */
/* loaded from: classes-dex2jar.jar:n3/k/j/i.class */
public final class C26638i implements AbstractC26610o {
    @Override // p1727n3.p1807k.p1821i.AbstractC26610o
    /* renamed from: a */
    public C26564c mo1538a(View view, C26564c c26564c) {
        String str;
        if (Log.isLoggable("ReceiveContent", 3)) {
            String str2 = "onReceive: " + c26564c;
        }
        if (c26564c.f74416b == 2) {
            return c26564c;
        }
        ClipData clipData = c26564c.f74415a;
        int i = c26564c.f74417c;
        TextView textView = (TextView) view;
        Editable editable = (Editable) textView.getText();
        Context context = textView.getContext();
        int i2 = 0;
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (i2 >= clipData.getItemCount()) {
                return null;
            }
            ClipData.Item itemAt = clipData.getItemAt(i2);
            if ((i & 1) != 0) {
                CharSequence coerceToText = itemAt.coerceToText(context);
                str = coerceToText;
                if (coerceToText instanceof Spanned) {
                    str = coerceToText.toString();
                }
            } else {
                str = itemAt.coerceToStyledText(context);
            }
            boolean z3 = z2;
            if (str != null) {
                if (!z2) {
                    int selectionStart = Selection.getSelectionStart(editable);
                    int selectionEnd = Selection.getSelectionEnd(editable);
                    int max = Math.max(0, Math.min(selectionStart, selectionEnd));
                    int max2 = Math.max(0, Math.max(selectionStart, selectionEnd));
                    Selection.setSelection(editable, max2);
                    editable.replace(max, max2, str);
                    z3 = true;
                } else {
                    editable.insert(Selection.getSelectionEnd(editable), StringConstant.NEW_LINE);
                    editable.insert(Selection.getSelectionEnd(editable), str);
                    z3 = z2;
                }
            }
            i2++;
            z = z3;
        }
    }
}
