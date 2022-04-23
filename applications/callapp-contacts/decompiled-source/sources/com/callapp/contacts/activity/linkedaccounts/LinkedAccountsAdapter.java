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

    /* renamed from: c  reason: collision with root package name */
    private static final int f12993c = ThemeUtils.a(CallAppApplication.get(), 2131099784);

    /* renamed from: d  reason: collision with root package name */
    private static final int f12994d = ThemeUtils.a(CallAppApplication.get(), 2131100140);
    private AdapterWithSwitchEvents e;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$AdapterWithSwitchEvents.class */
    public interface AdapterWithSwitchEvents {
        void a(SwitchCompat switchCompat, RemoteAccountHelper remoteAccountHelper);

        void b(SwitchCompat switchCompat, RemoteAccountHelper remoteAccountHelper);
    }

    public LinkedAccountsAdapter(List<SocialConnectorData> list) {
        super(list);
    }

    static /* synthetic */ void a(LinkedAccountsAdapter linkedAccountsAdapter, SwitchCompat switchCompat, RemoteAccountHelper remoteAccountHelper) {
        AdapterWithSwitchEvents adapterWithSwitchEvents = linkedAccountsAdapter.e;
        if (adapterWithSwitchEvents != null) {
            adapterWithSwitchEvents.b(switchCompat, remoteAccountHelper);
        }
    }

    static /* synthetic */ void b(LinkedAccountsAdapter linkedAccountsAdapter, SwitchCompat switchCompat, RemoteAccountHelper remoteAccountHelper) {
        AdapterWithSwitchEvents adapterWithSwitchEvents = linkedAccountsAdapter.e;
        if (adapterWithSwitchEvents != null) {
            adapterWithSwitchEvents.a(switchCompat, remoteAccountHelper);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final /* synthetic */ void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        final SocialConnectorViewHolder socialConnectorViewHolder = (SocialConnectorViewHolder) baseCallAppViewHolder;
        final SocialConnectorData socialConnectorData = (SocialConnectorData) baseViewTypeData;
        ProfilePictureView profilePicture = socialConnectorViewHolder.getProfilePicture();
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(socialConnectorData.getIconRes());
        glideRequestBuilder.l = true;
        profilePicture.a(glideRequestBuilder);
        socialConnectorViewHolder.setTitleText(socialConnectorData.getSocialNetworkName());
        int i = socialConnectorData.isLoggedIn() ? f12993c : f12994d;
        socialConnectorViewHolder.setSubtitleText(socialConnectorData.getUserName());
        socialConnectorViewHolder.setTitleTextColor(i);
        socialConnectorViewHolder.setSubtitleTextColor(i);
        socialConnectorViewHolder.setChecked(socialConnectorData.isLoggedIn());
        socialConnectorViewHolder.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LinkedAccountsAdapter.a(LinkedAccountsAdapter.this, socialConnectorViewHolder.getSwitchView(), socialConnectorData.getHelper());
            }
        });
        socialConnectorViewHolder.setOnSwitchViewContainerClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsAdapter.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                LinkedAccountsAdapter.b(LinkedAccountsAdapter.this, (SwitchCompat) view, socialConnectorData.getHelper());
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f11157a = CallAppViewTypes.LEFT_PROFILE;
        builder.f11158b = CallAppViewTypes.CENTER_TWO_ROWS;
        builder.f11159c = CallAppViewTypes.RIGHT_SWITCH;
        return new SocialConnectorViewHolder(builder.a());
    }

    public void setEventsListener(AdapterWithSwitchEvents adapterWithSwitchEvents) {
        this.e = adapterWithSwitchEvents;
    }
}
