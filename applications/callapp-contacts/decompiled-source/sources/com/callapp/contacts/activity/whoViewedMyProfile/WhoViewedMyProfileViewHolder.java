package com.callapp.contacts.activity.whoViewedMyProfile;

import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.contact.cards.PostCallCard;
import com.callapp.contacts.activity.contact.details.ContactAction;
import com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.Date;
import java.util.EnumSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder.class */
public class WhoViewedMyProfileViewHolder extends BaseContactHolder {
    private final ProfilePictureView A;
    private ContactData B = null;
    private final LinearLayout C;
    private final LinearLayout D;
    private final ConstraintLayout E;
    private final ImageView F;
    private final ScrollEvents G;
    private final ContactAction H;
    private final TextView u;
    private final TextView v;
    private final TextView w;
    private final TextView x;
    private final View y;
    private WhoViewedMyProfileDataItem z;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder$WhoViewedMyProfileAdapterDataLoadTask.class */
    class WhoViewedMyProfileAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        private WhoViewedMyProfileAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final void a(ContactLoader contactLoader) {
            contactLoader.addDeviceIdAndPhotoLoaders();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final boolean b(ContactData contactData) {
            setDeviceId(contactData.getDeviceId());
            return super.b(contactData);
        }
    }

    public WhoViewedMyProfileViewHolder(View view, ScrollEvents scrollEvents) {
        super(view);
        this.G = scrollEvents;
        ContactAction im = PostCallCard.getIM();
        this.H = im;
        View findViewById = view.findViewById(2131362264);
        this.y = findViewById;
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(2131364534);
        this.E = constraintLayout;
        constraintLayout.setElevation(Activities.a(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165562)));
        if (ThemeUtils.isThemeLight()) {
            ViewUtils.b(constraintLayout, 2131230895, ThemeUtils.getColor(2131100228), ThemeUtils.getColor(2131100228), 0);
        } else {
            ViewUtils.b(constraintLayout, 2131230895, ThemeUtils.getColor(2131099918), ThemeUtils.getColor(2131099918), 0);
        }
        int color = ThemeUtils.getColor(2131099784);
        this.A = (ProfilePictureView) view.findViewById(2131363565);
        TextView textView = (TextView) view.findViewById(2131363347);
        this.u = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView2 = (TextView) view.findViewById(2131364118);
        this.v = textView2;
        textView2.setTextColor(ThemeUtils.getColor(2131100108));
        TextView textView3 = (TextView) view.findViewById(2131363497);
        this.w = textView3;
        textView3.setTextColor(ThemeUtils.getColor(2131100108));
        TextView textView4 = (TextView) view.findViewById(2131362863);
        this.x = textView4;
        textView4.setTextColor(ThemeUtils.getColor(2131100108));
        TextView textView5 = (TextView) view.findViewById(2131361986);
        textView5.setText(Activities.getString(2131886213));
        textView5.setTextColor(ThemeUtils.getColor(2131100108));
        ImageView imageView = (ImageView) view.findViewById(2131362999);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(2131363805);
        this.D = linearLayout;
        if (im != null) {
            imageView.setImageResource(im.getLargeIcon());
        } else {
            imageView.setImageResource(2131231667);
        }
        a((ImageView) view.findViewById(2131361985));
        final ImageView imageView2 = (ImageView) view.findViewById(2131363306);
        a(imageView2);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileViewHolder$JIA1PGo4Eo2NwmdsKo0P7qsmLEY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WhoViewedMyProfileViewHolder.this.a(imageView2, view2);
            }
        });
        a((ImageView) view.findViewById(2131363306));
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(2131361990);
        this.C = linearLayout2;
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileViewHolder$0lBXqhVgvr1zkkZNdvmIXJLoK8M
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WhoViewedMyProfileViewHolder.this.e(view2);
            }
        });
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileViewHolder$S2q1djB8KrdWCzWdeyR2FFqFUVs
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WhoViewedMyProfileViewHolder.this.d(view2);
            }
        });
        constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileViewHolder$mFxEWJU2iMfmMZRJ_iiZLfM1pZY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WhoViewedMyProfileViewHolder.this.c(view2);
            }
        });
        TextView textView6 = (TextView) view.findViewById(2131363274);
        textView6.setText(Activities.getString(2131887189));
        textView6.setTextColor(ThemeUtils.getColor(2131100108));
        ImageView imageView3 = (ImageView) view.findViewById(2131362207);
        this.F = imageView3;
        view.findViewById(2131362611).setBackgroundColor(ThemeUtils.getColor(2131099891));
        ImageUtils.a(imageView3, 2131231783, new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileViewHolder$_zRbkpP10WU3FAogpcj3ImYnmPw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WhoViewedMyProfileViewHolder.this.b(view2);
            }
        });
        imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileViewHolder$YYOvNKhtlaueyiZBQjS_N0TNjro
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WhoViewedMyProfileViewHolder.this.a(view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        AnalyticsManager.get().a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ClickViewProfileCall");
        AndroidUtils.a(this.F, 1);
        ListsUtils.a(this.F.getContext(), this.z.getPhone(), this.z, ContactUtils.a(PhoneManager.get().a(this.B.getPhone().getRawNumber()), this.B.getDeviceId()), (ContactItemViewEvents) null);
    }

    private static void a(ImageView imageView) {
        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ImageView imageView, View view) {
        AndroidUtils.a(view, 1);
        ListsUtils.b(imageView.getContext(), this.z, Action.ContextType.WHO_VIEW_PROFILE_ITEM, Constants.WHO_VIEWED_MY_PROFILE, ContactItemContextMenuHelper.MENU_TYPE.DROPPY, imageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        AnalyticsManager.get().a(Constants.STORE, "Enter to plans screen - All Included", Constants.WHO_VIEWED_MY_PROFILE_CATEGORY);
        Intent intent = new Intent(this.y.getContext(), PlanPageActivity.class);
        intent.putExtra("PLAN_PAGE_SOURCE", "whoViewedMyProfile");
        Activities.b(this.y.getContext(), intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        AndroidUtils.a(view, 1);
        AnalyticsManager.get().a(Constants.CONTACT_DETAILS, Constants.CONTACT_SCREEN, Constants.WHO_VIEWED_MY_PROFILE_CATEGORY);
        ListsUtils.a(view.getContext(), this.z, "WhoViewedMyProfileAdapter", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), getAdapterPosition(), 9), (ENTRYPOINT) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        if (this.B != null) {
            AnalyticsManager.get().a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ClickViewProfileMessage");
            if (this.H != null) {
                Singletons.get();
                Singletons.a(this.H.getType()).openIm(view.getContext(), this.B);
                return;
            }
            Activities.b(view.getContext(), ContactUtils.a(this.B, true));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        if (this.B != null) {
            AnalyticsManager.get().a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ClickViewProfileAddContact");
            Activities.b(view.getContext(), ContactUtils.a(this.B, true));
        }
    }

    public final void a(WhoViewedMyProfileDataItem whoViewedMyProfileDataItem) {
        a(whoViewedMyProfileDataItem.getCacheKey(), whoViewedMyProfileDataItem, this.G, whoViewedMyProfileDataItem.getContactId(), whoViewedMyProfileDataItem.getPhone());
        this.z = whoViewedMyProfileDataItem;
        boolean z = true;
        if (whoViewedMyProfileDataItem.g) {
            this.C.setClickable(true);
            this.D.setClickable(true);
            this.E.setClickable(true);
            this.F.setClickable(true);
            this.y.setClickable(false);
            this.y.setVisibility(8);
            ContactData a2 = ContactUtils.a(whoViewedMyProfileDataItem.getPhone());
            this.B = a2;
            if (a2.isContactInDevice()) {
                this.C.setVisibility(8);
            } else {
                this.C.setVisibility(0);
            }
            this.u.setText(StringUtils.j(whoViewedMyProfileDataItem.f14017d));
            this.v.setText(DateUtils.b(new Date(whoViewedMyProfileDataItem.f14016c)));
            this.x.setText(whoViewedMyProfileDataItem.f);
            this.w.setText(Phone.b(whoViewedMyProfileDataItem.f14014a).b());
            this.A.setText(StringUtils.r(whoViewedMyProfileDataItem.f14017d));
            if (whoViewedMyProfileDataItem.f14016c <= Prefs.hD.get().longValue()) {
                z = false;
            }
            if (z) {
                ViewUtils.b(this.E, 2131230895, ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099733 : 2131099732), 0, 0);
                return;
            }
            return;
        }
        this.C.setClickable(false);
        this.D.setClickable(false);
        this.E.setClickable(false);
        this.F.setClickable(false);
        this.y.setClickable(true);
        this.y.setVisibility(0);
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.A;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final BaseContactHolder.AdapterDataLoadTask l() {
        return new WhoViewedMyProfileAdapterDataLoadTask();
    }
}
