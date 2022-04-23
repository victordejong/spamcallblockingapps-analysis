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
    private final Calendar B;
    private final Calendar C;
    private final Calendar D;
    private final Calendar E;
    private final Calendar F;
    private BirthdayReminderData G;
    private final ProfilePictureView u;
    private final CallAppRow v;
    private final TextView w;
    private final TextView x;
    private final SimpleDateFormat y = new SimpleDateFormat("MMM d");
    private final SimpleDateFormat z = new SimpleDateFormat("MMM d, yyyy");
    private final Calendar A = DateUtils.a();

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask.class */
    final class BirthdaysAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        private BirthdaysAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final void a(ContactLoader contactLoader) {
            contactLoader.addDeviceDataAndFastPhotoNameLoaders();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final boolean a(long j, Phone phone, ContactData contactData) {
            return contactData.getDeviceId() == j;
        }

        final boolean a(BirthdayReminderData birthdayReminderData) {
            return BirthdayViewHolder.this.G.equals(birthdayReminderData);
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask, com.callapp.contacts.manager.task.Task
        public final void doTask() {
            RemoteAccountHelper remoteAccountHelper;
            if (this.f11108b.isEmpty()) {
                this.f11107a.stopLoading(null);
                final BirthdayReminderData birthdayReminderData = BirthdayViewHolder.this.G;
                if (a(birthdayReminderData) && birthdayReminderData.netId != null && (remoteAccountHelper = Singletons.get().getRemoteAccountHelper(birthdayReminderData.netId.intValue())) != null) {
                    String str = birthdayReminderData.socialId;
                    if (StringUtils.b((CharSequence) str)) {
                        try {
                            final String f = remoteAccountHelper.f(str);
                            final String h = remoteAccountHelper.h(str);
                            if (StringUtils.a((CharSequence) h)) {
                                h = remoteAccountHelper.g(str);
                            }
                            if (remoteAccountHelper.a(h)) {
                                CacheManager.get().a(BirthdayViewHolder.this.G.getCacheKey());
                                return;
                            }
                            final boolean z = StringUtils.a((CharSequence) birthdayReminderData.displayName) && StringUtils.b((CharSequence) f);
                            final boolean z2 = !BirthdayViewHolder.this.t.isLoaded() && StringUtils.b((CharSequence) h);
                            CacheManager.get().a(BirthdayViewHolder.this.G.getCacheKey(), new CacheManager.PhotoUrlCache(h, remoteAccountHelper.getDataSource(), null));
                            if (z || z2) {
                                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.birthday.BirthdayViewHolder.BirthdaysAdapterDataLoadTask.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (BirthdaysAdapterDataLoadTask.this.a(birthdayReminderData)) {
                                            if (z) {
                                                BirthdayViewHolder.this.w.setText(StringUtils.j(f));
                                            }
                                            if (z2) {
                                                ProfilePictureView profilePictureView = BirthdayViewHolder.this.u;
                                                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(h);
                                                glideRequestBuilder.j = true;
                                                glideRequestBuilder.l = true;
                                                profilePictureView.a(glideRequestBuilder);
                                            }
                                        }
                                    }
                                });
                            }
                        } catch (Exception e) {
                        }
                    }
                }
            } else {
                super.doTask();
            }
        }
    }

    public BirthdayViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.v = callAppRow;
        int color = ThemeUtils.getColor(2131100140);
        this.u = (ProfilePictureView) callAppRow.findViewById(2131363565);
        TextView textView = (TextView) callAppRow.findViewById(2131362445);
        this.w = textView;
        textView.setTextColor(color);
        TextView textView2 = (TextView) callAppRow.findViewById(2131362527);
        this.x = textView2;
        textView2.setTextColor(color);
        ViewUtils.a(((ImageView) callAppRow.findViewById(2131362093)).getDrawable(), ThemeUtils.getColor(2131099786));
        callAppRow.setSwipeable(false);
        Calendar a2 = DateUtils.a();
        this.B = a2;
        a2.add(10, 24);
        Calendar a3 = DateUtils.a();
        this.C = a3;
        a3.add(10, -24);
        Calendar a4 = DateUtils.a();
        this.D = a4;
        a4.add(10, 48);
        Calendar a5 = DateUtils.a();
        this.E = a5;
        a5.add(10, -48);
        Calendar a6 = DateUtils.a();
        this.F = a6;
        a6.add(10, -72);
    }

    static /* synthetic */ void a(Context context, BirthdayReminderData birthdayReminderData) {
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Pressed on birthday from contact list", Constants.CLICK);
        Intent intent = new Intent(context, PostBirthdayActivity.class);
        if (birthdayReminderData.netId != null && birthdayReminderData.netId.intValue() == 1 && StringUtils.b((CharSequence) birthdayReminderData.socialId)) {
            intent.putExtra("FB_ID_EXTRA", birthdayReminderData.socialId);
        }
        if (birthdayReminderData.contactId != 0) {
            intent.putExtra("PHONE_EXTRA", birthdayReminderData.phone.a());
            intent.putExtra(ChooseSocialProfileActivity.CONTACT_ID_EXTRA, birthdayReminderData.contactId);
        }
        Activities.a(context, intent);
    }

    public final void a(final BirthdayReminderData birthdayReminderData, ScrollEvents scrollEvents) {
        String str;
        this.G = birthdayReminderData;
        a(birthdayReminderData.getCacheKey(), birthdayReminderData, scrollEvents, birthdayReminderData.contactId, birthdayReminderData.getPhone());
        this.w.setText(StringUtils.j(birthdayReminderData.displayName));
        TextView textView = this.x;
        Calendar instance = Calendar.getInstance();
        instance.setTime(birthdayReminderData.date);
        int i = instance.get(2);
        int i2 = instance.get(5);
        if (i2 == this.F.get(5) && i == this.F.get(2)) {
            str = Activities.getString(2131887903);
        } else if (i2 == this.E.get(5) && i == this.E.get(2)) {
            str = Activities.getString(2131888102);
        } else if (i2 == this.C.get(5) && i == this.C.get(2)) {
            str = Activities.getString(2131888250);
        } else if (i2 == this.A.get(5) && i == this.A.get(2)) {
            str = Activities.getString(2131887907);
        } else if (i2 == this.B.get(5) && i == this.B.get(2)) {
            str = Activities.getString(2131887909);
        } else if (i2 == this.D.get(5) && i == this.D.get(2)) {
            str = Activities.getString(2131888103);
        } else if (instance.compareTo(this.A) > 0) {
            str = this.y.format(instance.getTime());
        } else {
            instance.add(1, 1);
            str = this.z.format(instance.getTime());
        }
        textView.setText(str);
        this.u.setText(StringUtils.r(birthdayReminderData.displayName));
        this.v.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.birthday.BirthdayViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BirthdayViewHolder.a(view.getContext(), birthdayReminderData);
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.u;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final BaseContactHolder.AdapterDataLoadTask l() {
        return new BirthdaysAdapterDataLoadTask();
    }
}
