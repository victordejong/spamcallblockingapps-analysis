package com.privacystar.core.service.workers;

import android.content.Context;
import androidx.work.Data;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.OneTimeWorkRequest;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.CampaignUtil;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\rJL\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\u00042\b\b\u0002\u0010\u0017\u001a\u00020\u0004J\u0006\u0010\u0018\u001a\u00020\rJ\u0006\u0010\u0019\u001a\u00020\rJQ\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010#J\u0006\u0010$\u001a\u00020\rJ>\u0010%\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u001e2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0004JP\u0010'\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\u0006\u0010&\u001a\u00020\u001e2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0004J\u0006\u0010(\u001a\u00020\rJ\u0006\u0010)\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006*"}, m254d2 = {"Lcom/privacystar/core/service/workers/CampaignWorkerManager;", "", "()V", "TAG_BLOCKED_CALLS_MILESTONE", "", "TAG_FREE_USER_BIWEEKLY", "TAG_LOOKUP_SECOND_DAY", "TAG_RATE_SEVENTH_DAY", "TAG_REPORT_FOURTH_DAY", "TAG_THREE_DAY_INACTIVE", "TAG_WEEKLY_REPORT", "TAG_WELCOME_SUBSCRIBER", "cancelBiweeklyMessage", "", "createMessageData", "Landroidx/work/Data$Builder;", "logo", "title", "message", "buttonText1", "buttonAction1", "secondaryImage", "buttonText2", "buttonAction2", "scheduleBiweeklyMessage", "scheduleInactiveMessage", "scheduleMessage", "batchId", "tag", "delay", "", "delayTimeUnit", "Ljava/util/concurrent/TimeUnit;", "notificationMessage", "notificationTitle", "(Landroidx/work/Data$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;Ljava/lang/String;Ljava/lang/String;)V", "scheduleOnInstallMessages", "scheduleRepeatingMessage", "repeatingInterval", "scheduleRepeatingMessageWithDelay", "scheduleSpamCallMilestoneMessage", "scheduleWelcomeSubscriberMessage", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/workers/CampaignWorkerManager.class */
public final class CampaignWorkerManager {
    public static final CampaignWorkerManager INSTANCE = new CampaignWorkerManager();
    @NotNull
    public static final String TAG_BLOCKED_CALLS_MILESTONE = "Blocked_calls_milestone";
    @NotNull
    public static final String TAG_FREE_USER_BIWEEKLY = "Free_user_biweekly";
    @NotNull
    public static final String TAG_LOOKUP_SECOND_DAY = "Lookup_second_day";
    @NotNull
    public static final String TAG_RATE_SEVENTH_DAY = "Rate_seventh_day";
    @NotNull
    public static final String TAG_REPORT_FOURTH_DAY = "Report_fourth_day";
    @NotNull
    public static final String TAG_THREE_DAY_INACTIVE = "Three_days_inactive";
    @NotNull
    public static final String TAG_WEEKLY_REPORT = "Weekly_report";
    @NotNull
    public static final String TAG_WELCOME_SUBSCRIBER = "Welcome_subscriber";

    private CampaignWorkerManager() {
    }

    @NotNull
    public static /* synthetic */ Data.Builder createMessageData$default(CampaignWorkerManager campaignWorkerManager, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i, Object obj) {
        if ((i & 32) != 0) {
            str6 = "";
        }
        if ((i & 64) != 0) {
            str7 = "";
        }
        if ((i & 128) != 0) {
            str8 = "";
        }
        return campaignWorkerManager.createMessageData(str, str2, str3, str4, str5, str6, str7, str8);
    }

    public static /* synthetic */ void scheduleMessage$default(CampaignWorkerManager campaignWorkerManager, Data.Builder builder, String str, String str2, Long l, TimeUnit timeUnit, String str3, String str4, int i, Object obj) {
        if ((i & 8) != 0) {
            l = null;
        }
        if ((i & 16) != 0) {
            timeUnit = TimeUnit.DAYS;
        }
        if ((i & 32) != 0) {
            str3 = null;
        }
        if ((i & 64) != 0) {
            str4 = null;
        }
        campaignWorkerManager.scheduleMessage(builder, str, str2, l, timeUnit, str3, str4);
    }

