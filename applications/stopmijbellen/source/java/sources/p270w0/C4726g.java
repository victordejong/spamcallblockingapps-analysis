package p270w0;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.emoji2.text.C0354d;
import com.google.android.gms.common.api.Api;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
/* renamed from: w0.g */
/* loaded from: classes-dex2jar.jar:w0/g.class */
public final class C4726g implements TextWatcher {

    /* renamed from: a */
    public final EditText f14583a;

    /* renamed from: b */
    public final boolean f14584b;

    /* renamed from: c */
    public C0354d.AbstractC0360e f14585c;

    /* renamed from: d */
    public boolean f14586d = true;

    /* renamed from: w0.g$a */
    /* loaded from: classes-dex2jar.jar:w0/g$a.class */
    public static class C4727a extends C0354d.AbstractC0360e {

        /* renamed from: a */
        public final Reference<EditText> f14587a;

        public C4727a(EditText editText) {
            this.f14587a = new WeakReference(editText);
        }

        @Override // androidx.emoji2.text.C0354d.AbstractC0360e
        /* renamed from: b */
        public void mo538b() {
            C4726g.m539a(this.f14587a.get(), 1);
        }
    }

    public C4726g(EditText editText, boolean z) {
        this.f14583a = editText;
        this.f14584b = z;
    }

    /* renamed from: a */
    public static void m539a(EditText editText, int i) {
        if (i != 1 || editText == null || !editText.isAttachedToWindow()) {
            return;
        }
        Editable editableText = editText.getEditableText();
        int selectionStart = Selection.getSelectionStart(editableText);
        int selectionEnd = Selection.getSelectionEnd(editableText);
        C0354d.m8255a().m8248h(editableText);
        if (selectionStart >= 0 && selectionEnd >= 0) {
            Selection.setSelection(editableText, selectionStart, selectionEnd);
        } else if (selectionStart >= 0) {
            Selection.setSelection(editableText, selectionStart);
        } else if (selectionEnd < 0) {
        } else {
            Selection.setSelection(editableText, selectionEnd);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (!this.f14583a.isInEditMode()) {
            if ((!this.f14586d || (!this.f14584b && !C0354d.m8253c())) || i2 > i3 || !(charSequence instanceof Spannable)) {
                return;
            }
            int m8254b = C0354d.m8255a().m8254b();
            if (m8254b != 0) {
                if (m8254b == 1) {
                    C0354d.m8255a().m8247i((Spannable) charSequence, i, i + i3, Api.BaseClientBuilder.API_PRIORITY_OTHER, 0);
                    return;
                } else if (m8254b != 3) {
                    return;
                }
            }
            C0354d m8255a = C0354d.m8255a();
            if (this.f14585c == null) {
                this.f14585c = new C4727a(this.f14583a);
            }
            m8255a.m8246j(this.f14585c);
        }
    }
}
