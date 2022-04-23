package com.callapp.contacts.activity.fragments;

import android.content.Context;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppListAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.HeaderSectionData;
import com.callapp.contacts.activity.base.ScrollRecyclerStateTracker;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.interfaces.SearchBarFilter;
import com.callapp.contacts.activity.interfaces.SearchBarFilterEvents;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fragments/SearchBarFilterFragment.class */
public abstract class SearchBarFilterFragment extends Fragment implements SearchBarFilter {

    /* renamed from: a  reason: collision with root package name */
    private View f12883a;

    /* renamed from: b  reason: collision with root package name */
    private RecyclerView f12884b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f12885c;
    private SearchBarFilterEvents e;
    private String g;
    private SearchFilter h;
    private BaseCallAppListAdapter<BaseAdapterItemData, BaseCallAppViewHolder> i;

    /* renamed from: d  reason: collision with root package name */
    private final ScrollRecyclerStateTracker f12886d = new ScrollRecyclerStateTracker();
    private InvalidateDataListener f = getInvalidateDataListener();

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter.class */
    public class SearchFilter extends Filter {
        protected SearchFilter() {
        }

        @Override // android.widget.Filter
        protected Filter.FilterResults performFiltering(CharSequence charSequence) {
            Filter.FilterResults filterResults = new Filter.FilterResults();
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(SearchBarFilterFragment.this.a(charSequence));
            filterResults.values = arrayList;
            filterResults.count = arrayList.size();
            return filterResults;
        }

        @Override // android.widget.Filter
        protected void publishResults(final CharSequence charSequence, final Filter.FilterResults filterResults) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.fragments.SearchBarFilterFragment.SearchFilter.1
                @Override // java.lang.Runnable
                public void run() {
                    List<BaseAdapterItemData> list = (List) filterResults.values;
                    if (CollectionUtils.a(list)) {
                        SearchBarFilterFragment.this.f12885c.setText(Activities.a(SearchBarFilterFragment.this.getEmptySearchResultText(), charSequence));
                        SearchBarFilterFragment.this.f12885c.setVisibility(0);
                        SearchBarFilterFragment.this.f12884b.setVisibility(8);
                        return;
                    }
                    SearchBarFilterFragment.this.f12884b.setVisibility(0);
                    SearchBarFilterFragment.this.f12885c.setVisibility(8);
                    if (SearchBarFilterFragment.this.i == null) {
                        SearchBarFilterFragment.this.i = SearchBarFilterFragment.this.a(SearchBarFilterFragment.this.f12886d, list);
                        SearchBarFilterFragment.this.f12884b.setAdapter(SearchBarFilterFragment.this.i);
                        return;
                    }
                    SearchBarFilterFragment.this.i.setData((List) list);
                    if (SearchBarFilterFragment.this.f12884b.getAdapter() == null) {
                        SearchBarFilterFragment.this.f12884b.setAdapter(SearchBarFilterFragment.this.i);
                    }
                }
            });
        }
    }

    public abstract BaseCallAppListAdapter<BaseAdapterItemData, BaseCallAppViewHolder> a(ScrollRecyclerStateTracker scrollRecyclerStateTracker, List<BaseAdapterItemData> list);

    protected abstract Collection<? extends BaseAdapterItemData> a(CharSequence charSequence);

    /* JADX INFO: Access modifiers changed from: protected */
    public final List<BaseAdapterItemData> a(CharSequence charSequence, List<? extends BaseAdapterItemData> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.a(list)) {
            return arrayList;
        }
        if (StringUtils.a(charSequence)) {
            if (z) {
                arrayList.add(new HeaderSectionData(Activities.getString(2131887867)));
            } else {
                arrayList.add(new HeaderSectionData(Activities.getString(getAllHeaderText())));
            }
            for (BaseAdapterItemData baseAdapterItemData : list) {
                baseAdapterItemData.textHighlights.clear();
                arrayList.add(baseAdapterItemData);
            }
            return arrayList;
        }
        for (BaseAdapterItemData baseAdapterItemData2 : list) {
            String lowerCase = baseAdapterItemData2.displayName == null ? null : baseAdapterItemData2.displayName.toLowerCase(Locale.getDefault());
            String a2 = baseAdapterItemData2.getPhone().a();
            if (StringUtils.c(lowerCase, charSequence.toString())) {
                int indexOf = lowerCase.indexOf(charSequence.toString());
                baseAdapterItemData2.textHighlights = new SparseIntArray(1);
                baseAdapterItemData2.textHighlights.put(indexOf, charSequence.length() + indexOf);
                arrayList.add(baseAdapterItemData2);
            } else if (StringUtils.c(a2, lowerCase)) {
                int indexOf2 = lowerCase.indexOf(charSequence.toString());
                baseAdapterItemData2.textHighlights = new SparseIntArray(1);
                baseAdapterItemData2.textHighlights.put(indexOf2, charSequence.length() + indexOf2);
                arrayList.add(baseAdapterItemData2);
            }
        }
        if (CollectionUtils.b(arrayList)) {
            if (z) {
                arrayList.add(0, new HeaderSectionData(Activities.getString(2131887867)));
            } else {
                arrayList.add(0, new HeaderSectionData(Activities.getString(getAllHeaderText())));
            }
        }
        return arrayList;
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchBarFilter
    public final void a(String str) {
        this.g = str;
        this.f12883a.setVisibility(8);
        getFilter().filter(str);
    }

    protected abstract int getAllHeaderText();

    public String getCurrentFilter() {
        return this.g;
    }

    protected abstract int getEmptySearchResultText();

    protected abstract int getEmptyViewBoldTitle();

    protected abstract int getEmptyViewImage();

    protected abstract int getEmptyViewTitle();

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.h == null) {
            this.h = new SearchFilter();
        }
        return this.h;
    }

    protected abstract InvalidateDataListener getInvalidateDataListener();

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            SearchBarFilterEvents searchBarFilterEvents = (SearchBarFilterEvents) getActivity();
            this.e = searchBarFilterEvents;
            searchBarFilterEvents.a(this);
            EventBusManager.f14368a.a(InvalidateDataListener.f12949b, this.f);
        } catch (ClassCastException e) {
            throw new IllegalStateException("Parent activity must implement SearchBarFilterEvents");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131558672, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        SearchBarFilterEvents searchBarFilterEvents = this.e;
        if (searchBarFilterEvents != null) {
            searchBarFilterEvents.b(this);
        }
        EventBusManager.f14368a.b(InvalidateDataListener.f12949b, this.f);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f12883a = view.findViewById(2131363760);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(2131363646);
        this.f12884b = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f12886d.setRecyclerView(this.f12884b);
        TextView textView = (TextView) view.findViewById(2131362687);
        this.f12885c = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        String string = Activities.getString(getEmptyViewTitle());
        SpannableString spannableString = new SpannableString(Activities.a(getEmptyViewTitle(), Activities.getString(getEmptyViewBoldTitle())));
        spannableString.setSpan(new TypefaceSpan("sans-serif-medium"), string.length(), spannableString.length(), 33);
        spannableString.setSpan(new StyleSpan(1), string.length(), spannableString.length(), 33);
        spannableString.setSpan(new ForegroundColorSpan(ThemeUtils.getColor(2131100108)), 0, spannableString.length(), 18);
        ((TextView) this.f12883a.findViewById(2131362692)).setText(spannableString);
        ImageUtils.a((ImageView) this.f12883a.findViewById(2131362690), getEmptyViewImage());
    }
}
