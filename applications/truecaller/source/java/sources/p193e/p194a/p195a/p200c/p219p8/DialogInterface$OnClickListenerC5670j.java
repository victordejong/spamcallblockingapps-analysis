package p193e.p194a.p195a.p200c.p219p8;

import android.content.DialogInterface;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.truecaller.C2752R;
import s1.z.c.l;
/* renamed from: e.a.a.c.p8.j */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/p8/j.class */
public final class DialogInterface$OnClickListenerC5670j implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ActionMode$CallbackC5671k f19032a;

    /* renamed from: b */
    public final /* synthetic */ View f19033b;

    public DialogInterface$OnClickListenerC5670j(ActionMode$CallbackC5671k actionMode$CallbackC5671k, View view) {
        this.f19032a = actionMode$CallbackC5671k;
        this.f19033b = view;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        ActionMode$CallbackC5671k actionMode$CallbackC5671k = this.f19032a;
        View findViewById = this.f19033b.findViewById(C2752R.C2754id.linkText);
        l.d(findViewById, "view.findViewById<TextView>(R.id.linkText)");
        CharSequence text = ((TextView) findViewById).getText();
        l.d(text, "view.findViewById<TextView>(R.id.linkText).text");
        int selectionStart = actionMode$CallbackC5671k.f19035b.getSelectionStart();
        int selectionEnd = actionMode$CallbackC5671k.f19035b.getSelectionEnd();
        if (selectionStart == selectionEnd) {
            return;
        }
        Editable text2 = actionMode$CallbackC5671k.f19035b.getText();
        EditText editText = actionMode$CallbackC5671k.f19035b;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append(text2.subSequence(0, selectionStart));
        spannableStringBuilder.append((CharSequence) "[");
        spannableStringBuilder.append(text2.subSequence(selectionStart, selectionEnd));
        spannableStringBuilder.append((CharSequence) "](");
        spannableStringBuilder.append(text);
        spannableStringBuilder.append((CharSequence) ")");
        spannableStringBuilder.append(text2.subSequence(selectionEnd, text2.length()));
        editText.setText(spannableStringBuilder);
        actionMode$CallbackC5671k.f19035b.setSelection(text.length() + selectionEnd + 4);
    }
}
