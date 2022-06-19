package com.callapp.contacts.activity.birthday;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.EnumSet;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/birthday/BirthdayViewHolder.class */
public class BirthdayViewHolder extends BaseContactHolder {

    /* renamed from: B */
    private final Calendar f20388B;

    /* renamed from: C */
    private final Calendar f20389C;

    /* renamed from: D */
    private final Calendar f20390D;

    /* renamed from: E */
    private final Calendar f20391E;

    /* renamed from: F */
    private final Calendar f20392F;

    /* renamed from: G */
    private BirthdayReminderData f20393G;

    /* renamed from: u */
    private final ProfilePictureView f20394u;

    /* renamed from: v */
    private final CallAppRow f20395v;

    /* renamed from: w */
    private final TextView f20396w;

    /* renamed from: x */
    private final TextView f20397x;

    /* renamed from: y */
    private final SimpleDateFormat f20398y = new SimpleDateFormat("MMM d");

    /* renamed from: z */
    private final SimpleDateFormat f20399z = new SimpleDateFormat("MMM d, yyyy");

    /* renamed from: A */
    private final Calendar f20387A = DateUtils.m27138a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask.class */
    public final class BirthdaysAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private BirthdaysAdapterDataLoadTask() {
            super();
            BirthdayViewHolder.this = r4;
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final void mo29327a(ContactLoader contactLoader) {
            contactLoader.addDeviceDataAndFastPhotoNameLoaders();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final boolean mo29762a(long j, Phone phone, ContactData contactData) {
            return contactData.getDeviceId() == j;
        }

        /* renamed from: a */
        final boolean m31460a(BirthdayReminderData birthdayReminderData) {
            return BirthdayViewHolder.this.f20393G.equals(birthdayReminderData);
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask, com.callapp.contacts.manager.task.Task
        public final void doTask() {
            RemoteAccountHelper remoteAccountHelper;
            if (!this.f20289b.isEmpty()) {
                super.doTask();
                return;
            }
            this.f20288a.stopLoading(null);
            final BirthdayReminderData birthdayReminderData = BirthdayViewHolder.this.f20393G;
            if (!m31460a(birthdayReminderData) || birthdayReminderData.netId == null || (remoteAccountHelper = Singletons.get().getRemoteAccountHelper(birthdayReminderData.netId.intValue())) == null) {
                return;
            }
            String str = birthdayReminderData.socialId;
            if (!StringUtils.m26045b((CharSequence) str)) {
                return;
            }
            try {
                final String mo29100f = remoteAccountHelper.mo29100f(str);
                String mo29098h = remoteAccountHelper.mo29098h(str);
                if (StringUtils.m26059a((CharSequence) mo29098h)) {
                    mo29098h = remoteAccountHelper.mo29099g(str);
                }
                if (remoteAccountHelper.mo29105a(mo29098h)) {
                    CacheManager.get().m28384a(BirthdayViewHolder.this.f20393G.getCacheKey());
                    return;
                }
                boolean z = StringUtils.m26059a((CharSequence) birthdayReminderData.displayName) && StringUtils.m26045b((CharSequence) mo29100f);
                boolean z2 = !BirthdayViewHolder.this.f20280t.isLoaded() && StringUtils.m26045b((CharSequence) mo29098h);
                CacheManager.get().m28383a(BirthdayViewHolder.this.f20393G.getCacheKey(), new CacheManager.PhotoUrlCache(mo29098h, remoteAccountHelper.getDataSource(), null));
                if (!z && !z2) {
                    return;
                }
                final boolean z3 = z;
                final boolean z4 = z2;
                final String str2 = mo29098h;
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.birthday.BirthdayViewHolder.BirthdaysAdapterDataLoadTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (BirthdaysAdapterDataLoadTask.this.m31460a(birthdayReminderData)) {
                            if (z3) {
                                BirthdayViewHolder.this.f20396w.setText(StringUtils.m26020j(mo29100f));
                            }
                            if (!z4) {
                                return;
                            }
                            ProfilePictureView profilePictureView = BirthdayViewHolder.this.f20394u;
                            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str2);
                            glideRequestBuilder.f28244j = true;
                            glideRequestBuilder.f28246l = true;
                            profilePictureView.m26684a(glideRequestBuilder);
                        }
                    }
                });
            } catch (Exception e) {
            }
        }
    }

    public BirthdayViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.f20395v = callAppRow;
        int color = ThemeUtils.getColor(2131100140);
        this.f20394u = (ProfilePictureView) callAppRow.findViewById(2131363565);
        TextView textView = (TextView) callAppRow.findViewById(2131362445);
        this.f20396w = textView;
        textView.setTextColor(color);
        TextView textView2 = (TextView) callAppRow.findViewById(2131362527);
        this.f20397x = textView2;
        textView2.setTextColor(color);
        ViewUtils.m27330a(((ImageView) callAppRow.findViewById(2131362093)).getDrawable(), ThemeUtils.getColor(2131099786));
        callAppRow.setSwipeable(false);
        Calendar m27138a = DateUtils.m27138a();
        this.f20388B = m27138a;
        m27138a.add(10, 24);
        Calendar m27138a2 = DateUtils.m27138a();
        this.f20389C = m27138a2;
        m27138a2.add(10, -24);
        Calendar m27138a3 = DateUtils.m27138a();
        this.f20390D = m27138a3;
        m27138a3.add(10, 48);
        Calendar m27138a4 = DateUtils.m27138a();
        this.f20391E = m27138a4;
        m27138a4.add(10, -48);
        Calendar m27138a5 = DateUtils.m27138a();
        this.f20392F = m27138a5;
        m27138a5.add(10, -72);
    }

    /* renamed from: a */
    static /* synthetic */ void m31466a(Context context, BirthdayReminderData birthdayReminderData) {
        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Pressed on birthday from contact list", Constants.CLICK);
        Intent intent = new Intent(context, PostBirthdayActivity.class);
        if (birthdayReminderData.netId != null && birthdayReminderData.netId.intValue() == 1 && StringUtils.m26045b((CharSequence) birthdayReminderData.socialId)) {
            intent.putExtra("FB_ID_EXTRA", birthdayReminderData.socialId);
        }
        if (birthdayReminderData.contactId != 0) {
            intent.putExtra("PHONE_EXTRA", birthdayReminderData.phone.m26101a());
            intent.putExtra(ChooseSocialProfileActivity.CONTACT_ID_EXTRA, birthdayReminderData.contactId);
        }
        Activities.m27685a(context, intent);
    }

    /* renamed from: a */
    public final void m31465a(final BirthdayReminderData birthdayReminderData, ScrollEvents scrollEvents) {
        String str;
        this.f20393G = birthdayReminderData;
        m31503a(birthdayReminderData.getCacheKey(), birthdayReminderData, scrollEvents, birthdayReminderData.contactId, birthdayReminderData.getPhone());
        this.f20396w.setText(StringUtils.m26020j(birthdayReminderData.displayName));
        TextView textView = this.f20397x;
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(birthdayReminderData.date);
        int i = calendar.get(2);
        int i2 = calendar.get(5);
        if (i2 == this.f20392F.get(5) && i == this.f20392F.get(2)) {
            str = Activities.getString(2131887903);
        } else if (i2 == this.f20391E.get(5) && i == this.f20391E.get(2)) {
            str = Activities.getString(2131888102);
        } else if (i2 == this.f20389C.get(5) && i == this.f20389C.get(2)) {
            str = Activities.getString(2131888250);
        } else if (i2 == this.f20387A.get(5) && i == this.f20387A.get(2)) {
            str = Activities.getString(2131887907);
        } else if (i2 == this.f20388B.get(5) && i == this.f20388B.get(2)) {
            str = Activities.getString(2131887909);
        } else if (i2 == this.f20390D.get(5) && i == this.f20390D.get(2)) {
            str = Activities.getString(2131888103);
        } else if (calendar.compareTo(this.f20387A) > 0) {
            str = this.f20398y.format(calendar.getTime());
        } else {
            calendar.add(1, 1);
            str = this.f20399z.format(calendar.getTime());
        }
        textView.setText(str);
        this.f20394u.setText(StringUtils.m26010r(birthdayReminderData.displayName));
        this.f20395v.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.birthday.BirthdayViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BirthdayViewHolder.m31466a(view.getContext(), birthdayReminderData);
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.f20394u;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return new BirthdaysAdapterDataLoadTask();
    }
}
