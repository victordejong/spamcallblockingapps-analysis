package androidx.databinding.adapters;

import android.widget.SeekBar;
import androidx.annotation.RestrictTo;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;
@InverseBindingMethods
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/SeekBarBindingAdapter.class */
public class SeekBarBindingAdapter {

    /* renamed from: androidx.databinding.adapters.SeekBarBindingAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/SeekBarBindingAdapter$1.class */
    final class C02841 implements SeekBar.OnSeekBarChangeListener {

        /* renamed from: a */
        final /* synthetic */ OnProgressChanged f3613a;

        /* renamed from: b */
        final /* synthetic */ InverseBindingListener f3614b;

        /* renamed from: c */
        final /* synthetic */ OnStartTrackingTouch f3615c;

        /* renamed from: d */
        final /* synthetic */ OnStopTrackingTouch f3616d;

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            OnProgressChanged onProgressChanged = this.f3613a;
            if (onProgressChanged != null) {
                onProgressChanged.onProgressChanged(seekBar, i, z);
            }
            InverseBindingListener inverseBindingListener = this.f3614b;
            if (inverseBindingListener != null) {
                inverseBindingListener.m18673a();
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            OnStartTrackingTouch onStartTrackingTouch = this.f3615c;
            if (onStartTrackingTouch != null) {
                onStartTrackingTouch.onStartTrackingTouch(seekBar);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            OnStopTrackingTouch onStopTrackingTouch = this.f3616d;
            if (onStopTrackingTouch != null) {
                onStopTrackingTouch.onStopTrackingTouch(seekBar);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged.class */
    public interface OnProgressChanged {
        void onProgressChanged(SeekBar seekBar, int i, boolean z);
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch.class */
    public interface OnStartTrackingTouch {
        void onStartTrackingTouch(SeekBar seekBar);
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch.class */
    public interface OnStopTrackingTouch {
        void onStopTrackingTouch(SeekBar seekBar);
    }
}
