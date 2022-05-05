package androidx.databinding.adapters;

import android.annotation.TargetApi;
import android.widget.SearchView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;
@BindingMethods
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/SearchViewBindingAdapter.class */
public class SearchViewBindingAdapter {

    /* renamed from: androidx.databinding.adapters.SearchViewBindingAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/SearchViewBindingAdapter$1.class */
    final class C02821 implements SearchView.OnQueryTextListener {

        /* renamed from: a */
        final /* synthetic */ OnQueryTextSubmit f3609a;

        /* renamed from: b */
        final /* synthetic */ OnQueryTextChange f3610b;

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            OnQueryTextChange onQueryTextChange = this.f3610b;
            if (onQueryTextChange != null) {
                return onQueryTextChange.onQueryTextChange(str);
            }
            return false;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            OnQueryTextSubmit onQueryTextSubmit = this.f3609a;
            if (onQueryTextSubmit != null) {
                return onQueryTextSubmit.onQueryTextSubmit(str);
            }
            return false;
        }
    }

    /* renamed from: androidx.databinding.adapters.SearchViewBindingAdapter$2 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/SearchViewBindingAdapter$2.class */
    final class C02832 implements SearchView.OnSuggestionListener {

        /* renamed from: a */
        final /* synthetic */ OnSuggestionSelect f3611a;

        /* renamed from: b */
        final /* synthetic */ OnSuggestionClick f3612b;

        @Override // android.widget.SearchView.OnSuggestionListener
        public boolean onSuggestionClick(int i) {
            OnSuggestionClick onSuggestionClick = this.f3612b;
            if (onSuggestionClick != null) {
                return onSuggestionClick.onSuggestionClick(i);
            }
            return false;
        }

        @Override // android.widget.SearchView.OnSuggestionListener
        public boolean onSuggestionSelect(int i) {
            OnSuggestionSelect onSuggestionSelect = this.f3611a;
            if (onSuggestionSelect != null) {
                return onSuggestionSelect.onSuggestionSelect(i);
            }
            return false;
        }
    }

    @TargetApi(11)
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange.class */
    public interface OnQueryTextChange {
        boolean onQueryTextChange(String str);
    }

    @TargetApi(11)
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit.class */
    public interface OnQueryTextSubmit {
        boolean onQueryTextSubmit(String str);
    }

    @TargetApi(11)
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick.class */
    public interface OnSuggestionClick {
        boolean onSuggestionClick(int i);
    }

    @TargetApi(11)
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect.class */
    public interface OnSuggestionSelect {
        boolean onSuggestionSelect(int i);
    }
}
