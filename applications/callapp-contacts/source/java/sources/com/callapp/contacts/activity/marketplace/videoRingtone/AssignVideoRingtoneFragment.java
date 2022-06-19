package com.callapp.contacts.activity.marketplace.videoRingtone;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import android.util.Pair;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.invite.BadgeMemoryContactItem;
import com.callapp.contacts.loader.PersonalStoreItemDataManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.SectionData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.CallAppCheckBox;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.contacts.widget.referandearn.SearchAndSelectBottom;
import com.callapp.contacts.widget.referandearn.SearchAndSelectFragment;
import com.callapp.contacts.widget.referandearn.SearchAndSelectHeader;
import java.util.ArrayList;
import java.util.List;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.lang3.StringUtils;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018�� *2\u00020\u00012\u00020\u0002:\u0001*B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\tH\u0016J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u0015\u001a\u00020\tH\u0016J$\u0010\u0016\u001a\u001e\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u0018\u0018\u00010\u0017H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u001b\u001a\u00020\u000bH\u0016J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0012\u0010 \u001a\u00020\u001d2\b\u0010!\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\"\u001a\u00020\u001dH\u0016J\u0018\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\tH\u0016J\b\u0010&\u001a\u00020\u001dH\u0016J\b\u0010'\u001a\u00020(H\u0016J\b\u0010)\u001a\u00020(H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n��R\u0018\u0010\u000e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n��¨\u0006+"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment;", "Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;", "Landroid/view/View$OnClickListener;", "()V", "assignVideoResultListener", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoResultListener;", "personalType", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;", "popupView", "Landroid/view/View;", "requestCode", "", "searchAndSelectHeader", "Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;", "selectedContacts", "Ljava/util/ArrayList;", "", "selectedVideo", "getBottomLayout", "getBottomSectionData", "Lcom/callapp/contacts/model/SectionData;", "getHeaderLayout", "getSuggestionsAndContacts", "Landroid/util/Pair;", "", "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;", "getTopSectionData", "getViewType", "onAttach", "", "context", "Landroid/content/Context;", "onClick", "p0", "onDetach", "onGreySelectChange", "memoryContactItem", "view", "onSelectChange", "showSearchBox", "", "showShowAllButton", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment.class */
public final class AssignVideoRingtoneFragment extends SearchAndSelectFragment implements View.OnClickListener {

    /* renamed from: a */
    public static final Companion f23715a = new Companion(null);

    /* renamed from: f */
    private AssignVideoResultListener f23716f;

    /* renamed from: g */
    private ArrayList<String> f23717g;

    /* renamed from: h */
    private String f23718h;

    /* renamed from: i */
    private int f23719i;

    /* renamed from: j */
    private PersonalStoreItemUrlData.PersonalStoreItemType f23720j;

    /* renamed from: k */
    private View f23721k;

