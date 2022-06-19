package p270w0;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.emoji2.text.C0354d;
import com.google.android.gms.common.api.Api;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
/* renamed from: w0.d */
/* loaded from: classes-dex2jar.jar:w0/d.class */
public final class C4718d implements InputFilter {

    /* renamed from: a */
    public final TextView f14572a;

    /* renamed from: b */
    public C0354d.AbstractC0360e f14573b;

    /* renamed from: w0.d$a */
    /* loaded from: classes-dex2jar.jar:w0/d$a.class */
    public static class C4719a extends C0354d.AbstractC0360e {

        /* renamed from: a */
        public final Reference<TextView> f14574a;

        /* renamed from: b */
        public final Reference<C4718d> f14575b;

        public C4719a(TextView textView, C4718d c4718d) {
            this.f14574a = new WeakReference(textView);
            this.f14575b = new WeakReference(c4718d);
        }

        @Override // androidx.emoji2.text.C0354d.AbstractC0360e
        /* renamed from: b */
        public void mo538b() {
            TextView textView = this.f14574a.get();
            C4718d c4718d = this.f14575b.get();
            boolean z = false;
            if (c4718d != null) {
                if (textView == null) {
                    z = false;
                } else {
                    InputFilter[] filters = textView.getFilters();
                    if (filters == null) {
                        z = false;
                    } else {
                        int i = 0;
                        while (true) {
                            z = false;
                            if (i >= filters.length) {
                                break;
                            } else if (filters[i] == c4718d) {
                                z = true;
                                break;
                            } else {
                                i++;
                            }
                        }
                    }
                }
            }
            if (z && textView.isAttachedToWindow()) {
                CharSequence m8248h = C0354d.m8255a().m8248h(textView.getText());
                int selectionStart = Selection.getSelectionStart(m8248h);
                int selectionEnd = Selection.getSelectionEnd(m8248h);
                textView.setText(m8248h);
                if (!(m8248h instanceof Spannable)) {
                    return;
                }
                Spannable spannable = (Spannable) m8248h;
                if (selectionStart >= 0 && selectionEnd >= 0) {
                    Selection.setSelection(spannable, selectionStart, selectionEnd);
                } else if (selectionStart >= 0) {
                    Selection.setSelection(spannable, selectionStart);
                } else if (selectionEnd < 0) {
                } else {
                    Selection.setSelection(spannable, selectionEnd);
                }
            }
        }
    }

    public C4718d(TextView textView) {
        this.f14572a = textView;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        if (this.f14572a.isInEditMode()) {
            return charSequence;
        }
        int m8254b = C0354d.m8255a().m8254b();
        if (m8254b != 0) {
            if (m8254b == 1) {
                boolean z = true;
                if (i4 == 0) {
                    z = true;
                    if (i3 == 0) {
                        z = true;
                        if (spanned.length() == 0) {
                            z = true;
                            if (charSequence == this.f14572a.getText()) {
                                z = false;
                            }
                        }
                    }
                }
                CharSequence charSequence2 = charSequence;
                if (z) {
                    charSequence2 = charSequence;
                    if (charSequence != null) {
                        if (i != 0 || i2 != charSequence.length()) {
                            charSequence = charSequence.subSequence(i, i2);
                        }
                        charSequence2 = C0354d.m8255a().m8247i(charSequence, 0, charSequence.length(), Api.BaseClientBuilder.API_PRIORITY_OTHER, 0);
                    }
                }
                return charSequence2;
            } else if (m8254b != 3) {
                return charSequence;
            }
        }
        C0354d m8255a = C0354d.m8255a();
        if (this.f14573b == null) {
            this.f14573b = new C4719a(this.f14572a, this);
        }
        m8255a.m8246j(this.f14573b);
        return charSequence;
    }
}
