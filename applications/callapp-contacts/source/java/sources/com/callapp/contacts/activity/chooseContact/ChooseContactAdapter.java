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
import kotlin.jvm.internal.C18524p;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/chooseContact/ChooseContactAdapter.class */
public class ChooseContactAdapter extends BaseMultiSelectListAdapter<BaseAdapterItemData, ContactViewHolder> implements Filterable, SectionIndexer {

    /* renamed from: c */
    public static final Character[] f20866c = new Character[0];

    /* renamed from: f */
    private Character[] f20869f;

    /* renamed from: h */
    private String f20871h;

    /* renamed from: i */
    private ScrollEvents f20872i;

    /* renamed from: j */
    private List<BaseAdapterItemData> f20873j;

    /* renamed from: k */
    private List<BaseAdapterItemData> f20874k;

    /* renamed from: l */
    private boolean f20875l;

    /* renamed from: m */
    private final boolean f20876m;

    /* renamed from: n */
    private final OnListItemInteractionsListener<BaseAdapterItemData> f20877n;

    /* renamed from: d */
    private final int f20867d = ThemeUtils.m27386a(CallAppApplication.get(), 2131099784);

    /* renamed from: g */
    private final Filter f20870g = new MemoryContactItemFilter(new ContactSearcher());

    /* renamed from: e */
    private LinkedHashMap<Character, Integer> f20868e = new LinkedHashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter.class */
    public class MemoryContactItemFilter extends Filter {

        /* renamed from: b */
        private ContactSearcher f20879b;

        MemoryContactItemFilter(ContactSearcher contactSearcher) {
            ChooseContactAdapter.this = r4;
            this.f20879b = contactSearcher;
        }

        /* renamed from: a */
        private void m31264a(Filter.FilterResults filterResults) {
            filterResults.values = ChooseContactAdapter.this.f20873j;
            filterResults.count = ChooseContactAdapter.this.f20873j.size();
        }

        @Override // android.widget.Filter
        protected Filter.FilterResults performFiltering(CharSequence charSequence) {
            List<? extends BaseAdapterItemData> list;
            List<? extends BaseAdapterItemData> m30439a;
            List<? extends BaseAdapterItemData> m30440a;
            try {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                if (charSequence == null) {
                    m31264a(filterResults);
                    ChooseContactAdapter.this.f20871h = null;
                    this.f20879b.m30447a();
                    return filterResults;
                }
                if (charSequence.length() > 0) {
                    if (!ChooseContactAdapter.this.f20875l) {
                        for (BaseAdapterItemData baseAdapterItemData : ChooseContactAdapter.this.f20873j) {
                            if (baseAdapterItemData.nameT9NoZero.isEmpty()) {
                                ContactUtils.m28331a(baseAdapterItemData);
                            }
                        }
                        ChooseContactAdapter.this.f20875l = true;
                    }
                    ContactSearcher contactSearcher = this.f20879b;
                    String search = charSequence.toString();
                    C18524p.m3840d(search, "search");
                    String m30434b = ContactSearcher.m30434b(search);
                    if (contactSearcher.m30441a(m30434b)) {
                        m30440a = contactSearcher.m30440a(m30434b, false);
                        list = m30440a;
                    } else {
                        m30439a = contactSearcher.m30439a(m30434b, false, false);
                        list = m30439a;
                    }
                    contactSearcher.f22742a = list;
                    contactSearcher.f22743b = search;
                    Pair pair = new Pair(Boolean.valueOf(!contactSearcher.f22742a.isEmpty()), contactSearcher.f22742a);
                    if (((Boolean) pair.first).booleanValue()) {
                        ChooseContactAdapter.this.f20871h = charSequence.toString();
                        filterResults.count = ((List) pair.second).size();
                        filterResults.values = pair.second;
                    } else if (StringUtils.m26059a(charSequence)) {
                        m31264a(filterResults);
                        ChooseContactAdapter.this.f20871h = null;
                    } else {
                        filterResults.values = Collections.emptyList();
                        filterResults.count = 0;
                        ChooseContactAdapter.this.f20871h = null;
                    }
                } else {
                    m31264a(filterResults);
                    ChooseContactAdapter.this.f20871h = null;
                }
                return filterResults;
            } catch (Exception e) {
                CLog.m27608a(getClass(), e, "PERFORM FILTERING");
                throw new RuntimeException(e);
            }
        }

