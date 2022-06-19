package com.callapp.contacts.activity.choosesocialprofile;

import android.graphics.PorterDuff;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppListAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.CallAppViewTypes;
import com.callapp.contacts.activity.choosesocialprofile.SocialProfileViewHolder;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.SocialMatchesData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.CallAppRadioButton;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter.class */
public class ChooseImageAdapter extends BaseCallAppListAdapter<BaseViewTypeData, BaseCallAppViewHolder> {

    /* renamed from: c */
    private int f20903c;

    /* renamed from: d */
    private final int f20904d;

    /* renamed from: e */
    private OnChooseImageEventListener f20905e;

    /* renamed from: f */
    private ContactData f20906f;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener.class */
    public interface OnChooseImageEventListener {
        void onRadioClicked(int i);

        void onRowClicked(int i);

        void onSureClick(int i);

        void onUnsureClick(int i);
    }

    public ChooseImageAdapter(List<BaseViewTypeData> list, int i, int i2, OnChooseImageEventListener onChooseImageEventListener) {
        super(list);
        this.f20903c = i;
        this.f20904d = i2;
        this.f20905e = onChooseImageEventListener;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        int i;
        int i2;
        int viewType = baseViewTypeData.getViewType();
        boolean z = true;
        if (viewType != 13) {
            if (viewType != 14) {
                return;
            }
            final AddDevicePhotoViewHolder addDevicePhotoViewHolder = (AddDevicePhotoViewHolder) baseCallAppViewHolder;
            DevicePhotoData devicePhotoData = (DevicePhotoData) baseViewTypeData;
            int i3 = this.f20903c;
            final OnChooseImageEventListener onChooseImageEventListener = this.f20905e;
            addDevicePhotoViewHolder.f20892u.setText(devicePhotoData.getTitle());
            String photoUrl = devicePhotoData.getPhotoUrl();
            boolean z2 = photoUrl != null;
            if (TextUtils.isEmpty(photoUrl)) {
                ProfilePictureView profilePictureView = addDevicePhotoViewHolder.f20891t;
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(2131231426);
                glideRequestBuilder.f28246l = true;
                profilePictureView.m26684a(glideRequestBuilder);
            } else if (StringUtils.m26045b((CharSequence) devicePhotoData.getPhotoUrl())) {
                ProfilePictureView profilePictureView2 = addDevicePhotoViewHolder.f20891t;
                GlideUtils.GlideRequestBuilder glideRequestBuilder2 = new GlideUtils.GlideRequestBuilder(devicePhotoData.getPhotoUrl());
                glideRequestBuilder2.f28246l = true;
                profilePictureView2.m26684a(glideRequestBuilder2);
            } else {
                ProfilePictureView profilePictureView3 = addDevicePhotoViewHolder.f20891t;
                GlideUtils.GlideRequestBuilder glideRequestBuilder3 = new GlideUtils.GlideRequestBuilder(2131231426);
                glideRequestBuilder3.f28246l = true;
                profilePictureView3.m26684a(glideRequestBuilder3);
                z2 = false;
            }
            addDevicePhotoViewHolder.f20894w.setVisibility(z2 ? 0 : 8);
            addDevicePhotoViewHolder.f20891t.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.AddDevicePhotoViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    onChooseImageEventListener.onRowClicked(AddDevicePhotoViewHolder.this.getAdapterPosition());
                }
            });
            CallAppRadioButton callAppRadioButton = addDevicePhotoViewHolder.f20893v;
            if (addDevicePhotoViewHolder.getAdapterPosition() != i3) {
                z = false;
            }
            callAppRadioButton.setChecked(z);
            addDevicePhotoViewHolder.f20893v.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.AddDevicePhotoViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.m27630a(view, 1);
                    onChooseImageEventListener.onRadioClicked(AddDevicePhotoViewHolder.this.getAdapterPosition());
                }
            });
            addDevicePhotoViewHolder.f20890s.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.AddDevicePhotoViewHolder.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.m27630a(view, 1);
                    onChooseImageEventListener.onRowClicked(AddDevicePhotoViewHolder.this.getAdapterPosition());
                }
            });
            addDevicePhotoViewHolder.f20893v.setVisibility(devicePhotoData.getPhotoUrl() != null ? 0 : 8);
            addDevicePhotoViewHolder.f20894w.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.AddDevicePhotoViewHolder.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    onChooseImageEventListener.onUnsureClick(AddDevicePhotoViewHolder.this.getAdapterPosition());
                }
            });
            addDevicePhotoViewHolder.f20893v.setVisibility(z2 ? 0 : 8);
            return;
        }
        final SocialProfileViewHolder socialProfileViewHolder = (SocialProfileViewHolder) baseCallAppViewHolder;
        int i4 = this.f20904d;
        SocialMatchesData socialMatchesData = (SocialMatchesData) baseViewTypeData;
        int adapterPosition = baseCallAppViewHolder.getAdapterPosition();
        int i5 = this.f20903c;
        final OnChooseImageEventListener onChooseImageEventListener2 = this.f20905e;
        String photoUrl2 = socialMatchesData.getPhotoUrl();
        DataSource dataSource = socialMatchesData.getDataSource();
        int photoResId = StringUtils.m26059a((CharSequence) photoUrl2) ? socialMatchesData.getPhotoResId() : 0;
        boolean z3 = i4 == photoResId || socialMatchesData.getState() == SocialMatchesData.SocialMatchState.MULTI_MATCH;
        int i6 = z3 ? socialProfileViewHolder.f20933B : socialProfileViewHolder.f20934C;
        int i7 = socialProfileViewHolder.f20934C;
        socialProfileViewHolder.f20935D.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        switch (SocialProfileViewHolder.C59746.f20956a[socialMatchesData.getState().ordinal()]) {
            case 1:
                socialProfileViewHolder.f20939t.setText(SocialProfileViewHolder.m31252a(socialMatchesData, Activities.m27697a(2131887735, socialMatchesData.getSocialName())));
                SocialProfileViewHolder.m31253a(socialProfileViewHolder.f20940u, Activities.getString(2131887733), socialProfileViewHolder.f20944y);
                socialProfileViewHolder.m31251a(false, true);
                socialProfileViewHolder.f20939t.setTextColor(socialProfileViewHolder.f20944y);
                socialProfileViewHolder.setPhotoWithBadge(socialMatchesData.getSocialBadgeResourceId(), socialMatchesData.getSocialBadgeBackgroundColor());
                socialProfileViewHolder.f20943x.setVisibility(z3 ? 4 : 0);
                i = 1;
                i2 = 0;
                break;
            case 2:
                socialProfileViewHolder.f20939t.setText(SocialProfileViewHolder.m31252a(socialMatchesData, Activities.m27697a(2131887735, socialMatchesData.getSocialName())));
                SocialProfileViewHolder.m31253a(socialProfileViewHolder.f20940u, Activities.getString(2131887729), socialProfileViewHolder.f20944y);
                socialProfileViewHolder.m31251a(true, true);
                socialProfileViewHolder.f20939t.setTextColor(socialProfileViewHolder.f20944y);
                socialProfileViewHolder.setPhotoWithBadge(socialMatchesData.getSocialBadgeResourceId(), socialMatchesData.getSocialBadgeBackgroundColor());
                socialProfileViewHolder.f20943x.setVisibility(z3 ? 4 : 0);
                i = 1;
                i2 = 0;
                break;
            case 3:
                socialProfileViewHolder.f20939t.setText(SocialProfileViewHolder.m31252a(socialMatchesData, Activities.m27697a(2131887735, socialMatchesData.getSocialName())));
                SocialProfileViewHolder.m31253a(socialProfileViewHolder.f20940u, Activities.getString(2131887734), socialProfileViewHolder.f20944y);
                socialProfileViewHolder.m31251a(false, false);
                socialProfileViewHolder.f20939t.setTextColor(socialProfileViewHolder.f20944y);
                socialProfileViewHolder.setPhotoWithBadge(socialMatchesData.getSocialBadgeResourceId(), socialMatchesData.getSocialBadgeBackgroundColor());
                socialProfileViewHolder.f20943x.setVisibility(z3 ? 4 : 0);
                i = 1;
                i2 = 0;
                break;
            case 4:
                socialProfileViewHolder.f20939t.setText(Activities.m27697a(2131887732, socialMatchesData.getSocialName()));
                SocialProfileViewHolder.m31253a(socialProfileViewHolder.f20940u, Activities.getString(2131887731), socialProfileViewHolder.f20944y);
                socialProfileViewHolder.m31251a(false, false);
                socialProfileViewHolder.f20939t.setTextColor(socialProfileViewHolder.f20944y);
                socialProfileViewHolder.setPhotoWithBadge(socialMatchesData.getSocialBadgeResourceId(), socialMatchesData.getSocialBadgeBackgroundColor());
                socialProfileViewHolder.f20943x.setVisibility(4);
                i = 1;
                i2 = 0;
                break;
            case 5:
                socialProfileViewHolder.setTitleVisibleOnly(Activities.getString(2131886285));
                socialProfileViewHolder.f20939t.setTextColor(socialProfileViewHolder.f20945z);
                i = 2;
                socialProfileViewHolder.setPhotoWithBadge(socialMatchesData.getSocialBadgeResourceId(), socialMatchesData.getSocialBadgeBackgroundColor());
                i2 = 0;
                socialProfileViewHolder.f20943x.setVisibility(0);
                break;
            case 6:
            case 7:
            case 8:
                socialProfileViewHolder.setTitleVisibleOnly(Activities.m27697a(2131887730, socialMatchesData.getSocialName()));
                socialProfileViewHolder.f20939t.setTextColor(socialProfileViewHolder.f20945z);
                i6 = socialProfileViewHolder.f20932A;
                photoResId = socialMatchesData.getSocialBadgeResourceId();
                i2 = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165382);
                socialProfileViewHolder.f20943x.setVisibility(4);
                socialProfileViewHolder.f20938s.m26683a(false);
                i7 = socialProfileViewHolder.f20933B;
                i = 1;
                break;
            case 9:
                socialProfileViewHolder.f20935D.setLayoutParams(new FrameLayout.LayoutParams(0, 0));
                i = 1;
                i2 = 0;
                break;
            default:
                CLog.m27611a(SocialProfileViewHolder.class, "Unknown state for profile picture - 6pack screen");
                i = 1;
                i2 = 0;
                break;
        }
        boolean z4 = false;
        socialProfileViewHolder.f20939t.setMaxLines(i);
        CallAppRadioButton callAppRadioButton2 = socialProfileViewHolder.f20943x;
        if (adapterPosition == i5) {
            z4 = true;
        }
        callAppRadioButton2.setChecked(z4);
        if (StringUtils.m26045b((CharSequence) photoUrl2)) {
            ProfilePictureView profilePictureView4 = socialProfileViewHolder.f20938s;
            GlideUtils.GlideRequestBuilder glideRequestBuilder4 = new GlideUtils.GlideRequestBuilder(photoUrl2);
            glideRequestBuilder4.f28249o = ((ThemeState) Prefs.f26417di.get()).isLightTheme() ? 2131232147 : 2131232146;
            glideRequestBuilder4.f28239e = socialProfileViewHolder.f20938s.getContext();
            GlideUtils.GlideRequestBuilder m27023a = glideRequestBuilder4.m27027a().m27023a(dataSource);
            m27023a.f28246l = true;
            profilePictureView4.m26684a(m27023a);
        } else {
            ProfilePictureView profilePictureView5 = socialProfileViewHolder.f20938s;
            GlideUtils.GlideRequestBuilder m27025a = new GlideUtils.GlideRequestBuilder(photoResId).m27025a(i7, PorterDuff.Mode.SRC_IN);
            m27025a.f28241g = Integer.valueOf(i6);
            m27025a.f28243i = i2;
            m27025a.f28246l = true;
            profilePictureView5.m26684a(m27025a);
        }
        socialProfileViewHolder.f20935D.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.SocialProfileViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                onChooseImageEventListener2.onRowClicked(SocialProfileViewHolder.this.getAdapterPosition());
            }
        });
        socialProfileViewHolder.f20938s.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.SocialProfileViewHolder.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                onChooseImageEventListener2.onRowClicked(SocialProfileViewHolder.this.getAdapterPosition());
            }
        });
        socialProfileViewHolder.f20943x.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.SocialProfileViewHolder.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                onChooseImageEventListener2.onRadioClicked(SocialProfileViewHolder.this.getAdapterPosition());
            }
        });
        socialProfileViewHolder.f20941v.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.SocialProfileViewHolder.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                onChooseImageEventListener2.onSureClick(SocialProfileViewHolder.this.getAdapterPosition());
            }
        });
        socialProfileViewHolder.f20942w.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.SocialProfileViewHolder.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                onChooseImageEventListener2.onUnsureClick(SocialProfileViewHolder.this.getAdapterPosition());
            }
        });
    }

    public int getCheckedImagePosition() {
        return this.f20903c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 13) {
            CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
            builder.f20367a = CallAppViewTypes.LEFT_SOCIAL_PROFILE;
            builder.f20368b = CallAppViewTypes.CENTER_CHOOSE_SOCIAL_PROFILE;
            builder.f20369c = CallAppViewTypes.RIGHT_RADIO;
            CallAppRow m31474a = builder.m31474a();
            m31474a.setSwipeable(false);
            return new SocialProfileViewHolder(m31474a, this.f20906f);
        } else if (i != 14) {
            return null;
        } else {
            CallAppRow.Builder builder2 = new CallAppRow.Builder(viewGroup.getContext());
            builder2.f20367a = CallAppViewTypes.LEFT_SOCIAL_PROFILE;
            builder2.f20368b = CallAppViewTypes.CENTER_USER_PHOTO_MEDIA;
            builder2.f20369c = CallAppViewTypes.RIGHT_RADIO;
            CallAppRow m31474a2 = builder2.m31474a();
            m31474a2.setSwipeable(false);
            return new AddDevicePhotoViewHolder(m31474a2);
        }
    }

    public void setCheckedImagePosition(int i) {
        this.f20903c = i;
        notifyDataSetChanged();
    }

    public void setContact(ContactData contactData) {
        this.f20906f = contactData;
    }
}
