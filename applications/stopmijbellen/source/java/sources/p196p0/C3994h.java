package p196p0;

import android.content.ClipData;
import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import java.util.Objects;
import p163m0.AbstractC3581n;
import p163m0.C3563c;
/* renamed from: p0.h */
/* loaded from: classes-dex2jar.jar:p0/h.class */
public final class C3994h implements AbstractC3581n {
    @Override // p163m0.AbstractC3581n
    /* renamed from: a */
    public C3563c mo1553a(View view, C3563c c3563c) {
        String str;
        if (Log.isLoggable("ReceiveContent", 3)) {
            Objects.toString(c3563c);
        }
        if (c3563c.f11750a.mo2147a() == 2) {
            return c3563c;
        }
        ClipData mo2146b = c3563c.f11750a.mo2146b();
        int mo2145c = c3563c.f11750a.mo2145c();
        TextView textView = (TextView) view;
        Editable editable = (Editable) textView.getText();
        Context context = textView.getContext();
        int i = 0;
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (i >= mo2146b.getItemCount()) {
                return null;
            }
            ClipData.Item itemAt = mo2146b.getItemAt(i);
            if ((mo2145c & 1) != 0) {
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
                    editable.insert(Selection.getSelectionEnd(editable), "\n");
                    editable.insert(Selection.getSelectionEnd(editable), str);
                    z3 = z2;
                }
            }
            i++;
            z = z3;
        }
    }
}
