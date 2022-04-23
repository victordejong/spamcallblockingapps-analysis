package com.callapp.contacts.activity.chooseContact;

import android.graphics.PorterDuff;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.SectionIndexer;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.common.util.Objects;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseMultiSelectListAdapter;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.CallAppViewTypes;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.contact.list.ContactViewHolder;
import com.callapp.contacts.activity.contact.list.search.ContactSearcher;
import com.callapp.contacts.activity.contact.list.search.SearchContactViewHolder;
import com.callapp.contacts.activity.interfaces.OnListItemInteractionsListener;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.p;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/chooseContact/ChooseContactAdapter.class */
public class ChooseContactAdapter extends BaseMultiSelectListAdapter<BaseAdapterItemData, ContactViewHolder> implements Filterable, SectionIndexer {

    /* renamed from: c  reason: collision with root package name */
    public static final Character[] f11483c = new Character[0];
    private Character[] f;
    private String h;
    private ScrollEvents i;
    private List<BaseAdapterItemData> j;
    private List<BaseAdapterItemData> k;
    private boolean l;
    private final boolean m;
    private final OnListItemInteractionsListener<BaseAdapterItemData> n;

    /* renamed from: d  reason: collision with root package name */
    private final int f11484d = ThemeUtils.a(CallAppApplication.get(), 2131099784);
    private final Filter g = new MemoryContactItemFilter(new ContactSearcher());
    private LinkedHashMap<Character, Integer> e = new LinkedHashMap<>();

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter.class */
    class MemoryContactItemFilter extends Filter {

        /* renamed from: b  reason: collision with root package name */
        private ContactSearcher f11486b;

        MemoryContactItemFilter(ContactSearcher contactSearcher) {
            this.f11486b = contactSearcher;
        }

        private void a(Filter.FilterResults filterResults) {
            filterResults.values = ChooseContactAdapter.this.j;
            filterResults.count = ChooseContactAdapter.this.j.size();
        }

        @Override // android.widget.Filter
        protected Filter.FilterResults performFiltering(CharSequence charSequence) {
            try {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                if (charSequence == null) {
                    a(filterResults);
                    ChooseContactAdapter.this.h = null;
                    this.f11486b.a();
                    return filterResults;
                }
                if (charSequence.length() > 0) {
                    if (!ChooseContactAdapter.this.l) {
                        for (BaseAdapterItemData baseAdapterItemData : ChooseContactAdapter.this.j) {
                            if (baseAdapterItemData.nameT9NoZero.isEmpty()) {
                                ContactUtils.a(baseAdapterItemData);
                            }
                        }
                        ChooseContactAdapter.this.l = true;
                    }
                    ContactSearcher contactSearcher = this.f11486b;
                    String search = charSequence.toString();
                    p.d(search, "search");
                    String b2 = ContactSearcher.b(search);
                    contactSearcher.f12721a = contactSearcher.a(b2) ? contactSearcher.a(b2, false) : contactSearcher.a(b2, false, false);
                    contactSearcher.f12722b = search;
                    Pair pair = new Pair(Boolean.valueOf(!contactSearcher.f12721a.isEmpty()), contactSearcher.f12721a);
                    if (((Boolean) pair.first).booleanValue()) {
                        ChooseContactAdapter.this.h = charSequence.toString();
                        filterResults.count = ((List) pair.second).size();
                        filterResults.values = pair.second;
                    } else if (StringUtils.a(charSequence)) {
                        a(filterResults);
                        ChooseContactAdapter.this.h = null;
                    } else {
                        filterResults.values = Collections.emptyList();
                        filterResults.count = 0;
                        ChooseContactAdapter.this.h = null;
                    }
                } else {
                    a(filterResults);
                    ChooseContactAdapter.this.h = null;
                }
                return filterResults;
            } catch (Exception e) {
                CLog.a(getClass(), e, "PERFORM FILTERING");
                throw new RuntimeException(e);
            }
        }

