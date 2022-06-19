package com.callapp.contacts.widget.referandearn;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.callapp.contacts.activity.calllog.AggregateCallLogData;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.invite.BadgeMemoryContactItem;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.SectionData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p530f.C18363d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018�� \u001e2\u00020\u00012\u00020\u0002:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\f\u001a\u00020\tH\u0016J$\u0010\r\u001a\u001e\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f\u0018\u00010\u000eH\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\u001a\u001a\u00020\u0015H\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u001cH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001f"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;", "Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;", "Landroid/view/View$OnClickListener;", "()V", "contactData", "Lcom/callapp/contacts/model/contact/ContactData;", "referAndEarnShareOptionsFragmentListener", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;", "getBottomLayout", "Landroid/view/View;", "getBottomSectionData", "Lcom/callapp/contacts/model/SectionData;", "getHeaderLayout", "getSuggestionsAndContacts", "Landroid/util/Pair;", "", "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;", "getTopSectionData", "getViewType", "", "onAttach", "", "context", "Landroid/content/Context;", "onClick", "p0", "onDetach", "showSearchBox", "", "showShowAllButton", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment.class */
public final class ReferAndEarnSMSFragment extends SearchAndSelectFragment implements View.OnClickListener {

    /* renamed from: a */
    public static final Companion f29352a = new Companion(null);

    /* renamed from: f */
    private ReferAndEarnShareOptionsFragmentListener f29353f;

