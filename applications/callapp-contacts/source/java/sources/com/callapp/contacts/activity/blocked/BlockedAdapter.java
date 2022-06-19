package com.callapp.contacts.activity.blocked;

import android.content.Intent;
import android.graphics.PorterDuff;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseCallAppListAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.CallAppViewTypes;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.settings.SettingsAdvancedBlockActivity;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.ReminderData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.SettingsRowNext;
import com.callapp.contacts.widget.SettingsRowSwitch;
import com.callapp.framework.phone.Phone;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedAdapter.class */
public class BlockedAdapter extends BaseCallAppListAdapter<BaseViewTypeData, BaseCallAppViewHolder> {

    /* renamed from: c */
    private BlockedAdapterEvents f20458c;

    /* renamed from: d */
    private ScrollEvents f20459d;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents.class */
    public interface BlockedAdapterEvents {
        /* renamed from: a */
        void mo31429a(Phone phone);

        /* renamed from: b */
        void mo31426b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder.class */
    public class BlockedHeaderViewHolder extends BaseCallAppViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        BlockedHeaderViewHolder(View view) {
            super(view);
            BlockedAdapter.this = r7;
            int color = ThemeUtils.getColor(2131099784);
            int color2 = ThemeUtils.getColor(2131099686);
            View findViewById = view.findViewById(2131363811);
            findViewById.setBackgroundColor(color2);
            TextView textView = (TextView) findViewById.findViewById(2131363210);
            textView.setTextColor(color);
            textView.setText(Activities.getString(2131886348));
            findViewById.findViewById(2131362611).setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
            View findViewById2 = view.findViewById(2131363723);
            SettingsRowSwitch settingsRowSwitch = (SettingsRowSwitch) findViewById2.findViewById(2131363722);
            findViewById2.setBackgroundColor(color2);
            settingsRowSwitch.setTitle(Activities.getString(2131886355));
            settingsRowSwitch.setSubTitle(Activities.getString(2131886354));
            settingsRowSwitch.setChecked(Prefs.f26290bN.get().booleanValue());
            settingsRowSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.activity.blocked.BlockedAdapter.BlockedHeaderViewHolder.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    AndroidUtils.m27630a(compoundButton, 1);
                    Prefs.f26290bN.set(Boolean.valueOf(z));
                    AnalyticsManager.get().m28450a(Constants.BLOCK_AND_SPAM, "Block common spammers toggled. is enabled: ".concat(String.valueOf(z)));
                }
            });
            View findViewById3 = view.findViewById(2131363729);
            SettingsRowSwitch settingsRowSwitch2 = (SettingsRowSwitch) findViewById3.findViewById(2131363728);
            findViewById3.setBackgroundColor(color2);
            settingsRowSwitch2.setTitle(Activities.getString(2131886356));
            settingsRowSwitch2.setChecked(Prefs.f26286bJ.get().booleanValue());
            settingsRowSwitch2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.activity.blocked.BlockedAdapter.BlockedHeaderViewHolder.2
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    AndroidUtils.m27630a(compoundButton, 1);
                    Prefs.f26286bJ.set(Boolean.valueOf(z));
                    AnalyticsManager.get().m28450a(Constants.BLOCK_AND_SPAM, "Block private numbers toggled. is enabled: ".concat(String.valueOf(z)));
                }
            });
            View findViewById4 = view.findViewById(2131363715);
            SettingsRowNext settingsRowNext = (SettingsRowNext) findViewById4.findViewById(2131363714);
            findViewById4.setBackgroundColor(color2);
            settingsRowNext.setTitle(Activities.getString(2131886352));
            settingsRowNext.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.blocked.BlockedAdapter.BlockedHeaderViewHolder.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AndroidUtils.m27630a(view2, 1);
                    view2.getContext().startActivity(new Intent(view2.getContext(), SettingsAdvancedBlockActivity.class));
                    AnalyticsManager.get().m28450a(Constants.BLOCK_AND_SPAM, "Advanced block settings option clicked");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder.class */
    public class BlockedNewEntryViewHolder extends BaseCallAppViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        BlockedNewEntryViewHolder(View view) {
            super(view);
            BlockedAdapter.this = r7;
            int color = ThemeUtils.getColor(2131099784);
            TextView textView = (TextView) view.findViewById(2131361982);
            textView.setTextColor(color);
            textView.setText(Activities.getString(2131886648));
            GlideUtils.GlideRequestBuilder m27025a = new GlideUtils.GlideRequestBuilder((ImageView) view.findViewById(2131362181), 2131231421, view.getContext()).m27025a(color, PorterDuff.Mode.SRC_IN);
            m27025a.f28241g = Integer.valueOf(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
            m27025a.f28243i = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165384);
            m27025a.f28246l = true;
            m27025a.m27013d();
            view.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.blocked.BlockedAdapter.BlockedNewEntryViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AnalyticsManager.get().m28450a(Constants.BLOCK_AND_SPAM, "Add to block");
                    ListsUtils.m27477a(view2, BlockedAdapter.this.f20458c);
                }
            });
        }
    }

    public BlockedAdapter(List<BaseViewTypeData> list, BlockedAdapterEvents blockedAdapterEvents, ScrollEvents scrollEvents) {
        super(list);
        this.f20458c = blockedAdapterEvents;
        this.f20459d = scrollEvents;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        if (baseViewTypeData.getViewType() != 1) {
            return;
        }
        ScrollEvents scrollEvents = this.f20459d;
        int adapterPosition = baseCallAppViewHolder.getAdapterPosition();
        getContextMenuType();
        getContextMenuAnalyticsTag();
        ((BlockedContactViewHolder) baseCallAppViewHolder).m31437a((ReminderData) baseViewTypeData, scrollEvents, adapterPosition, this.f20458c);
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.BLOCK_AND_SPAM;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.BLOCKED_ITEM;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i != 1) {
            if (i == 6) {
                return new BlockedNewEntryViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558756, viewGroup, false));
            }
            if (i == 10) {
                return new BlockedHeaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558688, viewGroup, false));
            }
            return null;
        }
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f20368b = CallAppViewTypes.CENTER_CONTACT_LIST;
        builder.f20367a = CallAppViewTypes.LEFT_PROFILE;
        builder.f20369c = CallAppViewTypes.RIGHT_CUSTOM_TWO_IMAGES;
        return new BlockedContactViewHolder(builder.m31474a());
    }
}
