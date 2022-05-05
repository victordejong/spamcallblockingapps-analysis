package androidx.databinding.adapters;

import android.text.Editable;
import android.text.TextWatcher;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;
import androidx.databinding.InverseBindingListener;
@BindingMethods
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/TextViewBindingAdapter.class */
public class TextViewBindingAdapter {

    /* renamed from: androidx.databinding.adapters.TextViewBindingAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/TextViewBindingAdapter$1.class */
    final class C02861 implements TextWatcher {

        /* renamed from: f */
        final /* synthetic */ BeforeTextChanged f3619f;

        /* renamed from: g */
        final /* synthetic */ OnTextChanged f3620g;

        /* renamed from: h */
        final /* synthetic */ InverseBindingListener f3621h;

        /* renamed from: i */
        final /* synthetic */ AfterTextChanged f3622i;

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AfterTextChanged afterTextChanged = this.f3622i;
            if (afterTextChanged != null) {
                afterTextChanged.afterTextChanged(editable);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            BeforeTextChanged beforeTextChanged = this.f3619f;
            if (beforeTextChanged != null) {
                beforeTextChanged.beforeTextChanged(charSequence, i, i2, i3);
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            OnTextChanged onTextChanged = this.f3620g;
            if (onTextChanged != null) {
                onTextChanged.onTextChanged(charSequence, i, i2, i3);
            }
            InverseBindingListener inverseBindingListener = this.f3621h;
            if (inverseBindingListener != null) {
                inverseBindingListener.m18673a();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged.class */
    public interface AfterTextChanged {
        void afterTextChanged(Editable editable);
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged.class */
    public interface BeforeTextChanged {
        void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3);
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged.class */
    public interface OnTextChanged {
        void onTextChanged(CharSequence charSequence, int i, int i2, int i3);
    }
}