    public static /* synthetic */ void scheduleRepeatingMessage$default(CampaignWorkerManager campaignWorkerManager, Data.Builder builder, String str, String str2, long j, String str3, String str4, int i, Object obj) {
        if ((i & 16) != 0) {
            str3 = null;
        }
        if ((i & 32) != 0) {
            str4 = null;
        }
        campaignWorkerManager.scheduleRepeatingMessage(builder, str, str2, j, str3, str4);
    }

    public static /* synthetic */ void scheduleRepeatingMessageWithDelay$default(CampaignWorkerManager campaignWorkerManager, Data.Builder builder, String str, String str2, long j, TimeUnit timeUnit, long j2, String str3, String str4, int i, Object obj) {
        if ((i & 16) != 0) {
            timeUnit = TimeUnit.DAYS;
        }
        if ((i & 64) != 0) {
            str3 = null;
        }
        if ((i & 128) != 0) {
            str4 = null;
        }
        campaignWorkerManager.scheduleRepeatingMessageWithDelay(builder, str, str2, j, timeUnit, j2, str3, str4);
    }

    public final void cancelBiweeklyMessage() {
        WorkManager.getInstance().cancelUniqueWork(TAG_FREE_USER_BIWEEKLY);
    }

    @NotNull
    public final Data.Builder createMessageData(@NotNull String logo, @NotNull String title, @NotNull String message, @NotNull String buttonText1, @NotNull String buttonAction1, @NotNull String secondaryImage, @NotNull String buttonText2, @NotNull String buttonAction2) {
        Intrinsics.checkParameterIsNotNull(logo, "logo");
        Intrinsics.checkParameterIsNotNull(title, "title");
        Intrinsics.checkParameterIsNotNull(message, "message");
        Intrinsics.checkParameterIsNotNull(buttonText1, "buttonText1");
        Intrinsics.checkParameterIsNotNull(buttonAction1, "buttonAction1");
        Intrinsics.checkParameterIsNotNull(secondaryImage, "secondaryImage");
        Intrinsics.checkParameterIsNotNull(buttonText2, "buttonText2");
        Intrinsics.checkParameterIsNotNull(buttonAction2, "buttonAction2");
        Data.Builder putString = new Data.Builder().putString(CampaignUtil.FIELD_LOGO, logo).putString(CampaignUtil.FIELD_TITLE, title).putString("Message", message).putString(CampaignUtil.FIELD_SECONDARY_IMAGE, secondaryImage).putString(CampaignUtil.FIELD_BUTTON1_TEXT, buttonText1).putString(CampaignUtil.FIELD_BUTTON1_ACTION, buttonAction1).putString(CampaignUtil.FIELD_BUTTON2_TEXT, buttonText2).putString(CampaignUtil.FIELD_BUTTON2_ACTION, buttonAction2);
        Intrinsics.checkExpressionValueIsNotNull(putString, "Data.Builder()\n         …N2_ACTION, buttonAction2)");
        return putString;
    }