    /* renamed from: l */
    private SearchAndSelectHeader f23722l;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J2\u0010\b\u001a\u00020\t2\u0010\u0010\n\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0011"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment$Companion;", "", "()V", "EXTRA_PERSONAL_TYPE", "", "EXTRA_REQUEST_CODE", "EXTRA_SELECTED_CONTACTS", "EXTRA_SELECTED_VIDEO", "newInstance", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment;", "selectedContacts", "Ljava/util/ArrayList;", "selectedVideo", "requestCode", "", "personalType", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static AssignVideoRingtoneFragment m29896a(ArrayList<String> arrayList, String selectedVideo, int i, PersonalStoreItemUrlData.PersonalStoreItemType personalType) {
            C18524p.m3840d(selectedVideo, "selectedVideo");
            C18524p.m3840d(personalType, "personalType");
            AssignVideoRingtoneFragment assignVideoRingtoneFragment = new AssignVideoRingtoneFragment();
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("extra_selected_contacts", arrayList);
            bundle.putString("extra_selected_video", selectedVideo);
            bundle.putInt("extra_request_code", i);
            bundle.putString("extra_personal_type", personalType.name());
            C20128v c20128v = C20128v.f66529a;
            assignVideoRingtoneFragment.setArguments(bundle);
            return assignVideoRingtoneFragment;
        }
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment, com.callapp.contacts.activity.invite.OnSelectChangeListener
    /* renamed from: a */
    public final void mo26321a(final BadgeMemoryContactItem memoryContactItem, final View view) {
        TextView textView;
        C18524p.m3840d(memoryContactItem, "memoryContactItem");
        C18524p.m3840d(view, "view");
        View view2 = this.f23721k;
        if (view2 == null || view2.getVisibility() != 0) {
            if (ViewUtils.m27329a(this.f23721k)) {
                View view3 = this.f23721k;
                if (view3 != null) {
                    view3.setVisibility(0);
                }
            } else {
                View view4 = this.f23721k;
                if (view4 != null) {
                    ViewUtils.m27299b(view4, 2131232141, ThemeUtils.getColor(2131099686), ThemeUtils.getColor(2131099784), 1);
                    TextView popupTitle = (TextView) view4.findViewById(2131363532);
                    C18524p.m3843b(popupTitle, "popupTitle");
                    popupTitle.setText(Activities.getString(2131886644));
                    popupTitle.setTextColor(ThemeUtils.getColor(2131100140));
                    TextView popupSubTitle = (TextView) view4.findViewById(2131363531);
                    C18524p.m3843b(popupSubTitle, "popupSubTitle");
                    popupSubTitle.setText(Activities.getString(2131886257));
                    popupSubTitle.setTextColor(ThemeUtils.getColor(2131100140));
                    TextView textView2 = (TextView) view4.findViewById(2131363530);
                    TextView textView3 = (TextView) view4.findViewById(2131363529);
                    DialogMessageWithTopImageNew.Companion companion = DialogMessageWithTopImageNew.f27121a;
                    DialogMessageWithTopImageNew.Companion.m27968a(textView2, 2131232141, Integer.valueOf(ThemeUtils.getColor(2131100145)), Integer.valueOf(ThemeUtils.getColor(2131099784)), 2, Integer.valueOf(ThemeUtils.getColor(2131099784)), new SpannableString(Activities.getString(2131887488)), null, true, true);
                    DialogMessageWithTopImageNew.Companion companion2 = DialogMessageWithTopImageNew.f27121a;
                    DialogMessageWithTopImageNew.Companion.m27968a(textView3, 2131232141, Integer.valueOf(ThemeUtils.getColor(2131099784)), Integer.valueOf(ThemeUtils.getColor(2131099784)), 0, Integer.valueOf(ThemeUtils.getColor(2131100228)), new SpannableString(Activities.getString(2131886505)), null, true, true);
                    textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.AssignVideoRingtoneFragment$onGreySelectChange$$inlined$let$lambda$1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view5) {
                            View view6;
                            view6 = AssignVideoRingtoneFragment.this.f23721k;
                            if (view6 != null) {
                                view6.setVisibility(8);
                            }
                        }
                    });
                }
            }
            View view5 = this.f23721k;
            if (view5 == null || (textView = (TextView) view5.findViewById(2131363530)) == null) {
                return;
            }
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.AssignVideoRingtoneFragment$onGreySelectChange$$inlined$let$lambda$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view6) {
                    View view7;
                    BadgeMemoryContactItem.this.setChecked(true);
                    View view8 = view;
                    if (view8 instanceof CallAppCheckBox) {
                        ((CallAppCheckBox) view8).setChecked(true);
                    } else if (view8 instanceof ProfilePictureView) {
                        ((ProfilePictureView) view8).m26682a(true, true);
                    }
                    this.mo26312c();
                    view7 = this.f23721k;
                    if (view7 != null) {
                        view7.setVisibility(8);
                    }
                }
            });
        }
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment, com.callapp.contacts.activity.invite.OnSelectChangeListener
    /* renamed from: c */
    public final void mo26312c() {
        super.mo26312c();
        if (this.f23722l != null) {
            SearchAndSelectHeader searchAndSelectHeader = this.f23722l;
            if (searchAndSelectHeader == null) {
                C18524p.m3848a("searchAndSelectHeader");
            }
            int size = getCheckedItems().size();
            searchAndSelectHeader.setSubtitle((String.valueOf(size) + StringUtils.SPACE) + Activities.getString(2131886656));
        }
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    /* renamed from: d */
    public final boolean mo26310d() {
        return false;
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final View getBottomLayout() {
        Context requireContext = requireContext();
        C18524p.m3843b(requireContext, "requireContext()");
        SearchAndSelectBottom searchAndSelectBottom = new SearchAndSelectBottom(requireContext, null, 0, this, 6, null);
        String string = Activities.getString(2131886784);
        C18524p.m3843b(string, "Activities.getString(R.string.doneAllCaps)");
        SearchAndSelectBottom.setData$default(searchAndSelectBottom, null, string, ThemeUtils.getColor(2131099784), 1, null);
        return searchAndSelectBottom;
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final SectionData getBottomSectionData() {
        return new SectionData(Activities.getString(2131886897));
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final View getHeaderLayout() {
        ArrayList<String> arrayList = this.f23717g;
        int size = arrayList != null ? arrayList.size() : 0;
        Context requireContext = requireContext();
        C18524p.m3843b(requireContext, "requireContext()");
        SearchAndSelectHeader searchAndSelectHeader = new SearchAndSelectHeader(requireContext, null, 0, 6, null);
        this.f23722l = searchAndSelectHeader;
        if (searchAndSelectHeader == null) {
            C18524p.m3848a("searchAndSelectHeader");
        }
        String string = Activities.getString(2131886269);
        C18524p.m3843b(string, "Activities.getString(R.string.assign_to_contact)");
        String str = (String.valueOf(size) + StringUtils.SPACE) + Activities.getString(2131886656);
        String str2 = this.f23718h;
        if (str2 == null) {
            C18524p.m3848a("selectedVideo");
        }
        searchAndSelectHeader.setData(string, str, str2);
        SearchAndSelectHeader searchAndSelectHeader2 = this.f23722l;
        if (searchAndSelectHeader2 == null) {
            C18524p.m3848a("searchAndSelectHeader");
        }
        return searchAndSelectHeader2;
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final Pair<List<BadgeMemoryContactItem>, List<BadgeMemoryContactItem>> getSuggestionsAndContacts() {
        List<MemoryContactItem> contactsWithPhoneNumber = ContactUtils.getContactsWithPhoneNumber();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (MemoryContactItem memoryContactItem : contactsWithPhoneNumber) {
            BadgeMemoryContactItem badgeMemoryContactItem = new BadgeMemoryContactItem(memoryContactItem);
            String valueOf = String.valueOf(badgeMemoryContactItem.contactId);
            ArrayList<String> arrayList3 = this.f23717g;
            boolean contains = arrayList3 != null ? arrayList3.contains(valueOf) : false;
            if (badgeMemoryContactItem.f22603c) {
                if (contains) {
                    badgeMemoryContactItem.setChecked(true);
                    arrayList2.add(0, badgeMemoryContactItem);
                    arrayList.add(0, badgeMemoryContactItem);
                } else {
                    PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f25278a;
                    PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = this.f23720j;
                    if (personalStoreItemType == null) {
                        C18524p.m3848a("personalType");
                    }
                    if (PersonalStoreItemDataManager.Companion.m28917a(valueOf, personalStoreItemType) != null) {
                        badgeMemoryContactItem.setShouldGrey(true);
                    }
                    arrayList2.add(badgeMemoryContactItem);
                    arrayList.add(badgeMemoryContactItem);
                }
            } else if (contains) {
                badgeMemoryContactItem.setChecked(true);
                arrayList.add(0, badgeMemoryContactItem);
            } else {
                PersonalStoreItemDataManager.Companion companion2 = PersonalStoreItemDataManager.f25278a;
                PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType2 = this.f23720j;
                if (personalStoreItemType2 == null) {
                    C18524p.m3848a("personalType");
                }
                if (PersonalStoreItemDataManager.Companion.m28917a(valueOf, personalStoreItemType2) != null) {
                    badgeMemoryContactItem.setShouldGrey(true);
                }
                arrayList.add(badgeMemoryContactItem);
            }
        }
        return Pair.create(arrayList2, arrayList);
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final SectionData getTopSectionData() {
        return new SectionData(Activities.getString(2131886080));
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final int getViewType() {
        return 0;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType;
        C18524p.m3840d(context, "context");
        super.onAttach(context);
        try {
            FragmentActivity activity = getActivity();
            if (activity == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.callapp.contacts.activity.marketplace.videoRingtone.AssignVideoResultListener");
            }
            this.f23716f = (AssignVideoResultListener) activity;
            Bundle arguments = getArguments();
            if (arguments == null) {
                return;
            }
            this.f23717g = arguments.getStringArrayList("extra_selected_contacts");
            String string = arguments.getString("extra_selected_video", "");
            C18524p.m3843b(string, "getString(EXTRA_SELECTED_VIDEO, \"\")");
            this.f23718h = string;
            this.f23719i = arguments.getInt("extra_request_code");
            String it2 = arguments.getString("extra_personal_type");
            if (it2 != null) {
                C18524p.m3843b(it2, "it");
                personalStoreItemType = PersonalStoreItemUrlData.PersonalStoreItemType.valueOf(it2);
            } else {
                personalStoreItemType = null;
            }
            C18524p.m3851a(personalStoreItemType);
            this.f23720j = personalStoreItemType;
        } catch (ClassCastException e) {
            throw new ClassCastException(String.valueOf(getActivity()) + " must implement AssignVideoResultListener ");
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (getCheckedItems().size() == 0) {
            FeedbackManager.get().m28664b(Activities.getString(2131887304), (Integer) 17);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (BadgeMemoryContactItem badgeMemoryContactItem : getCheckedItems()) {
            arrayList.add(String.valueOf(badgeMemoryContactItem.getContactId()));
        }
        Intent intent = new Intent();
        intent.putExtra("AssignContactsId", arrayList);
        String str = this.f23718h;
        if (str == null) {
            C18524p.m3848a("selectedVideo");
        }
        intent.putExtra("SelectedVideo", str);
        AssignVideoResultListener assignVideoResultListener = this.f23716f;
        if (assignVideoResultListener == null) {
            return;
        }
        assignVideoResultListener.mo29898a(this.f23719i, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.f23716f = null;
    }
}
