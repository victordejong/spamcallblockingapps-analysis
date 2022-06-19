package p193e.p194a.p195a.p200c.p219p8;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.style.CharacterStyle;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.EditText;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.conversation.richtext.FormattingStyle;
import java.util.Objects;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.a.c.p8.i */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/p8/i.class */
public final class ActionMode$CallbackC5669i implements ActionMode.Callback {

    /* renamed from: a */
    public final Context f19029a;

    /* renamed from: b */
    public final EditText f19030b;

    /* renamed from: c */
    public boolean f19031c;

    public ActionMode$CallbackC5669i(Context context, EditText editText, boolean z) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(editText, "editText");
        this.f19029a = context;
        this.f19030b = editText;
        this.f19031c = z;
    }

    /* renamed from: a */
    public final void m32792a(Editable editable, FormattingStyle formattingStyle, int i, int i2) {
        editable.insert(i2, formattingStyle.getDelimiter());
        editable.insert(i, formattingStyle.getDelimiter());
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        l.e(actionMode, AnalyticsConstants.MODE);
        l.e(menuItem, "item");
        if (this.f19031c && menuItem.getItemId() == 16908322) {
            int selectionStart = this.f19030b.getSelectionStart();
            int selectionEnd = this.f19030b.getSelectionEnd();
            if (selectionStart < 0 || selectionEnd < 0) {
                return true;
            }
            Object systemService = this.f19029a.getSystemService("clipboard");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
            ClipData primaryClip = ((ClipboardManager) systemService).getPrimaryClip();
            if (primaryClip == null) {
                return true;
            }
            l.d(primaryClip, "clipboard.primaryClip ?: return");
            if (primaryClip.getItemCount() < 1) {
                return true;
            }
            ClipData.Item itemAt = primaryClip.getItemAt(0);
            Editable text = this.f19030b.getText();
            CharSequence coerceToStyledText = itemAt.coerceToStyledText(this.f19029a);
            l.d(coerceToStyledText, "clipItem.coerceToStyledText(context)");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(coerceToStyledText);
            CharacterStyle[] characterStyleArr = (CharacterStyle[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), CharacterStyle.class);
            l.d(characterStyleArr, "spans");
            for (CharacterStyle characterStyle : characterStyleArr) {
                int spanStart = spannableStringBuilder.getSpanStart(characterStyle);
                int spanEnd = spannableStringBuilder.getSpanEnd(characterStyle);
                if (spanStart >= 0 && spanEnd >= 0) {
                    if (characterStyle instanceof StyleSpan) {
                        int style = ((StyleSpan) characterStyle).getStyle();
                        if (style == 1) {
                            m32792a(spannableStringBuilder, FormattingStyle.BOLD, spanStart, spanEnd);
                        } else if (style == 2) {
                            m32792a(spannableStringBuilder, FormattingStyle.ITALIC, spanStart, spanEnd);
                        }
                    } else if (characterStyle instanceof UnderlineSpan) {
                        m32792a(spannableStringBuilder, FormattingStyle.UNDERLINE, spanStart, spanEnd);
                    } else if (characterStyle instanceof StrikethroughSpan) {
                        m32792a(spannableStringBuilder, FormattingStyle.STRIKETHROUGH, spanStart, spanEnd);
                    } else if ((characterStyle instanceof TypefaceSpan) && l.a(((TypefaceSpan) characterStyle).getFamily(), "monospace")) {
                        CharSequence subSequence = spannableStringBuilder.subSequence(spanStart, spanEnd);
                        l.d(subSequence, "s.subSequence(start, end)");
                        if (v.A(subSequence, '\n', false, 2)) {
                            m32792a(spannableStringBuilder, FormattingStyle.MONOSPACE_MULTILINE, spanStart, spanEnd);
                        } else {
                            m32792a(spannableStringBuilder, FormattingStyle.MONOSPACE, spanStart, spanEnd);
                        }
                    }
                    spannableStringBuilder.removeSpan(characterStyle);
                }
            }
            text.replace(selectionStart, selectionEnd, spannableStringBuilder);
            return true;
        }
        return false;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        l.e(actionMode, AnalyticsConstants.MODE);
        l.e(menu, "menu");
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
