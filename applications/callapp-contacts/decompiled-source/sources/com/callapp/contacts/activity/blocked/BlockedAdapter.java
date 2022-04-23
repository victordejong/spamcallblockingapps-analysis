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

    /* renamed from: c  reason: collision with root package name */
    private BlockedAdapterEvents f11220c;

    /* renamed from: d  reason: collision with root package name */
    private ScrollEvents f11221d;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents.class */
    public interface BlockedAdapterEvents {
        void a(Phone phone);

        void b();
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder.class */
    class BlockedHeaderViewHolder extends BaseCallAppViewHolder {
        BlockedHeaderViewHolder(View view) {
            super(view);
            int color = ThemeUtils.getColor(2131099784);
            int color2 = ThemeUtils.getColor(2131099686);
            View findViewById = view.findViewById(2131363811);
            findViewById.setBackgroundColor(color2);
            TextView textView = (TextView) findViewById.findViewById(2131363210);
            textView.setTextColor(color);
            textView.setText(Activities.getString(2131886348));
            findViewById.findViewById(2131362611).setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099891));
            View findViewById2 = view.findViewById(2131363723);
            SettingsRowSwitch settingsRowSwitch = (SettingsRowSwitch) findViewById2.findViewById(2131363722);
            findViewById2.setBackgroundColor(color2);
            settingsRowSwitch.setTitle(Activities.getString(2131886355));
            settingsRowSwitch.setSubTitle(Activities.getString(2131886354));
            settingsRowSwitch.setChecked(Prefs.bN.get().booleanValue());
            settingsRowSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.activity.blocked.BlockedAdapter.BlockedHeaderViewHolder.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    AndroidUtils.a(compoundButton, 1);
                    Prefs.bN.set(Boolean.valueOf(z));
                    AnalyticsManager.get().a(Constants.BLOCK_AND_SPAM, "Block common spammers toggled. is enabled: ".concat(String.valueOf(z)));
                }
            });
            View findViewById3 = view.findViewById(2131363729);
            SettingsRowSwitch settingsRowSwitch2 = (SettingsRowSwitch) findViewById3.findViewById(2131363728);
            findViewById3.setBackgroundColor(color2);
            settingsRowSwitch2.setTitle(Activities.getString(2131886356));
            settingsRowSwitch2.setChecked(Prefs.bJ.get().booleanValue());
            settingsRowSwitch2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.activity.blocked.BlockedAdapter.BlockedHeaderViewHolder.2
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    AndroidUtils.a(compoundButton, 1);
                    Prefs.bJ.set(Boolean.valueOf(z));
                    AnalyticsManager.get().a(Constants.BLOCK_AND_SPAM, "Block private numbers toggled. is enabled: ".concat(String.valueOf(z)));
                }
            });
            View findViewById4 = view.findViewById(2131363715);
            SettingsRowNext settingsRowNext = (SettingsRowNext) findViewById4.findViewById(2131363714);
            findViewById4.setBackgroundColor(color2);
            settingsRowNext.setTitle(Activities.getString(2131886352));
            settingsRowNext.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.blocked.BlockedAdapter.BlockedHeaderViewHolder.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AndroidUtils.a(view2, 1);
                    view2.getContext().startActivity(new Intent(view2.getContext(), SettingsAdvancedBlockActivity.class));
                    AnalyticsManager.get().a(Constants.BLOCK_AND_SPAM, "Advanced block settings option clicked");
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder.class */
    class BlockedNewEntryViewHolder extends BaseCallAppViewHolder {
        BlockedNewEntryViewHolder(View view) {
            super(view);
            int color = ThemeUtils.getColor(2131099784);
            TextView textView = (TextView) view.findViewById(2131361982);
            textView.setTextColor(color);
            textView.setText(Activities.getString(2131886648));
            GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder((ImageView) view.findViewById(2131362181), 2131231421, view.getContext()).a(color, PorterDuff.Mode.SRC_IN);
            a2.g = Integer.valueOf(ThemeUtils.a(CallAppApplication.get(), 2131099891));
            a2.i = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165384);
            a2.l = true;
            a2.d();
            view.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.blocked.BlockedAdapter.BlockedNewEntryViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AnalyticsManager.get().a(Constants.BLOCK_AND_SPAM, "Add to block");
                    ListsUtils.a(view2, BlockedAdapter.this.f11220c);
                }
            });
        }
    }

    public BlockedAdapter(List<BaseViewTypeData> list, BlockedAdapterEvents blockedAdapterEvents, ScrollEvents scrollEvents) {
        super(list);
        this.f11220c = blockedAdapterEvents;
        this.f11221d = scrollEvents;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        if (baseViewTypeData.getViewType() == 1) {
            ScrollEvents scrollEvents = this.f11221d;
            int adapterPosition = baseCallAppViewHolder.getAdapterPosition();
            getContextMenuType();
            getContextMenuAnalyticsTag();
            ((BlockedContactViewHolder) baseCallAppViewHolder).a((ReminderData) baseViewTypeData, scrollEvents, adapterPosition, this.f11220c);
        }
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.BLOCK_AND_SPAM;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.BLOCKED_ITEM;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
            builder.f11158b = CallAppViewTypes.CENTER_CONTACT_LIST;
            builder.f11157a = CallAppViewTypes.LEFT_PROFILE;
            builder.f11159c = CallAppViewTypes.RIGHT_CUSTOM_TWO_IMAGES;
            return new BlockedContactViewHolder(builder.a());
        } else if (i == 6) {
            return new BlockedNewEntryViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558756, viewGroup, false));
        } else {
            if (i != 10) {
                return null;
            }
            return new BlockedHeaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558688, viewGroup, false));
        }
    }
}
