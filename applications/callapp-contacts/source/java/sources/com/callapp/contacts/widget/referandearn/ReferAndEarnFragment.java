package com.callapp.contacts.widget.referandearn;

import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.AbstractC1231aa;
import androidx.lifecycle.AbstractC1268u;
import androidx.lifecycle.C1232ab;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.invite.BadgeMemoryContactItem;
import com.callapp.contacts.loader.FastCacheDataLoader;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.loader.device.DeviceDataLoader;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.SectionData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.invites.ReferAndEarnData;
import com.callapp.contacts.model.invites.ReferAndEarnDataManager;
import com.callapp.contacts.widget.referandearn.ShareCallAppDialogFragment;
import com.callapp.framework.phone.Phone;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018��2\u00020\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002B\u0005¢\u0006\u0002\u0010\u0005J\n\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\n\u0010\f\u001a\u0004\u0018\u00010\tH\u0016J$\u0010\r\u001a\u001e\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u0003\u0018\u00010\u000eH\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u001eH\u0016J\b\u0010\u001f\u001a\u00020\u001eH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n��¨\u0006 "}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;", "Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;", "Landroidx/lifecycle/Observer;", "", "Lcom/callapp/contacts/model/invites/ReferAndEarnData;", "()V", "viewModel", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;", "getBottomLayout", "Landroid/view/View;", "getBottomSectionData", "Lcom/callapp/contacts/model/SectionData;", "getHeaderLayout", "getSuggestionsAndContacts", "Landroid/util/Pair;", "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;", "getTopSectionData", "getViewType", "", "onChanged", "", "t", "onInviteClicked", "memoryContactItem", "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;", "onViewCreated", "view", "savedInstanceState", "Landroid/os/Bundle;", "showSearchBox", "", "showShowAllButton", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnFragment.class */
public final class ReferAndEarnFragment extends SearchAndSelectFragment implements AbstractC1268u<List<? extends ReferAndEarnData>> {

    /* renamed from: a */
    private ReferAndEarnViewModel f29341a;

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment, com.callapp.contacts.activity.invite.OnSelectChangeListener
    /* renamed from: a */
    public final void mo26322a(final MemoryContactItem memoryContactItem) {
        C18524p.m3840d(memoryContactItem, "memoryContactItem");
        new Task() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnFragment$onInviteClicked$1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                final ContactData load = new ContactLoader().addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader()).addSyncLoader(new FastCacheDataLoader()).addFields(ContactField.deviceId, ContactField.fullName).load(memoryContactItem.getPhone());
                C18524p.m3843b(load, "ContactLoader().addSyncL…(memoryContactItem.phone)");
                final FragmentActivity activity = ReferAndEarnFragment.this.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnFragment$onInviteClicked$1$doTask$$inlined$apply$lambda$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ShareCallAppDialogFragment.Companion companion = ShareCallAppDialogFragment.f29434g;
                            ShareCallAppDialogFragment.Companion.m26293a(load, 0, "ref", 2).mo19242a(FragmentActivity.this.getSupportFragmentManager(), ShareCallAppDialogFragment.f29434g.getTAG());
                        }
                    });
                }
            }
        }.execute();
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    /* renamed from: d */
    public final boolean mo26310d() {
        return false;
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final View getBottomLayout() {
        return null;
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final SectionData getBottomSectionData() {
        return null;
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final View getHeaderLayout() {
        return null;
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final Pair<List<BadgeMemoryContactItem>, List<BadgeMemoryContactItem>> getSuggestionsAndContacts() {
        List<MemoryContactItem> contactsWithPhoneNumber = ContactUtils.getContactsWithPhoneNumber();
        ArrayList arrayList = new ArrayList();
        ContactLoader loadOnlyFromCache = new ContactLoader().addSyncLoader(new CacheLoader()).addSyncLoader(new LocalGenomeLoader(false)).setDisableContactEvents().setLoadOnlyFromCache();
        for (MemoryContactItem mci : contactsWithPhoneNumber) {
            C18524p.m3843b(mci, "mci");
            Phone phone = mci.getPhone();
            C18524p.m3843b(phone, "mci.phone");
            if (phone.getLineType() == PhoneNumberUtil.EnumC16104d.MOBILE) {
                ContactData contactData = loadOnlyFromCache.load(mci.getPhone(), mci.getContactId());
                C18524p.m3843b(contactData, "contactData");
                if (!contactData.isInstalledApp()) {
                    arrayList.add(new BadgeMemoryContactItem(mci, 24));
                }
            }
        }
        return Pair.create(null, arrayList);
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final SectionData getTopSectionData() {
        return null;
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final int getViewType() {
        return 24;
    }

    @Override // androidx.lifecycle.AbstractC1268u
    public final /* synthetic */ void onChanged(List<? extends ReferAndEarnData> list) {
        m26308e();
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        C18524p.m3840d(view, "view");
        super.onViewCreated(view, bundle);
        AbstractC1231aa m43312a = new C1232ab(this).m43312a(ReferAndEarnViewModel.class);
        C18524p.m3843b(m43312a, "ViewModelProvider(this).…arnViewModel::class.java)");
        ReferAndEarnViewModel referAndEarnViewModel = (ReferAndEarnViewModel) m43312a;
        this.f29341a = referAndEarnViewModel;
        if (referAndEarnViewModel == null) {
            C18524p.m3848a("viewModel");
        }
        referAndEarnViewModel.m26324a(ReferAndEarnDataManager.Companion.getReferAndEarnBox()).m43334a(getViewLifecycleOwner(), this);
    }
}