    /* renamed from: g */
    private ContactData f29354g;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\u0007"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$Companion;", "", "()V", "newInstance", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;", "contactData", "Lcom/callapp/contacts/model/contact/ContactData;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static ReferAndEarnSMSFragment m26342a(ContactData contactData) {
            ReferAndEarnSMSFragment referAndEarnSMSFragment = new ReferAndEarnSMSFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("extra_contact_data", contactData);
            C20128v c20128v = C20128v.f66529a;
            referAndEarnSMSFragment.setArguments(bundle);
            return referAndEarnSMSFragment;
        }
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    /* renamed from: d */
    public final boolean mo26310d() {
        return true;
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final View getBottomLayout() {
        Context requireContext = requireContext();
        C18524p.m3843b(requireContext, "requireContext()");
        SearchAndSelectBottom searchAndSelectBottom = new SearchAndSelectBottom(requireContext, null, 0, this, 6, null);
        String string = Activities.getString(2131887727);
        String string2 = Activities.getString(2131887066);
        C18524p.m3843b(string2, "Activities.getString(R.string.invite_and_earn)");
        searchAndSelectBottom.setData(string, string2, ThemeUtils.getColor(2131099729));
        return searchAndSelectBottom;
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final SectionData getBottomSectionData() {
        return new SectionData(Activities.getString(2131887881));
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002a, code lost:
        if (r0 == null) goto L6;
     */
    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View getHeaderLayout() {
        /*
            r8 = this;
            r0 = r8
            android.content.Context r0 = r0.requireContext()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "requireContext()"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            com.callapp.contacts.widget.referandearn.SearchAndSelectHeaderSMS r0 = new com.callapp.contacts.widget.referandearn.SearchAndSelectHeaderSMS
            r1 = r0
            r2 = r9
            r3 = 0
            r4 = 0
            r5 = 6
            r6 = 0
            r1.<init>(r2, r3, r4, r5, r6)
            r10 = r0
            r0 = r8
            com.callapp.contacts.model.contact.ContactData r0 = r0.f29354g
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L2d
            r0 = r9
            java.lang.String r0 = r0.getNameOrNumber()
            r11 = r0
            r0 = r11
            r9 = r0
            r0 = r11
            if (r0 != 0) goto L4b
        L2d:
            r0 = 2131886924(0x7f12034c, float:1.940844E38)
            java.lang.String r0 = com.callapp.contacts.util.Activities.getString(r0)
            r9 = r0
            r0 = r9
            java.lang.String r1 = "Activities.getString(R.string.friends)"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r9
            java.lang.String r1 = "null cannot be cast to non-null type java.lang.String"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r9
            java.lang.String r0 = r0.toLowerCase()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "(this as java.lang.String).toLowerCase()"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
        L4b:
            r0 = r9
            java.lang.String r1 = "contactData?.let { it.na….friends).toLowerCase() }"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = 2131886161(0x7f120051, float:1.9406893E38)
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r9
            r2[r3] = r4
            java.lang.String r0 = com.callapp.contacts.util.Activities.m27697a(r0, r1)
            r9 = r0
            r0 = r9
            java.lang.String r1 = "Activities.getString(R.s…ontact_button_text, name)"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r10
            r1 = r9
            com.callapp.contacts.widget.referandearn.ReferAndEarnSMSFragment$getHeaderLayout$1 r2 = new com.callapp.contacts.widget.referandearn.ReferAndEarnSMSFragment$getHeaderLayout$1
            r3 = r2
            r4 = r8
            r3.<init>()
            android.view.View$OnClickListener r2 = (android.view.View.OnClickListener) r2
            r0.setData(r1, r2)
            r0 = r10
            android.view.View r0 = (android.view.View) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.widget.referandearn.ReferAndEarnSMSFragment.getHeaderLayout():android.view.View");
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final Pair<List<BadgeMemoryContactItem>, List<BadgeMemoryContactItem>> getSuggestionsAndContacts() {
        List<MemoryContactItem> contactsWithPhoneNumber = ContactUtils.getContactsWithPhoneNumber();
        final ContactLoader loadOnlyFromCache = new ContactLoader().addSyncLoader(new CacheLoader()).addSyncLoader(new LocalGenomeLoader(false)).setDisableContactEvents().setLoadOnlyFromCache();
        final List allContactsWithMobileOnly = Collections.synchronizedList(new ArrayList());
        final List favorites = Collections.synchronizedList(new ArrayList());
        final List callLog = Collections.synchronizedList(new ArrayList());
        List synchronizedList = Collections.synchronizedList(new ArrayList());
        final ArrayList arrayList = new ArrayList();
        Iterator<AggregateCallLogData> it2 = CallLogUtils.getCallLog().iterator();
        C18524p.m3843b(it2, "callLogData.iterator()");
        while (it2.hasNext()) {
            AggregateCallLogData next = it2.next();
            Objects.requireNonNull(next, "null cannot be cast to non-null type com.callapp.contacts.activity.calllog.AggregateCallLogData");
            Phone phone = next.getPhone();
            C18524p.m3843b(phone, "callLogRecord.getPhone()");
            arrayList.add(phone);
        }
        MultiTaskRunner multiTaskRunner = new MultiTaskRunner();
        for (final MemoryContactItem mci : contactsWithPhoneNumber) {
            C18524p.m3843b(mci, "mci");
            Phone phone2 = mci.getPhone();
            C18524p.m3843b(phone2, "mci.phone");
            if (phone2.getLineType() == PhoneNumberUtil.EnumC16104d.MOBILE) {
                multiTaskRunner.m28974a(new Task() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnSMSFragment$getSuggestionsAndContacts$1
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        ContactData contactData;
                        ContactLoader contactLoader = loadOnlyFromCache;
                        MemoryContactItem mci2 = mci;
                        C18524p.m3843b(mci2, "mci");
                        ContactData contactData2 = contactLoader.load(mci2.getPhone(), mci.getContactId());
                        BadgeMemoryContactItem badgeMemoryContactItem = new BadgeMemoryContactItem(mci);
                        C18524p.m3843b(contactData2, "contactData");
                        if (!contactData2.isInstalledApp()) {
                            Phone phone3 = contactData2.getPhone();
                            contactData = ReferAndEarnSMSFragment.this.f29354g;
                            if (!(!C18524p.m3850a(phone3, contactData != null ? contactData.getPhone() : null))) {
                                return;
                            }
                            badgeMemoryContactItem.setBadgeResId(2131231896);
                            badgeMemoryContactItem.setFullName(contactData2.getFullName());
                            if (mci.f22603c) {
                                favorites.add(badgeMemoryContactItem);
                                return;
                            }
                            List list = arrayList;
                            MemoryContactItem mci3 = mci;
                            C18524p.m3843b(mci3, "mci");
                            if (CollectionUtils.m26073a(list, mci3.getPhone())) {
                                callLog.add(badgeMemoryContactItem);
                            } else {
                                allContactsWithMobileOnly.add(badgeMemoryContactItem);
                            }
                        }
                    }
                });
            }
        }
        multiTaskRunner.m28975a();
        C18524p.m3843b(callLog, "callLog");
        List list = callLog;
        allContactsWithMobileOnly.addAll(0, list);
        C18524p.m3843b(favorites, "favorites");
        List list2 = favorites;
        allContactsWithMobileOnly.addAll(0, list2);
        synchronizedList.addAll(list2);
        synchronizedList.addAll(list);
        C18524p.m3843b(allContactsWithMobileOnly, "allContactsWithMobileOnly");
        synchronizedList.addAll(allContactsWithMobileOnly);
        ContactData contactData = this.f29354g;
        if (contactData != null) {
            BadgeMemoryContactItem badgeMemoryContactItem = new BadgeMemoryContactItem(new MemoryContactItem(contactData, true));
            badgeMemoryContactItem.setChecked(true);
            synchronizedList.add(0, badgeMemoryContactItem);
            allContactsWithMobileOnly.add(0, badgeMemoryContactItem);
        }
        ArrayList arrayList2 = new ArrayList();
        int d = C18363d.m4050d(15, allContactsWithMobileOnly.size());
        int i = 0;
        while (arrayList2.size() < d) {
            BadgeMemoryContactItem mci2 = (BadgeMemoryContactItem) synchronizedList.get(i);
            if (!CollectionUtils.m26073a(arrayList2, mci2)) {
                if (this.f29354g == null) {
                    C18524p.m3843b(mci2, "mci");
                    mci2.setChecked(true);
                }
                C18524p.m3843b(mci2, "mci");
                arrayList2.add(mci2);
            }
            i++;
        }
        return Pair.create(arrayList2, allContactsWithMobileOnly);
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final SectionData getTopSectionData() {
        return new SectionData(Activities.getString(2131887888));
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final int getViewType() {
        return 0;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        Fragment parentFragment;
        C18524p.m3840d(context, "context");
        super.onAttach(context);
        try {
            parentFragment = getParentFragment();
        } catch (ClassCastException e) {
        }
        if (parentFragment != null) {
            this.f29353f = (ReferAndEarnShareOptionsFragmentListener) parentFragment;
            Bundle arguments = getArguments();
            if (arguments == null) {
                return;
            }
            this.f29354g = (ContactData) arguments.getSerializable("extra_contact_data");
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragmentListener");
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        final List<BadgeMemoryContactItem> checkedItems = getCheckedItems();
        if (CollectionUtils.m26076a(checkedItems)) {
            FeedbackManager.get().m28669a(Activities.getString(2131887068), (Integer) null);
        } else {
            new Task() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnSMSFragment$onClick$1
                @Override // com.callapp.contacts.manager.task.Task
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void doTask() {
                    /*
                        Method dump skipped, instructions count: 319
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.widget.referandearn.ReferAndEarnSMSFragment$onClick$1.doTask():void");
                }
            }.execute();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.f29353f = null;
    }
}