        @Override // android.widget.Filter
        protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            CLog.m27611a(getClass(), "publishResults from filter: ".concat(String.valueOf(charSequence)));
            ChooseContactAdapter.this.f20874k = (List) filterResults.values;
            ChooseContactAdapter chooseContactAdapter = ChooseContactAdapter.this;
            chooseContactAdapter.setData(chooseContactAdapter.f20874k);
        }
    }

    public ChooseContactAdapter(ScrollEvents scrollEvents, List<BaseAdapterItemData> list, boolean z, OnListItemInteractionsListener<BaseAdapterItemData> onListItemInteractionsListener) {
        super(list);
        this.f20869f = f20866c;
        this.f20875l = false;
        this.f20872i = scrollEvents;
        this.f20876m = z;
        this.f20877n = onListItemInteractionsListener;
        this.f20875l = false;
        this.f20873j = list;
        this.f20874k = list;
        Character ch = null;
        int i = 0;
        for (BaseAdapterItemData baseAdapterItemData : this.f20874k) {
            Character ch2 = ch;
            if (StringUtils.m26045b((CharSequence) baseAdapterItemData.displayName)) {
                char charAt = baseAdapterItemData.displayName.charAt(0);
                char c = StringUtils.m26062a(charAt) ? '#' : charAt;
                ch2 = ch;
                if (!Objects.m31915a(Character.valueOf(c), ch)) {
                    this.f20868e.put(Character.valueOf(Character.toUpperCase(c)), Integer.valueOf(i));
                    ch2 = Character.valueOf(c);
                }
            }
            i++;
            ch = ch2;
        }
        Set<Character> keySet = this.f20868e.keySet();
        Character[] chArr = new Character[keySet.size()];
        this.f20869f = chArr;
        keySet.toArray(chArr);
    }

    /* renamed from: a */
    public /* synthetic */ void m31271a(BaseAdapterItemData baseAdapterItemData, ContactViewHolder contactViewHolder, View view) {
        if (isInMultiSelectMode()) {
            m31484b((ChooseContactAdapter) baseAdapterItemData);
            notifyDataSetChanged();
        } else if (this.f20877n == null) {
        } else {
            AndroidUtils.m27630a(view, 1);
            this.f20877n.onListItemInteracted(contactViewHolder.itemView, baseAdapterItemData);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m31272a(View view) {
        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Long pressed on calling from contact list", Constants.LONG_CLICK);
        return true;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final /* synthetic */ void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        String str;
        final ContactViewHolder contactViewHolder = (ContactViewHolder) baseCallAppViewHolder;
        final BaseAdapterItemData baseAdapterItemData = (BaseAdapterItemData) baseViewTypeData;
        Phone m28239a = PhoneManager.get().m28239a(baseAdapterItemData.normalNumbers.iterator().next());
        contactViewHolder.setPhone(m28239a.getRawNumber());
        contactViewHolder.mo30418a(baseAdapterItemData, null, this.f20872i, null);
        SpannableString spannableString = new SpannableString(ContactUtils.m28319a(baseAdapterItemData.normalNumbers, m28239a));
        if (StringUtils.m26059a((CharSequence) this.f20871h)) {
            str = StringUtils.m26020j(baseAdapterItemData.displayName);
        } else {
            SpannableString m27307a = ViewUtils.m27307a(StringUtils.m26020j(baseAdapterItemData.displayName), baseAdapterItemData.textHighlights, this.f20867d);
            int i = baseAdapterItemData.numberMatchIndexStart;
            int i2 = baseAdapterItemData.numberMatchIndexEnd;
            str = m27307a;
            if (i >= 0) {
                str = m27307a;
                if (i2 >= 0) {
                    str = m27307a;
                    if (i2 <= spannableString.length()) {
                        str = m27307a;
                        if (i <= spannableString.length()) {
                            spannableString.setSpan(new ForegroundColorSpan(this.f20867d), i, i2, 18);
                            str = m27307a;
                        }
                    }
                }
            }
        }
        if (PhoneManager.get().m28240a(m28239a)) {
            ProfilePictureView profilePicture = contactViewHolder.getProfilePicture();
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(2131231612);
            glideRequestBuilder.f28246l = true;
            GlideUtils.GlideRequestBuilder m27025a = glideRequestBuilder.m27025a(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
            m27025a.f28241g = Integer.valueOf(ThemeUtils.m27386a(CallAppApplication.get(), 2131099786));
            profilePicture.m26684a(m27025a);
        } else {
            contactViewHolder.getProfilePicture().setText(StringUtils.m26010r(str.toString()));
        }
        contactViewHolder.setName(str);
        contactViewHolder.setPhone(spannableString);
        ((CallAppRow) contactViewHolder.itemView).setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.chooseContact._$$Lambda$ChooseContactAdapter$p3QV1iFzaHrqhrCghW1mlEHIz1w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseContactAdapter.this.m31271a(baseAdapterItemData, contactViewHolder, view);
            }
        });
        ((CallAppRow) contactViewHolder.itemView).setOnContainerLongClickListener(_$$Lambda$ChooseContactAdapter$_sLCAH8FcEiyJTKrZc52ZkvZVCo.INSTANCE);
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return this.f20870g;
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        if (i >= 0) {
            Character[] chArr = this.f20869f;
            if (chArr.length <= 0) {
                return 0;
            }
            return i >= chArr.length ? this.f20868e.get(chArr[chArr.length - 1]).intValue() : this.f20868e.get(chArr[i]).intValue();
        }
        return 0;
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        int i2 = 0;
        int i3 = 0;
        int i4 = Integer.MAX_VALUE;
        while (true) {
            int i5 = i4;
            Character[] chArr = this.f20869f;
            if (i2 < chArr.length) {
                int intValue = this.f20868e.get(chArr[i2]).intValue();
                if (intValue == i) {
                    return i2;
                }
                int i6 = i3;
                int i7 = i5;
                if (intValue < i) {
                    int i8 = i - intValue;
                    i6 = i3;
                    i7 = i5;
                    if (i8 < i5) {
                        i6 = i2;
                        i7 = i8;
                    }
                }
                i2++;
                i3 = i6;
                i4 = i7;
            } else {
                return i3;
            }
        }
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return this.f20869f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f20368b = CallAppViewTypes.CENTER_CONTACT_SEARCH_LIST;
        builder.f20367a = CallAppViewTypes.LEFT_PROFILE;
        return new SearchContactViewHolder(builder.m31474a());
    }
}
