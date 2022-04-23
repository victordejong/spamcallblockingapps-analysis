package androidx.databinding.adapters;

import android.widget.AbsListView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;
@BindingMethods
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/AbsListViewBindingAdapter.class */
public class AbsListViewBindingAdapter {

    /* renamed from: androidx.databinding.adapters.AbsListViewBindingAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/AbsListViewBindingAdapter$1.class */
    final class C02731 implements AbsListView.OnScrollListener {

        /* renamed from: f */
        final /* synthetic */ OnScrollStateChanged f3581f;

        /* renamed from: g */
        final /* synthetic */ OnScroll f3582g;

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            OnScroll onScroll = this.f3582g;
            if (onScroll != null) {
                onScroll.onScroll(absListView, i, i2, i3);
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            OnScrollStateChanged onScrollStateChanged = this.f3581f;
            if (onScrollStateChanged != null) {
                onScrollStateChanged.onScrollStateChanged(absListView, i);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/AbsListViewBindingAdapter$OnScroll.class */
    public interface OnScroll {
        void onScroll(AbsListView absListView, int i, int i2, int i3);
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged.class */
    public interface OnScrollStateChanged {
        void onScrollStateChanged(AbsListView absListView, int i);
    }
}
