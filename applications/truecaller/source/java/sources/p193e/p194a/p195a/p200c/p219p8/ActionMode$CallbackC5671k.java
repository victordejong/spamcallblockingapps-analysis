package p193e.p194a.p195a.p200c.p219p8;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.text.Editable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.CharacterStyle;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.richtext.FormattingStyle;
import java.util.Objects;
import p1727n3.p1734b.p1735a.g$a;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.a.c.p8.k */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/p8/k.class */
public final class ActionMode$CallbackC5671k implements ActionMode.Callback {

    /* renamed from: a */
    public final Context f19034a;

    /* renamed from: b */
    public final EditText f19035b;

    /* renamed from: c */
    public boolean f19036c;

    public ActionMode$CallbackC5671k(Context context, EditText editText, boolean z) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(editText, "editText");
        this.f19034a = context;
        this.f19035b = editText;
        this.f19036c = z;
    }

    /* renamed from: a */
    public final void m32791a(Menu menu, int i, CharacterStyle characterStyle) {
        MenuItem findItem = menu.findItem(i);
        l.d(findItem, "item");
        CharSequence title = findItem.getTitle();
        CharSequence charSequence = title;
        if (!(title instanceof Spannable)) {
            charSequence = null;
        }
        SpannableString spannableString = (Spannable) charSequence;
        if (spannableString == null) {
            spannableString = new SpannableString(findItem.getTitle());
        }
        spannableString.setSpan(characterStyle, 0, spannableString.length(), 0);
        findItem.setTitle(spannableString);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        int selectionStart;
        int selectionEnd;
        FormattingStyle formattingStyle;
        l.e(actionMode, AnalyticsConstants.MODE);
        l.e(menuItem, "item");
        if (this.f19036c && (selectionStart = this.f19035b.getSelectionStart()) != (selectionEnd = this.f19035b.getSelectionEnd())) {
            if (menuItem.getItemId() == 16908321 || menuItem.getItemId() == 16908320) {
                Object systemService = this.f19034a.getSystemService("clipboard");
                Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
                ClipboardManager clipboardManager = (ClipboardManager) systemService;
                Editable text = this.f19035b.getText();
                l.d(text, "editText.text");
                clipboardManager.setPrimaryClip(ClipData.newPlainText(null, text.subSequence(selectionStart, selectionEnd).toString()));
                if (menuItem.getItemId() != 16908320) {
                    return true;
                }
                this.f19035b.getText().delete(selectionStart, selectionEnd);
                return true;
            }
            Editable text2 = this.f19035b.getText();
            CharSequence subSequence = text2.subSequence(selectionStart, selectionEnd);
            switch (menuItem.getItemId()) {
                case C2752R.C2754id.format_bold /* 2131363804 */:
                    formattingStyle = FormattingStyle.BOLD;
                    break;
                case C2752R.C2754id.format_italic /* 2131363805 */:
                    formattingStyle = FormattingStyle.ITALIC;
                    break;
                case C2752R.C2754id.format_link /* 2131363806 */:
                    View inflate = LayoutInflater.from(this.f19034a).inflate(C2752R.layout.view_message_format_link_input, (ViewGroup) null);
                    g$a g_a = new g$a(this.f19034a);
                    g_a.m3656m(C2752R.string.MessageFormatLink);
                    g_a.m3653p(inflate);
                    g_a.m3660i(2131887910, new DialogInterface$OnClickListenerC5670j(this, inflate));
                    g_a.m3662g(2131887867, null);
                    g_a.m3652q();
                    return true;
                case C2752R.C2754id.format_monospace /* 2131363807 */:
                    if (!v.A(subSequence, '\n', false, 2)) {
                        formattingStyle = FormattingStyle.MONOSPACE;
                        break;
                    } else {
                        formattingStyle = FormattingStyle.MONOSPACE_MULTILINE;
                        break;
                    }
                case C2752R.C2754id.format_strikethrough /* 2131363808 */:
                    formattingStyle = FormattingStyle.STRIKETHROUGH;
                    break;
                case C2752R.C2754id.format_underline /* 2131363809 */:
                    formattingStyle = FormattingStyle.UNDERLINE;
                    break;
                default:
                    return false;
            }
            EditText editText = this.f19035b;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append(text2.subSequence(0, selectionStart));
            spannableStringBuilder.append((CharSequence) formattingStyle.getDelimiter());
            spannableStringBuilder.append(subSequence);
            spannableStringBuilder.append((CharSequence) formattingStyle.getDelimiter());
            spannableStringBuilder.append(text2.subSequence(selectionEnd, text2.length()));
            editText.setText(spannableStringBuilder);
            this.f19035b.setSelection((formattingStyle.getDelimiter().length() * 2) + selectionEnd);
            return true;
        }
        return false;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        l.e(actionMode, AnalyticsConstants.MODE);
        l.e(menu, "menu");
        if (!this.f19036c) {
            return true;
        }
        actionMode.getMenuInflater().inflate(C2752R.C2756menu.conversaion_selection_action_mode, menu);
        m32791a(menu, C2752R.C2754id.format_bold, new StyleSpan(1));
        m32791a(menu, C2752R.C2754id.format_italic, new StyleSpan(2));
        m32791a(menu, C2752R.C2754id.format_monospace, new TypefaceSpan("monospace"));
        m32791a(menu, C2752R.C2754id.format_strikethrough, new StrikethroughSpan());
        m32791a(menu, C2752R.C2754id.format_underline, new UnderlineSpan());
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        l.e(actionMode, AnalyticsConstants.MODE);
        l.e(menu, "menu");
        return true;
    }
}
