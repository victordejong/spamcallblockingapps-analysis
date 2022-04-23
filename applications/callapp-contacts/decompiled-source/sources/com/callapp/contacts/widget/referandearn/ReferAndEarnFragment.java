package com.callapp.contacts.widget.referandearn;

import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.aa;
import androidx.lifecycle.ab;
import androidx.lifecycle.u;
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
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018��2\u00020\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002B\u0005¢\u0006\u0002\u0010\u0005J\n\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\n\u0010\f\u001a\u0004\u0018\u00010\tH\u0016J$\u0010\r\u001a\u001e\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u0003\u0018\u00010\u000eH\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u001eH\u0016J\b\u0010\u001f\u001a\u00020\u001eH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n��¨\u0006 "}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;", "Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;", "Landroidx/lifecycle/Observer;", "", "Lcom/callapp/contacts/model/invites/ReferAndEarnData;", "()V", "viewModel", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;", "getBottomLayout", "Landroid/view/View;", "getBottomSectionData", "Lcom/callapp/contacts/model/SectionData;", "getHeaderLayout", "getSuggestionsAndContacts", "Landroid/util/Pair;", "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;", "getTopSectionData", "getViewType", "", "onChanged", "", "t", "onInviteClicked", "memoryContactItem", "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;", "onViewCreated", "view", "savedInstanceState", "Landroid/os/Bundle;", "showSearchBox", "", "showShowAllButton", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnFragment.class */
public final class ReferAndEarnFragment extends SearchAndSelectFragment implements u<List<? extends ReferAndEarnData>> {

    /* renamed from: a  reason: collision with root package name */
    private ReferAndEarnViewModel f16862a;

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment, com.callapp.contacts.activity.invite.OnSelectChangeListener
    public final void a(final MemoryContactItem memoryContactItem) {
        p.d(memoryContactItem, "memoryContactItem");
        new Task() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnFragment$onInviteClicked$1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                final ContactData load = new ContactLoader().addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader()).addSyncLoader(new FastCacheDataLoader()).addFields(ContactField.deviceId, ContactField.fullName).load(memoryContactItem.getPhone());
                p.b(load, "ContactLoader().addSyncL…(memoryContactItem.phone)");
                final FragmentActivity activity = ReferAndEarnFragment.this.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnFragment$onInviteClicked$1$doTask$$inlined$apply$lambda$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ShareCallAppDialogFragment.Companion companion = ShareCallAppDialogFragment.g;
                            ShareCallAppDialogFragment.Companion.a(load, 0, "ref", 2).a(FragmentActivity.this.getSupportFragmentManager(), ShareCallAppDialogFragment.g.getTAG());
                        }
                    });
                }
            }
        }.execute();
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment
    public final boolean d() {
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
            p.b(mci, "mci");
            Phone phone = mci.getPhone();
            p.b(phone, "mci.phone");
            if (phone.getLineType() == PhoneNumberUtil.d.MOBILE) {
                ContactData contactData = loadOnlyFromCache.load(mci.getPhone(), mci.getContactId());
                p.b(contactData, "contactData");
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

    @Override // androidx.lifecycle.u
    public final /* synthetic */ void onChanged(List<? extends ReferAndEarnData> list) {
        e();
    }

    @Override // com.callapp.contacts.widget.referandearn.SearchAndSelectFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        p.d(view, "view");
        super.onViewCreated(view, bundle);
        aa a2 = new ab(this).a(ReferAndEarnViewModel.class);
        p.b(a2, "ViewModelProvider(this).…arnViewModel::class.java)");
        ReferAndEarnViewModel referAndEarnViewModel = (ReferAndEarnViewModel) a2;
        this.f16862a = referAndEarnViewModel;
        if (referAndEarnViewModel == null) {
            p.a("viewModel");
        }
        referAndEarnViewModel.a(ReferAndEarnDataManager.Companion.getReferAndEarnBox()).a(getViewLifecycleOwner(), this);
    }
}