    public final void scheduleBiweeklyMessage() {
        Context context = PSApplication.context();
        String string = context.getString(C1566R.string.af_local_notifications_biweekly_title);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…fications_biweekly_title)");
        String string2 = context.getString(C1566R.string.af_local_notifications_biweekly_message);
        Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.stri…cations_biweekly_message)");
        String string3 = context.getString(C1566R.string.af_local_notifications_biweekly_button1Text);
        Intrinsics.checkExpressionValueIsNotNull(string3, "context.getString(R.stri…ons_biweekly_button1Text)");
        scheduleRepeatingMessageWithDelay$default(this, createMessageData$default(this, "1", string, string2, string3, "2", null, null, null, 224, null), Event.Campaign.FreeUserBiweeklyLocalCampaign.INSTANCE.getBatchId(), TAG_FREE_USER_BIWEEKLY, 1L, TimeUnit.HOURS, 14L, context.getString(C1566R.string.af_local_notifications_biweekly_notification_message), null, 128, null);
    }

    public final void scheduleInactiveMessage() {
        Context context = PSApplication.context();
        Intrinsics.checkExpressionValueIsNotNull(context, "PSApplication.context()");
        String string = context.getString(C1566R.string.af_local_notifications_three_day_inactive_title);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…three_day_inactive_title)");
        String string2 = context.getString(C1566R.string.af_local_notifications_three_day_inactive_message);
        Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.stri…ree_day_inactive_message)");
        String string3 = context.getString(C1566R.string.af_local_notifications_three_day_inactive_button1Text);
        Intrinsics.checkExpressionValueIsNotNull(string3, "context.getString(R.stri…day_inactive_button1Text)");
        scheduleRepeatingMessage$default(this, createMessageData$default(this, "1", string, string2, string3, CampaignUtil.CAMPAIGN_ACTION_INBOX_RATE, null, null, null, 224, null), Event.Campaign.InactiveUseLocalCampaign.INSTANCE.getBatchId(), TAG_THREE_DAY_INACTIVE, 3L, context.getString(C1566R.string.af_local_notifications_three_day_inactive_notification_message), null, 32, null);
    }

    public final void scheduleMessage(@NotNull Data.Builder message, @NotNull String batchId, @NotNull String tag, @Nullable Long l, @NotNull TimeUnit delayTimeUnit, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkParameterIsNotNull(message, "message");
        Intrinsics.checkParameterIsNotNull(batchId, "batchId");
        Intrinsics.checkParameterIsNotNull(tag, "tag");
        Intrinsics.checkParameterIsNotNull(delayTimeUnit, "delayTimeUnit");
        Timber.m37d('\"' + batchId + "\" SCHEDULED DELAYED", new Object[0]);
        message.putInt(CampaignUtil.FIELD_TTL, 45);
        message.putString(CampaignUtil.FIELD_LOCAL_CAMPAIGN_BATCH_ID, batchId);
        if (str != null) {
            message.putString(CampaignUtil.FIELD_NOTIFICATION_MESSAGE, str);
        }
        if (str2 != null) {
            message.putString(CampaignUtil.FIELD_NOTIFICATION_TITLE, str2);
        }
        Data build = message.build();
        Intrinsics.checkExpressionValueIsNotNull(build, "message.run{\n           …        build()\n        }");
        OneTimeWorkRequest.Builder builder = new OneTimeWorkRequest.Builder(CampaignWorker.class);
        if (l != null) {
            builder.setInitialDelay(l.longValue(), delayTimeUnit);
        }
        builder.setInputData(build);
        OneTimeWorkRequest build2 = builder.build();
        Intrinsics.checkExpressionValueIsNotNull(build2, "OneTimeWorkRequest.Build…        build()\n        }");
        WorkManager.getInstance().enqueueUniqueWork(tag, ExistingWorkPolicy.REPLACE, build2);
    }

    public final void scheduleOnInstallMessages() {
        Context context = PSApplication.context();
        Intrinsics.checkExpressionValueIsNotNull(context, "PSApplication.context()");
        String string = context.getString(C1566R.string.af_local_notifications_two_day_install_title);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…ns_two_day_install_title)");
        String string2 = context.getString(C1566R.string.af_local_notifications_two_day_install_message);
        Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.stri…_two_day_install_message)");
        String string3 = context.getString(C1566R.string.af_local_notifications_two_day_install_button1Text);
        Intrinsics.checkExpressionValueIsNotNull(string3, "context.getString(R.stri…_day_install_button1Text)");
        scheduleMessage$default(this, createMessageData$default(this, "1", string, string2, string3, "1", null, null, null, 224, null), Event.Campaign.LookupSecondDayLocalCampaign.INSTANCE.getBatchId(), TAG_LOOKUP_SECOND_DAY, 2L, null, null, null, 112, null);
        String string4 = context.getString(C1566R.string.af_local_notifications_four_day_install_title);
        Intrinsics.checkExpressionValueIsNotNull(string4, "context.getString(R.stri…s_four_day_install_title)");
        String string5 = context.getString(C1566R.string.af_local_notifications_four_day_install_message);
        Intrinsics.checkExpressionValueIsNotNull(string5, "context.getString(R.stri…four_day_install_message)");
        String string6 = context.getString(C1566R.string.af_local_notifications_four_day_install_button1Text);
        Intrinsics.checkExpressionValueIsNotNull(string6, "context.getString(R.stri…_day_install_button1Text)");
        scheduleMessage$default(this, createMessageData$default(this, "1", string4, string5, string6, CampaignUtil.CAMPAIGN_ACTION_INBOX_RATE, null, null, null, 224, null), Event.Campaign.ReportingFourthDayLocalCampaign.INSTANCE.getBatchId(), TAG_REPORT_FOURTH_DAY, 4L, null, null, null, 112, null);
        String string7 = context.getString(C1566R.string.af_local_notifications_seven_day_install_title);
        Intrinsics.checkExpressionValueIsNotNull(string7, "context.getString(R.stri…_seven_day_install_title)");
        String string8 = context.getString(C1566R.string.af_local_notifications_seven_day_install_message);
        Intrinsics.checkExpressionValueIsNotNull(string8, "context.getString(R.stri…even_day_install_message)");
        String string9 = context.getString(C1566R.string.af_local_notifications_seven_day_install_button1Text);
        Intrinsics.checkExpressionValueIsNotNull(string9, "context.getString(R.stri…_day_install_button1Text)");
        scheduleMessage$default(this, createMessageData$default(this, "1", string7, string8, string9, CampaignUtil.CAMPAIGN_ACTION_INBOX_RATE, null, null, null, 224, null), Event.Campaign.RateAppSeventhDayLocalCampaign.INSTANCE.getBatchId(), TAG_RATE_SEVENTH_DAY, 7L, null, context.getString(C1566R.string.af_local_notifications_seven_day_install_notification_message), null, 80, null);
        String string10 = context.getString(C1566R.string.af_local_notifications_weekly_report_title);
        Intrinsics.checkExpressionValueIsNotNull(string10, "context.getString(R.stri…ions_weekly_report_title)");
        String string11 = context.getString(C1566R.string.af_local_notifications_weekly_report_message);
        Intrinsics.checkExpressionValueIsNotNull(string11, "context.getString(R.stri…ns_weekly_report_message)");
        String string12 = context.getString(C1566R.string.af_local_notifications_weekly_report_button1Text);
        Intrinsics.checkExpressionValueIsNotNull(string12, "context.getString(R.stri…eekly_report_button1Text)");
        scheduleRepeatingMessage$default(this, createMessageData$default(this, "1", string10, string11, string12, CampaignUtil.CAMPAIGN_ACTION_DASHBOARD, null, null, null, 224, null), Event.Campaign.WeeklyReportLocalCampaign.INSTANCE.getBatchId(), TAG_WEEKLY_REPORT, 7L, null, null, 48, null);
    }

    public final void scheduleRepeatingMessage(@NotNull Data.Builder message, @NotNull String batchId, @NotNull String tag, long j, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkParameterIsNotNull(message, "message");
        Intrinsics.checkParameterIsNotNull(batchId, "batchId");
        Intrinsics.checkParameterIsNotNull(tag, "tag");
        Timber.m37d('\"' + batchId + "\" SCHEDULED REPEATED", new Object[0]);
        message.putInt(CampaignUtil.FIELD_TTL, 45);
        message.putString(CampaignUtil.FIELD_LOCAL_CAMPAIGN_BATCH_ID, batchId);
        if (str != null) {
            message.putString(CampaignUtil.FIELD_NOTIFICATION_MESSAGE, str);
        }
        if (str2 != null) {
            message.putString(CampaignUtil.FIELD_NOTIFICATION_TITLE, str2);
        }
        Data build = message.build();
        Intrinsics.checkExpressionValueIsNotNull(build, "message.run{\n           …        build()\n        }");
        PeriodicWorkRequest.Builder builder = new PeriodicWorkRequest.Builder(CampaignWorker.class, j, TimeUnit.DAYS, 1L, TimeUnit.HOURS);
        builder.setInputData(build);
        PeriodicWorkRequest build2 = builder.build();
        Intrinsics.checkExpressionValueIsNotNull(build2, "PeriodicWorkRequest.Buil…        build()\n        }");
        WorkManager.getInstance().enqueueUniquePeriodicWork(tag, ExistingPeriodicWorkPolicy.REPLACE, build2);
    }

    public final void scheduleRepeatingMessageWithDelay(@NotNull Data.Builder message, @NotNull String batchId, @NotNull String tag, long j, @NotNull TimeUnit delayTimeUnit, long j2, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkParameterIsNotNull(message, "message");
        Intrinsics.checkParameterIsNotNull(batchId, "batchId");
        Intrinsics.checkParameterIsNotNull(tag, "tag");
        Intrinsics.checkParameterIsNotNull(delayTimeUnit, "delayTimeUnit");
        Timber.m37d('\"' + batchId + "\" SCHEDULED DELAYED, TO BE REPEATED", new Object[0]);
        message.putInt(CampaignUtil.FIELD_TTL, 45);
        message.putString(CampaignUtil.FIELD_LOCAL_CAMPAIGN_BATCH_ID, batchId);
        message.putString(CampaignUtil.FIELD_TAG, tag);
        message.putLong(CampaignUtil.FIELD_DURATION, TimeUnit.MILLISECONDS.convert(j, delayTimeUnit));
        message.putLong(CampaignUtil.FIELD_REPEATING_INTERVAL, j2);
        if (str != null) {
            message.putString(CampaignUtil.FIELD_NOTIFICATION_MESSAGE, str);
        }
        if (str2 != null) {
            message.putString(CampaignUtil.FIELD_NOTIFICATION_TITLE, str2);
        }
        Data build = message.build();
        Intrinsics.checkExpressionValueIsNotNull(build, "message.run{\n           …        build()\n        }");
        OneTimeWorkRequest.Builder builder = new OneTimeWorkRequest.Builder(CampaignRepeatingSchedulerWorker.class);
        builder.setInputData(build);
        OneTimeWorkRequest build2 = builder.build();
        Intrinsics.checkExpressionValueIsNotNull(build2, "OneTimeWorkRequest.Build…        build()\n        }");
        WorkManager.getInstance().enqueue(build2);
    }

    public final void scheduleSpamCallMilestoneMessage() {
        Timber.m37d("Spam call message scheduled", new Object[0]);
        Context context = PSApplication.context();
        String string = context.getString(C1566R.string.af_local_notifications_blocked_calls_milestone_title);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…ed_calls_milestone_title)");
        String string2 = context.getString(C1566R.string.af_local_notifications_blocked_calls_milestone_message);
        Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.stri…_calls_milestone_message)");
        String string3 = context.getString(C1566R.string.af_local_notifications_blocked_calls_milestone_button1Text);
        Intrinsics.checkExpressionValueIsNotNull(string3, "context.getString(R.stri…ls_milestone_button1Text)");
        scheduleMessage$default(this, createMessageData$default(this, "1", string, string2, string3, CampaignUtil.CAMPAIGN_ACTION_DASHBOARD, null, null, null, 224, null), Event.Campaign.SpamCallBlockingMilestoneLocalCampaign.INSTANCE.getBatchId(), TAG_BLOCKED_CALLS_MILESTONE, 1L, TimeUnit.MINUTES, null, null, 96, null);
    }

    public final void scheduleWelcomeSubscriberMessage() {
        Context context = PSApplication.context();
        String string = context.getString(C1566R.string.af_local_notifications_welcome_subscriber_title);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…welcome_subscriber_title)");
        String string2 = context.getString(C1566R.string.af_local_notifications_welcome_subscriber_message);
        Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.stri…lcome_subscriber_message)");
        String string3 = context.getString(C1566R.string.af_local_notifications_welcome_subscriber_button1Text);
        Intrinsics.checkExpressionValueIsNotNull(string3, "context.getString(R.stri…e_subscriber_button1Text)");
        String string4 = context.getString(C1566R.string.af_local_notifications_welcome_subscriber_button1Action);
        Intrinsics.checkExpressionValueIsNotNull(string4, "context.getString(R.stri…subscriber_button1Action)");
        String string5 = context.getString(C1566R.string.af_local_notifications_welcome_subscriber_secondary_image);
        Intrinsics.checkExpressionValueIsNotNull(string5, "context.getString(R.stri…bscriber_secondary_image)");
        scheduleMessage$default(this, createMessageData$default(this, "1", string, string2, string3, string4, string5, null, null, 192, null), Event.Campaign.WelcomeSubscriberLocalCampaign.INSTANCE.getBatchId(), TAG_WELCOME_SUBSCRIBER, 5L, TimeUnit.MINUTES, null, null, 96, null);
    }
}