        @Override // android.widget.Filter
        protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            CLog.a(getClass(), "publishResults from filter: ".concat(String.valueOf(charSequence)));
            ChooseContactAdapter.this.k = (List) filterResults.values;
            ChooseContactAdapter chooseContactAdapter = ChooseContactAdapter.this;
            chooseContactAdapter.setData(chooseContactAdapter.k);
        }
    }

    public ChooseContactAdapter(ScrollEvents scrollEvents, List<BaseAdapterItemData> list, boolean z, OnListItemInteractionsListener<BaseAdapterItemData> onListItemInteractionsListener) {
        super(list);
        this.f = f11483c;
        this.l = false;
        this.i = scrollEvents;
        this.m = z;
        this.n = onListItemInteractionsListener;
        this.l = false;
        this.j = list;
        this.k = list;
        Character ch = null;
        int i = 0;
        for (BaseAdapterItemData baseAdapterItemData : this.k) {
            ch = ch;
            if (StringUtils.b((CharSequence) baseAdapterItemData.displayName)) {
                char charAt = baseAdapterItemData.displayName.charAt(0);
                char c2 = StringUtils.a(charAt) ? '#' : charAt;
                ch = ch;
                if (!Objects.a(Character.valueOf(c2), ch)) {
                    this.e.put(Character.valueOf(Character.toUpperCase(c2)), Integer.valueOf(i));
                    ch = Character.valueOf(c2);
                }
            }
            i++;
        }
        Set<Character> keySet = this.e.keySet();
        Character[] chArr = new Character[keySet.size()];
        this.f = chArr;
        keySet.toArray(chArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(BaseAdapterItemData baseAdapterItemData, ContactViewHolder contactViewHolder, View view) {
        if (isInMultiSelectMode()) {
            b((ChooseContactAdapter) baseAdapterItemData);
            notifyDataSetChanged();
        } else if (this.n != null) {
            AndroidUtils.a(view, 1);
            this.n.onListItemInteracted(contactViewHolder.itemView, baseAdapterItemData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(View view) {
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Long pressed on calling from contact list", Constants.LONG_CLICK);
        return true;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final /* synthetic */ void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        CharSequence charSequence;
        final ContactViewHolder contactViewHolder = (ContactViewHolder) baseCallAppViewHolder;
        final BaseAdapterItemData baseAdapterItemData = (BaseAdapterItemData) baseViewTypeData;
        Phone a2 = PhoneManager.get().a(baseAdapterItemData.normalNumbers.iterator().next());
        contactViewHolder.setPhone(a2.getRawNumber());
        contactViewHolder.a(baseAdapterItemData, null, this.i, null);
        SpannableString spannableString = new SpannableString(ContactUtils.a(baseAdapterItemData.normalNumbers, a2));
        if (StringUtils.a((CharSequence) this.h)) {
            charSequence = StringUtils.j(baseAdapterItemData.displayName);
        } else {
            SpannableString a3 = ViewUtils.a(StringUtils.j(baseAdapterItemData.displayName), baseAdapterItemData.textHighlights, this.f11484d);
            int i = baseAdapterItemData.numberMatchIndexStart;
            int i2 = baseAdapterItemData.numberMatchIndexEnd;
            charSequence = a3;
            if (i >= 0) {
                charSequence = a3;
                if (i2 >= 0) {
                    charSequence = a3;
                    if (i2 <= spannableString.length()) {
                        charSequence = a3;
                        if (i <= spannableString.length()) {
                            spannableString.setSpan(new ForegroundColorSpan(this.f11484d), i, i2, 18);
                            charSequence = a3;
                        }
                    }
                }
            }
        }
        if (PhoneManager.get().a(a2)) {
            ProfilePictureView profilePicture = contactViewHolder.getProfilePicture();
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(2131231612);
            glideRequestBuilder.l = true;
            GlideUtils.GlideRequestBuilder a4 = glideRequestBuilder.a(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
            a4.g = Integer.valueOf(ThemeUtils.a(CallAppApplication.get(), 2131099786));
            profilePicture.a(a4);
        } else {
            contactViewHolder.getProfilePicture().setText(StringUtils.r(charSequence.toString()));
        }
        contactViewHolder.setName(charSequence);
        contactViewHolder.setPhone(spannableString);
        ((CallAppRow) contactViewHolder.itemView).setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.chooseContact._$$Lambda$ChooseContactAdapter$p3QV1iFzaHrqhrCghW1mlEHIz1w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseContactAdapter.this.a(baseAdapterItemData, contactViewHolder, view);
            }
        });
        ((CallAppRow) contactViewHolder.itemView).setOnContainerLongClickListener(_$$Lambda$ChooseContactAdapter$_sLCAH8FcEiyJTKrZc52ZkvZVCo.INSTANCE);
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return this.g;
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        if (i < 0) {
            return 0;
        }
        Character[] chArr = this.f;
        if (chArr.length <= 0) {
            return 0;
        }
        return i >= chArr.length ? this.e.get(chArr[chArr.length - 1]).intValue() : this.e.get(chArr[i]).intValue();
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        int i2 = 0;
        int i3 = 0;
        int i4 = Integer.MAX_VALUE;
        while (true) {
            Character[] chArr = this.f;
            if (i2 >= chArr.length) {
                return i3;
            }
            int intValue = this.e.get(chArr[i2]).intValue();
            if (intValue == i) {
                return i2;
            }
            i3 = i3;
            i4 = i4;
            if (intValue < i) {
                int i5 = i - intValue;
                i3 = i3;
                i4 = i4;
                if (i5 < i4) {
                    i3 = i2;
                    i4 = i5;
                }
            }
            i2++;
        }
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return this.f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f11158b = CallAppViewTypes.CENTER_CONTACT_SEARCH_LIST;
        builder.f11157a = CallAppViewTypes.LEFT_PROFILE;
        return new SearchContactViewHolder(builder.a());
    }
}
