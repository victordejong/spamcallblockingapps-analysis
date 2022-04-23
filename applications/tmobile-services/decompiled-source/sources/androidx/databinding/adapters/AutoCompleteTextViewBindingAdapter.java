package androidx.databinding.adapters;

import android.widget.AutoCompleteTextView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;
@BindingMethods
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/AutoCompleteTextViewBindingAdapter.class */
public class AutoCompleteTextViewBindingAdapter {

    /* renamed from: androidx.databinding.adapters.AutoCompleteTextViewBindingAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1.class */
    final class C02741 implements AutoCompleteTextView.Validator {

        /* renamed from: a */
        final /* synthetic */ IsValid f3586a;

        /* renamed from: b */
        final /* synthetic */ FixText f3587b;

        @Override // android.widget.AutoCompleteTextView.Validator
        public CharSequence fixText(CharSequence charSequence) {
            FixText fixText = this.f3587b;
            CharSequence charSequence2 = charSequence;
            if (fixText != null) {
                charSequence2 = fixText.fixText(charSequence);
            }
            return charSequence2;
        }

        @Override // android.widget.AutoCompleteTextView.Validator
        public boolean isValid(CharSequence charSequence) {
            IsValid isValid = this.f3586a;
            if (isValid != null) {
                return isValid.isValid(charSequence);
            }
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText.class */
    public interface FixText {
        CharSequence fixText(CharSequence charSequence);
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid.class */
    public interface IsValid {
        boolean isValid(CharSequence charSequence);
    }
}
