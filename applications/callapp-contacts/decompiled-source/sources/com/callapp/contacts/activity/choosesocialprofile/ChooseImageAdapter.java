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

    /* renamed from: c  reason: collision with root package name */
    private int f11505c;

    /* renamed from: d  reason: collision with root package name */
    private final int f11506d;
    private OnChooseImageEventListener e;
    private ContactData f;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener.class */
    public interface OnChooseImageEventListener {
        void onRadioClicked(int i);

        void onRowClicked(int i);

        void onSureClick(int i);

        void onUnsureClick(int i);
    }

    public ChooseImageAdapter(List<BaseViewTypeData> list, int i, int i2, OnChooseImageEventListener onChooseImageEventListener) {
        super(list);
        this.f11505c = i;
        this.f11506d = i2;
        this.e = onChooseImageEventListener;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        int i;
        int i2;
        int viewType = baseViewTypeData.getViewType();
        boolean z = true;
        if (viewType == 13) {
            final SocialProfileViewHolder socialProfileViewHolder = (SocialProfileViewHolder) baseCallAppViewHolder;
            int i3 = this.f11506d;
            SocialMatchesData socialMatchesData = (SocialMatchesData) baseViewTypeData;
            int adapterPosition = baseCallAppViewHolder.getAdapterPosition();
            int i4 = this.f11505c;
            final OnChooseImageEventListener onChooseImageEventListener = this.e;
            String photoUrl = socialMatchesData.getPhotoUrl();
            DataSource dataSource = socialMatchesData.getDataSource();
            int photoResId = StringUtils.a((CharSequence) photoUrl) ? socialMatchesData.getPhotoResId() : 0;
            boolean z2 = i3 == photoResId || socialMatchesData.getState() == SocialMatchesData.SocialMatchState.MULTI_MATCH;
            int i5 = z2 ? socialProfileViewHolder.B : socialProfileViewHolder.C;
            int i6 = socialProfileViewHolder.C;
            socialProfileViewHolder.D.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
            switch (SocialProfileViewHolder.AnonymousClass6.f11542a[socialMatchesData.getState().ordinal()]) {
                case 1:
                    socialProfileViewHolder.t.setText(SocialProfileViewHolder.a(socialMatchesData, Activities.a(2131887735, socialMatchesData.getSocialName())));
                    SocialProfileViewHolder.a(socialProfileViewHolder.u, Activities.getString(2131887733), socialProfileViewHolder.y);
                    socialProfileViewHolder.a(false, true);
                    socialProfileViewHolder.t.setTextColor(socialProfileViewHolder.y);
                    socialProfileViewHolder.setPhotoWithBadge(socialMatchesData.getSocialBadgeResourceId(), socialMatchesData.getSocialBadgeBackgroundColor());
                    socialProfileViewHolder.x.setVisibility(z2 ? 4 : 0);
                    i = 1;
                    i2 = 0;
                    break;
                case 2:
                    socialProfileViewHolder.t.setText(SocialProfileViewHolder.a(socialMatchesData, Activities.a(2131887735, socialMatchesData.getSocialName())));
                    SocialProfileViewHolder.a(socialProfileViewHolder.u, Activities.getString(2131887729), socialProfileViewHolder.y);
                    socialProfileViewHolder.a(true, true);
                    socialProfileViewHolder.t.setTextColor(socialProfileViewHolder.y);
                    socialProfileViewHolder.setPhotoWithBadge(socialMatchesData.getSocialBadgeResourceId(), socialMatchesData.getSocialBadgeBackgroundColor());
                    socialProfileViewHolder.x.setVisibility(z2 ? 4 : 0);
                    i = 1;
                    i2 = 0;
                    break;
                case 3:
                    socialProfileViewHolder.t.setText(SocialProfileViewHolder.a(socialMatchesData, Activities.a(2131887735, socialMatchesData.getSocialName())));
                    SocialProfileViewHolder.a(socialProfileViewHolder.u, Activities.getString(2131887734), socialProfileViewHolder.y);
                    socialProfileViewHolder.a(false, false);
                    socialProfileViewHolder.t.setTextColor(socialProfileViewHolder.y);
                    socialProfileViewHolder.setPhotoWithBadge(socialMatchesData.getSocialBadgeResourceId(), socialMatchesData.getSocialBadgeBackgroundColor());
                    socialProfileViewHolder.x.setVisibility(z2 ? 4 : 0);
                    i = 1;
                    i2 = 0;
                    break;
                case 4:
                    socialProfileViewHolder.t.setText(Activities.a(2131887732, socialMatchesData.getSocialName()));
                    SocialProfileViewHolder.a(socialProfileViewHolder.u, Activities.getString(2131887731), socialProfileViewHolder.y);
                    socialProfileViewHolder.a(false, false);
                    socialProfileViewHolder.t.setTextColor(socialProfileViewHolder.y);
                    socialProfileViewHolder.setPhotoWithBadge(socialMatchesData.getSocialBadgeResourceId(), socialMatchesData.getSocialBadgeBackgroundColor());
                    socialProfileViewHolder.x.setVisibility(4);
                    i = 1;
                    i2 = 0;
                    break;
                case 5:
                    socialProfileViewHolder.setTitleVisibleOnly(Activities.getString(2131886285));
                    socialProfileViewHolder.t.setTextColor(socialProfileViewHolder.z);
                    i = 2;
                    socialProfileViewHolder.setPhotoWithBadge(socialMatchesData.getSocialBadgeResourceId(), socialMatchesData.getSocialBadgeBackgroundColor());
                    i2 = 0;
                    socialProfileViewHolder.x.setVisibility(0);
                    break;
                case 6:
                case 7:
                case 8:
                    socialProfileViewHolder.setTitleVisibleOnly(Activities.a(2131887730, socialMatchesData.getSocialName()));
                    socialProfileViewHolder.t.setTextColor(socialProfileViewHolder.z);
                    i5 = socialProfileViewHolder.A;
                    photoResId = socialMatchesData.getSocialBadgeResourceId();
                    i2 = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165382);
                    socialProfileViewHolder.x.setVisibility(4);
                    socialProfileViewHolder.s.a(false);
                    i6 = socialProfileViewHolder.B;
                    i = 1;
                    break;
                case 9:
                    socialProfileViewHolder.D.setLayoutParams(new FrameLayout.LayoutParams(0, 0));
                    i = 1;
                    i2 = 0;
                    break;
                default:
                    CLog.a(SocialProfileViewHolder.class, "Unknown state for profile picture - 6pack screen");
                    i = 1;
                    i2 = 0;
                    break;
            }
            boolean z3 = false;
            socialProfileViewHolder.t.setMaxLines(i);
            CallAppRadioButton callAppRadioButton = socialProfileViewHolder.x;
            if (adapterPosition == i4) {
                z3 = true;
            }
            callAppRadioButton.setChecked(z3);
            if (StringUtils.b((CharSequence) photoUrl)) {
                ProfilePictureView profilePictureView = socialProfileViewHolder.s;
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(photoUrl);
                glideRequestBuilder.o = ((ThemeState) Prefs.di.get()).isLightTheme() ? 2131232147 : 2131232146;
                glideRequestBuilder.e = socialProfileViewHolder.s.getContext();
                GlideUtils.GlideRequestBuilder a2 = glideRequestBuilder.a().a(dataSource);
                a2.l = true;
                profilePictureView.a(a2);
            } else {
                ProfilePictureView profilePictureView2 = socialProfileViewHolder.s;
                GlideUtils.GlideRequestBuilder a3 = new GlideUtils.GlideRequestBuilder(photoResId).a(i6, PorterDuff.Mode.SRC_IN);
                a3.g = Integer.valueOf(i5);
                a3.i = i2;
                a3.l = true;
                profilePictureView2.a(a3);
            }
            socialProfileViewHolder.D.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.SocialProfileViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    onChooseImageEventListener.onRowClicked(SocialProfileViewHolder.this.getAdapterPosition());
                }
            });
            socialProfileViewHolder.s.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.SocialProfileViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    onChooseImageEventListener.onRowClicked(SocialProfileViewHolder.this.getAdapterPosition());
                }
            });
            socialProfileViewHolder.x.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.SocialProfileViewHolder.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    onChooseImageEventListener.onRadioClicked(SocialProfileViewHolder.this.getAdapterPosition());
                }
            });
            socialProfileViewHolder.v.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.SocialProfileViewHolder.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    onChooseImageEventListener.onSureClick(SocialProfileViewHolder.this.getAdapterPosition());
                }
            });
            socialProfileViewHolder.w.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.SocialProfileViewHolder.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    onChooseImageEventListener.onUnsureClick(SocialProfileViewHolder.this.getAdapterPosition());
                }
            });
        } else if (viewType == 14) {
            final AddDevicePhotoViewHolder addDevicePhotoViewHolder = (AddDevicePhotoViewHolder) baseCallAppViewHolder;
            DevicePhotoData devicePhotoData = (DevicePhotoData) baseViewTypeData;
            int i7 = this.f11505c;
            final OnChooseImageEventListener onChooseImageEventListener2 = this.e;
            addDevicePhotoViewHolder.u.setText(devicePhotoData.getTitle());
            String photoUrl2 = devicePhotoData.getPhotoUrl();
            boolean z4 = photoUrl2 != null;
            if (TextUtils.isEmpty(photoUrl2)) {
                ProfilePictureView profilePictureView3 = addDevicePhotoViewHolder.t;
                GlideUtils.GlideRequestBuilder glideRequestBuilder2 = new GlideUtils.GlideRequestBuilder(2131231426);
                glideRequestBuilder2.l = true;
                profilePictureView3.a(glideRequestBuilder2);
            } else if (StringUtils.b((CharSequence) devicePhotoData.getPhotoUrl())) {
                ProfilePictureView profilePictureView4 = addDevicePhotoViewHolder.t;
                GlideUtils.GlideRequestBuilder glideRequestBuilder3 = new GlideUtils.GlideRequestBuilder(devicePhotoData.getPhotoUrl());
                glideRequestBuilder3.l = true;
                profilePictureView4.a(glideRequestBuilder3);
            } else {
                ProfilePictureView profilePictureView5 = addDevicePhotoViewHolder.t;
                GlideUtils.GlideRequestBuilder glideRequestBuilder4 = new GlideUtils.GlideRequestBuilder(2131231426);
                glideRequestBuilder4.l = true;
                profilePictureView5.a(glideRequestBuilder4);
                z4 = false;
            }
            addDevicePhotoViewHolder.w.setVisibility(z4 ? 0 : 8);
            addDevicePhotoViewHolder.t.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.AddDevicePhotoViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    onChooseImageEventListener2.onRowClicked(AddDevicePhotoViewHolder.this.getAdapterPosition());
                }
            });
            CallAppRadioButton callAppRadioButton2 = addDevicePhotoViewHolder.v;
            if (addDevicePhotoViewHolder.getAdapterPosition() != i7) {
                z = false;
            }
            callAppRadioButton2.setChecked(z);
            addDevicePhotoViewHolder.v.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.AddDevicePhotoViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    onChooseImageEventListener2.onRadioClicked(AddDevicePhotoViewHolder.this.getAdapterPosition());
                }
            });
            addDevicePhotoViewHolder.s.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.AddDevicePhotoViewHolder.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    onChooseImageEventListener2.onRowClicked(AddDevicePhotoViewHolder.this.getAdapterPosition());
                }
            });
            addDevicePhotoViewHolder.v.setVisibility(devicePhotoData.getPhotoUrl() != null ? 0 : 8);
            addDevicePhotoViewHolder.w.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.AddDevicePhotoViewHolder.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    onChooseImageEventListener2.onUnsureClick(AddDevicePhotoViewHolder.this.getAdapterPosition());
                }
            });
            addDevicePhotoViewHolder.v.setVisibility(z4 ? 0 : 8);
        }
    }

    public int getCheckedImagePosition() {
        return this.f11505c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 13) {
            CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
            builder.f11157a = CallAppViewTypes.LEFT_SOCIAL_PROFILE;
            builder.f11158b = CallAppViewTypes.CENTER_CHOOSE_SOCIAL_PROFILE;
            builder.f11159c = CallAppViewTypes.RIGHT_RADIO;
            CallAppRow a2 = builder.a();
            a2.setSwipeable(false);
            return new SocialProfileViewHolder(a2, this.f);
        } else if (i != 14) {
            return null;
        } else {
            CallAppRow.Builder builder2 = new CallAppRow.Builder(viewGroup.getContext());
            builder2.f11157a = CallAppViewTypes.LEFT_SOCIAL_PROFILE;
            builder2.f11158b = CallAppViewTypes.CENTER_USER_PHOTO_MEDIA;
            builder2.f11159c = CallAppViewTypes.RIGHT_RADIO;
            CallAppRow a3 = builder2.a();
            a3.setSwipeable(false);
            return new AddDevicePhotoViewHolder(a3);
        }
    }

    public void setCheckedImagePosition(int i) {
        this.f11505c = i;
        notifyDataSetChanged();
    }

    public void setContact(ContactData contactData) {
        this.f = contactData;
    }
}
