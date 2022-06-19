package androidx.core.widget;

import android.content.ClipData;
import android.content.Context;
import android.os.Build;
import android.text.Editable;
import android.text.Selection;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import p020b.p041h.p050l.AbstractC1674r;
import p020b.p041h.p050l.C1609c;
/* renamed from: androidx.core.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/l.class */
public final class C0651l implements AbstractC1674r {

    /* renamed from: androidx.core.widget.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/l$a.class */
    public static final class C0652a {
        /* renamed from: a */
        static CharSequence m33063a(Context context, ClipData.Item item, int i) {
            if ((i & 1) != 0) {
                CharSequence coerceToText = item.coerceToText(context);
                String str = coerceToText;
                if (coerceToText instanceof Spanned) {
                    str = coerceToText.toString();
                }
                return str;
            }
            return item.coerceToStyledText(context);
        }
    }

    /* renamed from: androidx.core.widget.l$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/l$b.class */
    public static final class C0653b {
        /* renamed from: a */
        static CharSequence m33062a(Context context, ClipData.Item item, int i) {
            CharSequence coerceToText = item.coerceToText(context);
            String str = coerceToText;
            if ((i & 1) != 0) {
                str = coerceToText;
                if (coerceToText instanceof Spanned) {
                    str = coerceToText.toString();
                }
            }
            return str;
        }
    }

    /* renamed from: b */
    private static CharSequence m33065b(Context context, ClipData.Item item, int i) {
        return Build.VERSION.SDK_INT >= 16 ? C0652a.m33063a(context, item, i) : C0653b.m33062a(context, item, i);
    }

    /* renamed from: c */
    private static void m33064c(Editable editable, CharSequence charSequence) {
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        int max = Math.max(0, Math.min(selectionStart, selectionEnd));
        int max2 = Math.max(0, Math.max(selectionStart, selectionEnd));
        Selection.setSelection(editable, max2);
        editable.replace(max, max2, charSequence);
    }

    @Override // p020b.p041h.p050l.AbstractC1674r
    /* renamed from: a */
    public C1609c mo29355a(View view, C1609c c1609c) {
        if (Log.isLoggable("ReceiveContent", 3)) {
            Log.d("ReceiveContent", "onReceive: " + c1609c);
        }
        if (c1609c.m29615d() == 2) {
            return c1609c;
        }
        ClipData m29617b = c1609c.m29617b();
        int m29616c = c1609c.m29616c();
        TextView textView = (TextView) view;
        Editable editable = (Editable) textView.getText();
        Context context = textView.getContext();
        int i = 0;
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (i >= m29617b.getItemCount()) {
                return null;
            }
            CharSequence m33065b = m33065b(context, m29617b.getItemAt(i), m29616c);
            boolean z3 = z2;
            if (m33065b != null) {
                if (!z2) {
                    m33064c(editable, m33065b);
                    z3 = true;
                } else {
                    editable.insert(Selection.getSelectionEnd(editable), "\n");
                    editable.insert(Selection.getSelectionEnd(editable), m33065b);
                    z3 = z2;
                }
            }
            i++;
            z = z3;
        }
    }
}
