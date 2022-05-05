package androidx.databinding.adapters;

import android.widget.TabHost;
import androidx.annotation.RestrictTo;
import androidx.databinding.InverseBindingListener;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/TabHostBindingAdapter.class */
public class TabHostBindingAdapter {

    /* renamed from: androidx.databinding.adapters.TabHostBindingAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/TabHostBindingAdapter$1.class */
    final class C02851 implements TabHost.OnTabChangeListener {

        /* renamed from: f */
        final /* synthetic */ TabHost.OnTabChangeListener f3617f;

        /* renamed from: g */
        final /* synthetic */ InverseBindingListener f3618g;

        @Override // android.widget.TabHost.OnTabChangeListener
        public void onTabChanged(String str) {
            TabHost.OnTabChangeListener onTabChangeListener = this.f3617f;
            if (onTabChangeListener != null) {
                onTabChangeListener.onTabChanged(str);
            }
            this.f3618g.m18673a();
        }
    }
}
