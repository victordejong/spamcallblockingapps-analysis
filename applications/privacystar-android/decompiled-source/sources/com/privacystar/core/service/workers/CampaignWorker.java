package com.privacystar.core.service.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.helper.MessageRealm;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.CampaignUtil;
import com.privacystar.core.util.NotificationUtil;
import com.privacystar.core.util.Text;
import io.realm.Realm;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p013io.CloseableKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m254d2 = {"Lcom/privacystar/core/service/workers/CampaignWorker;", "Landroidx/work/Worker;", "context", "Landroid/content/Context;", "params", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "getContext", "()Landroid/content/Context;", "doWork", "Landroidx/work/ListenableWorker$Result;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/workers/CampaignWorker.class */
public final class CampaignWorker extends Worker {
    @NotNull
    private final Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignWorker(@NotNull Context context, @NotNull WorkerParameters params) {
        super(context, params);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(params, "params");
        this.context = context;
    }

    @Override // androidx.work.Worker
    @NotNull
    public ListenableWorker.Result doWork() {
        if (!PreferenceUtil.getWalkthroughCompleted()) {
            ListenableWorker.Result success = ListenableWorker.Result.success();
            Intrinsics.checkExpressionValueIsNotNull(success, "Result.success()");
            return success;
        }
        String string = getInputData().getString(CampaignUtil.FIELD_LOGO);
        if (string == null) {
            string = "1";
        }
        Intrinsics.checkExpressionValueIsNotNull(string, "inputData.getString(Camp…gnUtil.FIELD_LOGO) ?: \"1\"");
        String string2 = getInputData().getString(CampaignUtil.FIELD_TITLE);
        if (string2 == null) {
            string2 = "";
        }
        Intrinsics.checkExpressionValueIsNotNull(string2, "inputData.getString(Camp…gnUtil.FIELD_TITLE) ?: \"\"");
        String string3 = getInputData().getString("Message");
        if (string3 == null) {
            string3 = "";
        }
        Intrinsics.checkExpressionValueIsNotNull(string3, "inputData.getString(Camp…Util.FIELD_MESSAGE) ?: \"\"");
        String string4 = getInputData().getString(CampaignUtil.FIELD_SECONDARY_IMAGE);
        if (string4 == null) {
            string4 = "";
        }
        Intrinsics.checkExpressionValueIsNotNull(string4, "inputData.getString(Camp…LD_SECONDARY_IMAGE) ?: \"\"");
        String string5 = getInputData().getString(CampaignUtil.FIELD_BUTTON1_TEXT);
        if (string5 == null) {
            string5 = "";
        }
        Intrinsics.checkExpressionValueIsNotNull(string5, "inputData.getString(Camp…FIELD_BUTTON1_TEXT) ?: \"\"");
        String string6 = getInputData().getString(CampaignUtil.FIELD_BUTTON1_ACTION);
        if (string6 == null) {
            string6 = "";
        }
        Intrinsics.checkExpressionValueIsNotNull(string6, "inputData.getString(Camp…ELD_BUTTON1_ACTION) ?: \"\"");
        String string7 = getInputData().getString(CampaignUtil.FIELD_BUTTON2_TEXT);
        if (string7 == null) {
            string7 = "";
        }
        Intrinsics.checkExpressionValueIsNotNull(string7, "inputData.getString(Camp…FIELD_BUTTON2_TEXT) ?: \"\"");
        String string8 = getInputData().getString(CampaignUtil.FIELD_BUTTON2_ACTION);
        if (string8 == null) {
            string8 = "";
        }
        Intrinsics.checkExpressionValueIsNotNull(string8, "inputData.getString(Camp…ELD_BUTTON2_ACTION) ?: \"\"");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(CampaignUtil.FIELD_LOGO, string);
            jSONObject.put(CampaignUtil.FIELD_TITLE, string2);
            jSONObject.put("Message", string3);
            jSONObject.put(CampaignUtil.FIELD_SECONDARY_IMAGE, string4);
            jSONObject.put(CampaignUtil.FIELD_BUTTON1_TEXT, string5);
            jSONObject.put(CampaignUtil.FIELD_BUTTON1_ACTION, string6);
            jSONObject.put(CampaignUtil.FIELD_BUTTON2_TEXT, string7);
            jSONObject.put(CampaignUtil.FIELD_BUTTON2_ACTION, string8);
            String string9 = getInputData().getString(CampaignUtil.FIELD_LOCAL_CAMPAIGN_BATCH_ID);
            String string10 = getInputData().getString(CampaignUtil.FIELD_NOTIFICATION_MESSAGE);
            if (string10 != null) {
                string2 = string10;
            }
            Intrinsics.checkExpressionValueIsNotNull(string2, "inputData.getString(Camp…ICATION_MESSAGE) ?: title");
            String string11 = getInputData().getString(CampaignUtil.FIELD_NOTIFICATION_TITLE);
            if (string11 == null) {
                string11 = this.context.getString(2131755161);
            }
            String convertToHexString = Text.convertToHexString(jSONObject.toString());
            int i = getInputData().getInt(CampaignUtil.FIELD_TTL, 45);
            Realm defaultInstance = Realm.getDefaultInstance();
            Throwable th = null;
            try {
                MessageRealm.storeExpiringMessage(defaultInstance, string9, convertToHexString, string11, string2, i);
                StringBuilder sb = new StringBuilder();
                sb.append("message:\n");
                sb.append(string2);
                sb.append("\nhas been stored");
                Timber.m37d(sb.toString(), new Object[0]);
                NotificationUtil.showPushMessageNotification(PSApplication.context(), string9, string11, string2);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("notification:\n");
                sb2.append(string2);
                sb2.append("\n has been displayed");
                Timber.m37d(sb2.toString(), new Object[0]);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(defaultInstance, th);
                if (string9 != null) {
                    Timber.m37d("batchId = " + string9, new Object[0]);
                    AnalyticsManager.INSTANCE.fire(Event.Campaign.Companion.valueOf(string9).getSendEvent());
                }
                ListenableWorker.Result success2 = ListenableWorker.Result.success();
                Intrinsics.checkExpressionValueIsNotNull(success2, "Result.success()");
                return success2;
            } finally {
                try {
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (JSONException e) {
            Timber.m37d("JSONException", new Object[0]);
            ListenableWorker.Result retry = ListenableWorker.Result.retry();
            Intrinsics.checkExpressionValueIsNotNull(retry, "Result.retry()");
            return retry;
        }
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }
}
