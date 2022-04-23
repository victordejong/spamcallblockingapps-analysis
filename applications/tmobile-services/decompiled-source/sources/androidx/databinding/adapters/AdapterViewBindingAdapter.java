package androidx.databinding.adapters;

import android.view.View;
import android.widget.AdapterView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;
@BindingMethods
@InverseBindingMethods
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/AdapterViewBindingAdapter.class */
public class AdapterViewBindingAdapter {

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected.class */
    public interface OnItemSelected {
        void onItemSelected(AdapterView<?> adapterView, View view, int i, long j);
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener.class */
    public static class OnItemSelectedComponentListener implements AdapterView.OnItemSelectedListener {

        /* renamed from: f */
        private final OnItemSelected f3583f;

        /* renamed from: g */
        private final OnNothingSelected f3584g;

        /* renamed from: h */
        private final InverseBindingListener f3585h;

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            OnItemSelected onItemSelected = this.f3583f;
            if (onItemSelected != null) {
                onItemSelected.onItemSelected(adapterView, view, i, j);
            }
            InverseBindingListener inverseBindingListener = this.f3585h;
            if (inverseBindingListener != null) {
                inverseBindingListener.m18673a();
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
            OnNothingSelected onNothingSelected = this.f3584g;
            if (onNothingSelected != null) {
                onNothingSelected.onNothingSelected(adapterView);
            }
            InverseBindingListener inverseBindingListener = this.f3585h;
            if (inverseBindingListener != null) {
                inverseBindingListener.m18673a();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected.class */
    public interface OnNothingSelected {
        void onNothingSelected(AdapterView<?> adapterView);
    }
}
