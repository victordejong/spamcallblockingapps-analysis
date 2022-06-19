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

    /* renamed from: A */
    private final ProfilePictureView f24652A;

    /* renamed from: B */
    private ContactData f24653B = null;

    /* renamed from: C */
    private final LinearLayout f24654C;

    /* renamed from: D */
    private final LinearLayout f24655D;

    /* renamed from: E */
    private final ConstraintLayout f24656E;

    /* renamed from: F */
    private final ImageView f24657F;

    /* renamed from: G */
    private final ScrollEvents f24658G;

    /* renamed from: H */
    private final ContactAction f24659H;

    /* renamed from: u */
    private final TextView f24660u;

    /* renamed from: v */
    private final TextView f24661v;

    /* renamed from: w */
    private final TextView f24662w;

    /* renamed from: x */
    private final TextView f24663x;

    /* renamed from: y */
    private final View f24664y;

    /* renamed from: z */
    private WhoViewedMyProfileDataItem f24665z;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder$WhoViewedMyProfileAdapterDataLoadTask.class */
    class WhoViewedMyProfileAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private WhoViewedMyProfileAdapterDataLoadTask() {
            super();
            WhoViewedMyProfileViewHolder.this = r4;
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final void mo29327a(ContactLoader contactLoader) {
            contactLoader.addDeviceIdAndPhotoLoaders();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: b */
        public final boolean mo29326b(ContactData contactData) {
            setDeviceId(contactData.getDeviceId());
            return super.mo29326b(contactData);
        }
    }

    public WhoViewedMyProfileViewHolder(View view, ScrollEvents scrollEvents) {
        super(view);
        this.f24658G = scrollEvents;
        ContactAction im = PostCallCard.getIM();
        this.f24659H = im;
        View findViewById = view.findViewById(2131362264);
        this.f24664y = findViewById;
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(2131364534);
        this.f24656E = constraintLayout;
        constraintLayout.setElevation(Activities.m27699a(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165562)));
        if (ThemeUtils.isThemeLight()) {
            ViewUtils.m27299b(constraintLayout, 2131230895, ThemeUtils.getColor(2131100228), ThemeUtils.getColor(2131100228), 0);
        } else {
            ViewUtils.m27299b(constraintLayout, 2131230895, ThemeUtils.getColor(2131099918), ThemeUtils.getColor(2131099918), 0);
        }
        int color = ThemeUtils.getColor(2131099784);
        this.f24652A = (ProfilePictureView) view.findViewById(2131363565);
        TextView textView = (TextView) view.findViewById(2131363347);
        this.f24660u = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView2 = (TextView) view.findViewById(2131364118);
        this.f24661v = textView2;
        textView2.setTextColor(ThemeUtils.getColor(2131100108));
        TextView textView3 = (TextView) view.findViewById(2131363497);
        this.f24662w = textView3;
        textView3.setTextColor(ThemeUtils.getColor(2131100108));
        TextView textView4 = (TextView) view.findViewById(2131362863);
        this.f24663x = textView4;
        textView4.setTextColor(ThemeUtils.getColor(2131100108));
        TextView textView5 = (TextView) view.findViewById(2131361986);
        textView5.setText(Activities.getString(2131886213));
        textView5.setTextColor(ThemeUtils.getColor(2131100108));
        ImageView imageView = (ImageView) view.findViewById(2131362999);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(2131363805);
        this.f24655D = linearLayout;
        if (im != null) {
            imageView.setImageResource(im.getLargeIcon());
        } else {
            imageView.setImageResource(2131231667);
        }
        m29335a((ImageView) view.findViewById(2131361985));
        final ImageView imageView2 = (ImageView) view.findViewById(2131363306);
        m29335a(imageView2);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileViewHolder$JIA1PGo4Eo2NwmdsKo0P7qsmLEY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WhoViewedMyProfileViewHolder.this.m29334a(imageView2, view2);
            }
        });
        m29335a((ImageView) view.findViewById(2131363306));
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(2131361990);
        this.f24654C = linearLayout2;
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileViewHolder$0lBXqhVgvr1zkkZNdvmIXJLoK8M
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WhoViewedMyProfileViewHolder.this.m29329e(view2);
            }
        });
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileViewHolder$S2q1djB8KrdWCzWdeyR2FFqFUVs
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WhoViewedMyProfileViewHolder.this.m29330d(view2);
            }
        });
        constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileViewHolder$mFxEWJU2iMfmMZRJ_iiZLfM1pZY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WhoViewedMyProfileViewHolder.this.m29331c(view2);
            }
        });
        TextView textView6 = (TextView) view.findViewById(2131363274);
        textView6.setText(Activities.getString(2131887189));
        textView6.setTextColor(ThemeUtils.getColor(2131100108));
        ImageView imageView3 = (ImageView) view.findViewById(2131362207);
        this.f24657F = imageView3;
        view.findViewById(2131362611).setBackgroundColor(ThemeUtils.getColor(2131099891));
        ImageUtils.m27529a(imageView3, 2131231783, new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileViewHolder$_zRbkpP10WU3FAogpcj3ImYnmPw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WhoViewedMyProfileViewHolder.this.m29332b(view2);
            }
        });
        imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileViewHolder$YYOvNKhtlaueyiZBQjS_N0TNjro
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WhoViewedMyProfileViewHolder.this.m29336a(view2);
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m29336a(View view) {
        AnalyticsManager.get().m28450a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ClickViewProfileCall");
        AndroidUtils.m27630a(this.f24657F, 1);
        ListsUtils.m27481a(this.f24657F.getContext(), this.f24665z.getPhone(), this.f24665z, ContactUtils.m28326a(PhoneManager.get().m28239a(this.f24653B.getPhone().getRawNumber()), this.f24653B.getDeviceId()), (ContactItemViewEvents) null);
    }

    /* renamed from: a */
    private static void m29335a(ImageView imageView) {
        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN));
    }

    /* renamed from: a */
    public /* synthetic */ void m29334a(ImageView imageView, View view) {
        AndroidUtils.m27630a(view, 1);
        ListsUtils.m27473b(imageView.getContext(), this.f24665z, Action.ContextType.WHO_VIEW_PROFILE_ITEM, Constants.WHO_VIEWED_MY_PROFILE, ContactItemContextMenuHelper.MENU_TYPE.DROPPY, imageView);
    }

    /* renamed from: b */
    public /* synthetic */ void m29332b(View view) {
        AnalyticsManager.get().m28449a(Constants.STORE, "Enter to plans screen - All Included", Constants.WHO_VIEWED_MY_PROFILE_CATEGORY);
        Intent intent = new Intent(this.f24664y.getContext(), PlanPageActivity.class);
        intent.putExtra("PLAN_PAGE_SOURCE", "whoViewedMyProfile");
        Activities.m27656b(this.f24664y.getContext(), intent);
    }

    /* renamed from: c */
    public /* synthetic */ void m29331c(View view) {
        AndroidUtils.m27630a(view, 1);
        AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, Constants.CONTACT_SCREEN, Constants.WHO_VIEWED_MY_PROFILE_CATEGORY);
        ListsUtils.m27485a(view.getContext(), this.f24665z, "WhoViewedMyProfileAdapter", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), getAdapterPosition(), 9), (ENTRYPOINT) null);
    }

    /* renamed from: d */
    public /* synthetic */ void m29330d(View view) {
        if (this.f24653B != null) {
            AnalyticsManager.get().m28450a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ClickViewProfileMessage");
            if (this.f24659H != null) {
                Singletons.get();
                Singletons.m28494a(this.f24659H.getType()).openIm(view.getContext(), this.f24653B);
                return;
            }
            Activities.m27656b(view.getContext(), ContactUtils.m28328a(this.f24653B, true));
        }
    }

    /* renamed from: e */
    public /* synthetic */ void m29329e(View view) {
        if (this.f24653B != null) {
            AnalyticsManager.get().m28450a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ClickViewProfileAddContact");
            Activities.m27656b(view.getContext(), ContactUtils.m28328a(this.f24653B, true));
        }
    }

    /* renamed from: a */
    public final void m29333a(WhoViewedMyProfileDataItem whoViewedMyProfileDataItem) {
        m31503a(whoViewedMyProfileDataItem.getCacheKey(), whoViewedMyProfileDataItem, this.f24658G, whoViewedMyProfileDataItem.getContactId(), whoViewedMyProfileDataItem.getPhone());
        this.f24665z = whoViewedMyProfileDataItem;
        boolean z = true;
        if (!whoViewedMyProfileDataItem.f24641g) {
            this.f24654C.setClickable(false);
            this.f24655D.setClickable(false);
            this.f24656E.setClickable(false);
            this.f24657F.setClickable(false);
            this.f24664y.setClickable(true);
            this.f24664y.setVisibility(0);
            return;
        }
        this.f24654C.setClickable(true);
        this.f24655D.setClickable(true);
        this.f24656E.setClickable(true);
        this.f24657F.setClickable(true);
        this.f24664y.setClickable(false);
        this.f24664y.setVisibility(8);
        ContactData m28327a = ContactUtils.m28327a(whoViewedMyProfileDataItem.getPhone());
        this.f24653B = m28327a;
        if (m28327a.isContactInDevice()) {
            this.f24654C.setVisibility(8);
        } else {
            this.f24654C.setVisibility(0);
        }
        this.f24660u.setText(StringUtils.m26020j(whoViewedMyProfileDataItem.f24638d));
        this.f24661v.setText(DateUtils.m27120b(new Date(whoViewedMyProfileDataItem.f24637c)));
        this.f24663x.setText(whoViewedMyProfileDataItem.f24640f);
        this.f24662w.setText(Phone.m26093b(whoViewedMyProfileDataItem.f24635a).m26095b());
        this.f24652A.setText(StringUtils.m26010r(whoViewedMyProfileDataItem.f24638d));
        if (whoViewedMyProfileDataItem.f24637c <= Prefs.f26598hD.get().longValue()) {
            z = false;
        }
        if (!z) {
            return;
        }
        ViewUtils.m27299b(this.f24656E, 2131230895, ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099733 : 2131099732), 0, 0);
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.f24652A;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return new WhoViewedMyProfileAdapterDataLoadTask();
    }
}
