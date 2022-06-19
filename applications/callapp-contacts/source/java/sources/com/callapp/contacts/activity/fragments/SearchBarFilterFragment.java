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

    /* renamed from: a */
    private View f23037a;

    /* renamed from: b */
    private RecyclerView f23038b;

    /* renamed from: c */
    private TextView f23039c;

    /* renamed from: e */
    private SearchBarFilterEvents f23041e;

    /* renamed from: g */
    private String f23043g;

    /* renamed from: h */
    private SearchFilter f23044h;

    /* renamed from: i */
    private BaseCallAppListAdapter<BaseAdapterItemData, BaseCallAppViewHolder> f23045i;

    /* renamed from: d */
    private final ScrollRecyclerStateTracker f23040d = new ScrollRecyclerStateTracker();

    /* renamed from: f */
    private InvalidateDataListener f23042f = getInvalidateDataListener();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter.class */
    public class SearchFilter extends Filter {
        protected SearchFilter() {
            SearchBarFilterFragment.this = r4;
        }

        @Override // android.widget.Filter
        protected Filter.FilterResults performFiltering(CharSequence charSequence) {
            Filter.FilterResults filterResults = new Filter.FilterResults();
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(SearchBarFilterFragment.this.mo29712a(charSequence));
            filterResults.values = arrayList;
            filterResults.count = arrayList.size();
            return filterResults;
        }

        @Override // android.widget.Filter
        protected void publishResults(final CharSequence charSequence, final Filter.FilterResults filterResults) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.fragments.SearchBarFilterFragment.SearchFilter.1
                @Override // java.lang.Runnable
                public void run() {
                    List<BaseAdapterItemData> list = (List) filterResults.values;
                    if (CollectionUtils.m26076a(list)) {
                        SearchBarFilterFragment.this.f23039c.setText(Activities.m27697a(SearchBarFilterFragment.this.getEmptySearchResultText(), charSequence));
                        SearchBarFilterFragment.this.f23039c.setVisibility(0);
                        SearchBarFilterFragment.this.f23038b.setVisibility(8);
                        return;
                    }
                    SearchBarFilterFragment.this.f23038b.setVisibility(0);
                    SearchBarFilterFragment.this.f23039c.setVisibility(8);
                    if (SearchBarFilterFragment.this.f23045i == null) {
                        SearchBarFilterFragment.this.f23045i = SearchBarFilterFragment.this.mo29716a(SearchBarFilterFragment.this.f23040d, list);
                        SearchBarFilterFragment.this.f23038b.setAdapter(SearchBarFilterFragment.this.f23045i);
                        return;
                    }
                    SearchBarFilterFragment.this.f23045i.setData((List) list);
                    if (SearchBarFilterFragment.this.f23038b.getAdapter() != null) {
                        return;
                    }
                    SearchBarFilterFragment.this.f23038b.setAdapter(SearchBarFilterFragment.this.f23045i);
                }
            });
        }
    }

    /* renamed from: a */
    public abstract BaseCallAppListAdapter<BaseAdapterItemData, BaseCallAppViewHolder> mo29716a(ScrollRecyclerStateTracker scrollRecyclerStateTracker, List<BaseAdapterItemData> list);

    /* renamed from: a */
    protected abstract Collection<? extends BaseAdapterItemData> mo29712a(CharSequence charSequence);

    /* renamed from: a */
    public final List<BaseAdapterItemData> m30259a(CharSequence charSequence, List<? extends BaseAdapterItemData> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.m26076a(list)) {
            return arrayList;
        }
        if (StringUtils.m26059a(charSequence)) {
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
            String m26101a = baseAdapterItemData2.getPhone().m26101a();
            if (StringUtils.m26037c(lowerCase, charSequence.toString())) {
                int indexOf = lowerCase.indexOf(charSequence.toString());
                baseAdapterItemData2.textHighlights = new SparseIntArray(1);
                baseAdapterItemData2.textHighlights.put(indexOf, charSequence.length() + indexOf);
                arrayList.add(baseAdapterItemData2);
            } else if (StringUtils.m26037c(m26101a, lowerCase)) {
                int indexOf2 = lowerCase.indexOf(charSequence.toString());
                baseAdapterItemData2.textHighlights = new SparseIntArray(1);
                baseAdapterItemData2.textHighlights.put(indexOf2, charSequence.length() + indexOf2);
                arrayList.add(baseAdapterItemData2);
            }
        }
        if (CollectionUtils.m26068b(arrayList)) {
            if (z) {
                arrayList.add(0, new HeaderSectionData(Activities.getString(2131887867)));
            } else {
                arrayList.add(0, new HeaderSectionData(Activities.getString(getAllHeaderText())));
            }
        }
        return arrayList;
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchBarFilter
    /* renamed from: a */
    public final void mo30194a(String str) {
        this.f23043g = str;
        this.f23037a.setVisibility(8);
        getFilter().filter(str);
    }

    protected abstract int getAllHeaderText();

    public String getCurrentFilter() {
        return this.f23043g;
    }

    protected abstract int getEmptySearchResultText();

    protected abstract int getEmptyViewBoldTitle();

    protected abstract int getEmptyViewImage();

    protected abstract int getEmptyViewTitle();

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f23044h == null) {
            this.f23044h = new SearchFilter();
        }
        return this.f23044h;
    }

    protected abstract InvalidateDataListener getInvalidateDataListener();

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            SearchBarFilterEvents searchBarFilterEvents = (SearchBarFilterEvents) getActivity();
            this.f23041e = searchBarFilterEvents;
            searchBarFilterEvents.mo29757a(this);
            EventBusManager.f25138a.m29048a(InvalidateDataListener.f23122b, this.f23042f);
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
        SearchBarFilterEvents searchBarFilterEvents = this.f23041e;
        if (searchBarFilterEvents != null) {
            searchBarFilterEvents.mo29750b(this);
        }
        EventBusManager.f25138a.m29045b(InvalidateDataListener.f23122b, this.f23042f);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f23037a = view.findViewById(2131363760);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(2131363646);
        this.f23038b = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f23040d.setRecyclerView(this.f23038b);
        TextView textView = (TextView) view.findViewById(2131362687);
        this.f23039c = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        String string = Activities.getString(getEmptyViewTitle());
        SpannableString spannableString = new SpannableString(Activities.m27697a(getEmptyViewTitle(), Activities.getString(getEmptyViewBoldTitle())));
        spannableString.setSpan(new TypefaceSpan("sans-serif-medium"), string.length(), spannableString.length(), 33);
        spannableString.setSpan(new StyleSpan(1), string.length(), spannableString.length(), 33);
        spannableString.setSpan(new ForegroundColorSpan(ThemeUtils.getColor(2131100108)), 0, spannableString.length(), 18);
        ((TextView) this.f23037a.findViewById(2131362692)).setText(spannableString);
        ImageUtils.m27530a((ImageView) this.f23037a.findViewById(2131362690), getEmptyViewImage());
    }
}
