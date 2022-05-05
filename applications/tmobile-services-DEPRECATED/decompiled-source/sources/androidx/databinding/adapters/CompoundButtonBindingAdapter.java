package androidx.databinding.adapters;

import android.widget.CompoundButton;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;
@BindingMethods
@InverseBindingMethods
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/CompoundButtonBindingAdapter.class */
public class CompoundButtonBindingAdapter {

    /* renamed from: androidx.databinding.adapters.CompoundButtonBindingAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/CompoundButtonBindingAdapter$1.class */
    final class C02761 implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: f */
        final /* synthetic */ CompoundButton.OnCheckedChangeListener f3590f;

        /* renamed from: g */
        final /* synthetic */ InverseBindingListener f3591g;

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            CompoundButton.OnCheckedChangeListener onCheckedChangeListener = this.f3590f;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.onCheckedChanged(compoundButton, z);
            }
            this.f3591g.m18673a();
        }
    }
}
