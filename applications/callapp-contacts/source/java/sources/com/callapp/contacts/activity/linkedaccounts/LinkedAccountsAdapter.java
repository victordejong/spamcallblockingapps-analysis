package com.callapp.contacts.activity.linkedaccounts;

import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.SwitchCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppListAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.CallAppViewTypes;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter.class */
public class LinkedAccountsAdapter extends BaseCallAppListAdapter<SocialConnectorData, SocialConnectorViewHolder> {

    /* renamed from: c */
    private static final int f23189c = ThemeUtils.m27386a(CallAppApplication.get(), 2131099784);

    /* renamed from: d */
    private static final int f23190d = ThemeUtils.m27386a(CallAppApplication.get(), 2131100140);

    /* renamed from: e */
    private AdapterWithSwitchEvents f23191e;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$AdapterWithSwitchEvents.class */
    public interface AdapterWithSwitchEvents {
        /* renamed from: a */
        void mo30175a(SwitchCompat switchCompat, RemoteAccountHelper remoteAccountHelper);

        /* renamed from: b */
        void mo30171b(SwitchCompat switchCompat, RemoteAccountHelper remoteAccountHelper);
    }

    public LinkedAccountsAdapter(List<SocialConnectorData> list) {
        super(list);
    }

    /* renamed from: a */
    static /* synthetic */ void m30178a(LinkedAccountsAdapter linkedAccountsAdapter, SwitchCompat switchCompat, RemoteAccountHelper remoteAccountHelper) {
        AdapterWithSwitchEvents adapterWithSwitchEvents = linkedAccountsAdapter.f23191e;
        if (adapterWithSwitchEvents != null) {
            adapterWithSwitchEvents.mo30171b(switchCompat, remoteAccountHelper);
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m30177b(LinkedAccountsAdapter linkedAccountsAdapter, SwitchCompat switchCompat, RemoteAccountHelper remoteAccountHelper) {
        AdapterWithSwitchEvents adapterWithSwitchEvents = linkedAccountsAdapter.f23191e;
        if (adapterWithSwitchEvents != null) {
            adapterWithSwitchEvents.mo30175a(switchCompat, remoteAccountHelper);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final /* synthetic */ void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        final SocialConnectorViewHolder socialConnectorViewHolder = (SocialConnectorViewHolder) baseCallAppViewHolder;
        final SocialConnectorData socialConnectorData = (SocialConnectorData) baseViewTypeData;
        ProfilePictureView profilePicture = socialConnectorViewHolder.getProfilePicture();
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(socialConnectorData.getIconRes());
        glideRequestBuilder.f28246l = true;
        profilePicture.m26684a(glideRequestBuilder);
        socialConnectorViewHolder.setTitleText(socialConnectorData.getSocialNetworkName());
        int i = socialConnectorData.isLoggedIn() ? f23189c : f23190d;
        socialConnectorViewHolder.setSubtitleText(socialConnectorData.getUserName());
        socialConnectorViewHolder.setTitleTextColor(i);
        socialConnectorViewHolder.setSubtitleTextColor(i);
        socialConnectorViewHolder.setChecked(socialConnectorData.isLoggedIn());
        socialConnectorViewHolder.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LinkedAccountsAdapter.m30178a(LinkedAccountsAdapter.this, socialConnectorViewHolder.getSwitchView(), socialConnectorData.getHelper());
            }
        });
        socialConnectorViewHolder.setOnSwitchViewContainerClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsAdapter.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                LinkedAccountsAdapter.m30177b(LinkedAccountsAdapter.this, (SwitchCompat) view, socialConnectorData.getHelper());
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f20367a = CallAppViewTypes.LEFT_PROFILE;
        builder.f20368b = CallAppViewTypes.CENTER_TWO_ROWS;
        builder.f20369c = CallAppViewTypes.RIGHT_SWITCH;
        return new SocialConnectorViewHolder(builder.m31474a());
    }

    public void setEventsListener(AdapterWithSwitchEvents adapterWithSwitchEvents) {
        this.f23191e = adapterWithSwitchEvents;
    }
}
