package com.apptentive.android.sdk.module.engagement.notification;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.TypedValue;
import androidx.core.app.NotificationCompat;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationDispatchTask;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.engagement.EngagementModule;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interactions;
import com.apptentive.android.sdk.module.engagement.interaction.model.Invocation;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.apptentive.android.sdk.module.engagement.interaction.model.common.Action;
import com.apptentive.android.sdk.module.engagement.interaction.model.common.Actions;
import com.apptentive.android.sdk.module.engagement.interaction.model.common.LaunchInteractionAction;
import com.apptentive.android.sdk.module.engagement.logic.FieldManager;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import com.google.firebase.messaging.Constants;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter.class */
public class NoteInteractionNotificationAdapter implements InteractionNotificationAdapter {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apptentive.android.sdk.module.engagement.notification.NoteInteractionNotificationAdapter$5 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$5.class */
    public static /* synthetic */ class C08415 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$common$Action$Type */
        static final /* synthetic */ int[] f6460xc0751b89;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.Type.values().length];
            f6460xc0751b89 = iArr;
            try {
                iArr[Action.Type.interaction.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6460xc0751b89[Action.Type.dismiss.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6460xc0751b89[Action.Type.unknown.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    protected void actionButtonPressed(final Context context, Intent intent, final TextModalInteraction textModalInteraction) {
        int intExtra = intent.getIntExtra("com.apptentive.notification.extra.ID", -17974612);
        final int intExtra2 = intent.getIntExtra("com.apptentive.notification.extra.note.ACTION_INDEX", Integer.MIN_VALUE);
        final Action action = textModalInteraction.getActions().getAsList().get(intExtra2);
        Action.Type type = action.getType();
        ApptentiveLog.m15638v(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Note Notification button pressed with index %d and action type %s", Integer.valueOf(intExtra2), type.name());
        int i = C08415.f6460xc0751b89[type.ordinal()];
        if (i == 1) {
            context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
            ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(this) { // from class: com.apptentive.android.sdk.module.engagement.notification.NoteInteractionNotificationAdapter.2
                @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                protected boolean execute(Conversation conversation) {
                    String str;
                    Iterator<Invocation> it = ((LaunchInteractionAction) action).getInvocations().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            str = null;
                            break;
                        }
                        Invocation next = it.next();
                        if (next.isCriteriaMet(new FieldManager(context, conversation.getVersionHistory(), conversation.getEventData(), conversation.getPerson(), conversation.getDevice(), conversation.getAppRelease()), true)) {
                            str = next.getInteractionId();
                            ApptentiveLog.m15638v(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Found an Interaction to launch with id %s", str);
                            break;
                        }
                    }
                    Interaction interaction = null;
                    if (str != null) {
                        String interactions = conversation.getInteractions();
                        interaction = null;
                        if (interactions != null) {
                            try {
                                interaction = new Interactions(interactions).getInteraction(str);
                            } catch (JSONException e) {
                                ErrorMetrics.logException(e);
                                interaction = null;
                            }
                        }
                    }
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("action_id", action.getId());
                        jSONObject.put(Constants.ScionAnalytics.PARAM_LABEL, action.getLabel());
                        jSONObject.put("position", intExtra2);
                        jSONObject.put("invoked_interaction_id", interaction == null ? JSONObject.NULL : interaction.getId());
                        jSONObject.put("display_type", textModalInteraction.getDisplayType().name());
                    } catch (JSONException e2) {
                        ApptentiveLog.m15643e(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, e2, "Error creating Event data object.", new Object[0]);
                        ErrorMetrics.logException(e2);
                    }
                    EngagementModule.engageInternal(context, conversation, textModalInteraction, "interaction", jSONObject.toString());
                    if (interaction != null) {
                        ApptentiveLog.m15646d(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Launching interaction from Note Notification action: %s", str);
                        EngagementModule.launchInteraction(context, interaction);
                        return false;
                    }
                    ApptentiveLog.m15635w(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "No Interaction was found to display matching id %s", str);
                    return false;
                }
            }, "choosing and launching Interaction from Note Notification Action");
        } else if (i == 2) {
            final JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("action_id", action.getId());
                jSONObject.put(Constants.ScionAnalytics.PARAM_LABEL, action.getLabel());
                jSONObject.put("position", intExtra2);
                jSONObject.put("display_type", textModalInteraction.getDisplayType().name());
            } catch (JSONException e) {
                ApptentiveLog.m15643e(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, e, "Error creating Event data object.", new Object[0]);
                ErrorMetrics.logException(e);
            }
            ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(this) { // from class: com.apptentive.android.sdk.module.engagement.notification.NoteInteractionNotificationAdapter.3
                @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                protected boolean execute(Conversation conversation) {
                    return EngagementModule.engageInternal(context, conversation, textModalInteraction, "dismiss", jSONObject.toString());
                }
            }, "engage Note Notification dismiss");
        } else if (i == 3) {
            ApptentiveLog.m15635w(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Unknown Note Interaction Notification button action. Can't do anything.", new Object[0]);
        }
        ((NotificationManager) context.getSystemService("notification")).cancel(intExtra);
    }

    protected void actionDelete(final Context context, final TextModalInteraction textModalInteraction) {
        ApptentiveLog.m15638v(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Delete intent received.", new Object[0]);
        final JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("display_type", textModalInteraction.getDisplayType().name());
        } catch (JSONException e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, e, "Error creating Event data object.", new Object[0]);
            ErrorMetrics.logException(e);
        }
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(this) { // from class: com.apptentive.android.sdk.module.engagement.notification.NoteInteractionNotificationAdapter.4
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                return EngagementModule.engageInternal(context, conversation, textModalInteraction, "cancel", jSONObject.toString());
            }
        }, "engage Note Notification cancel");
    }

    protected void actionDisplayNotification(final Context context, String str, final TextModalInteraction textModalInteraction) {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, str);
        builder.setVibrate(new long[]{0, 100, 100, 100, 100, 100});
        builder.setOnlyAlertOnce(true);
        builder.setSmallIcon(C0726R.C0728drawable.apptentive_ic_stat_chat_bubble);
        builder.setWhen(System.currentTimeMillis());
        Intent intent = new Intent(context, ApptentiveNotificationInteractionBroadcastReceiver.class);
        intent.putExtra("com.apptentive.notification.extra.ID", -17974612);
        intent.putExtra("com.apptentive.notification.extra.INTERACTION_TYPE", textModalInteraction.getType().name());
        intent.putExtra("com.apptentive.notification.extra.INTERACTION_DEFINITION", textModalInteraction.toString());
        intent.setAction("com.apptentive.notification.action.DELETE");
        builder.setDeleteIntent(PendingIntent.getBroadcast(context, new Random().nextInt(), intent, 1073741824));
        NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
        if (!StringUtils.isNullOrEmpty(textModalInteraction.getTitle())) {
            builder.setContentTitle(textModalInteraction.getTitle());
            bigTextStyle.m19786r(textModalInteraction.getTitle());
        }
        if (!StringUtils.isNullOrEmpty(textModalInteraction.getBody())) {
            builder.setContentText(textModalInteraction.getBody());
            bigTextStyle.m19787q(textModalInteraction.getBody());
        }
        builder.setStyle(bigTextStyle);
        Actions actions = textModalInteraction.getActions();
        if (actions != null) {
            List<Action> asList = actions.getAsList();
            for (int i = 0; i < asList.size(); i++) {
                Action action = asList.get(i);
                if (i > 3) {
                    ApptentiveLog.m15646d(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Can't have more than 3 buttons on a Note.", new Object[0]);
                    return;
                }
                Action.Type type = action.getType();
                Intent intent2 = new Intent(context, ApptentiveNotificationInteractionBroadcastReceiver.class);
                intent2.putExtra("com.apptentive.notification.extra.ID", -17974612);
                intent2.putExtra("com.apptentive.notification.extra.INTERACTION_TYPE", textModalInteraction.getType().name());
                intent2.putExtra("com.apptentive.notification.extra.INTERACTION_DEFINITION", textModalInteraction.toString());
                intent2.putExtra("com.apptentive.notification.extra.note.ACTION_INDEX", i);
                int i2 = C08415.f6460xc0751b89[type.ordinal()];
                if (i2 == 1 || i2 == 2) {
                    intent2.setAction("com.apptentive.notification.action.note.BUTTON_PRESSED");
                } else if (i2 == 3) {
                    return;
                }
                builder.addAction(new NotificationCompat.Action.Builder(0, action.getLabel(), PendingIntent.getBroadcast(context, new Random().nextInt(), intent2, 1073741824)).m19792a());
            }
        }
        Resources.Theme buildApptentiveInteractionTheme = Util.buildApptentiveInteractionTheme(context);
        if (buildApptentiveInteractionTheme != null) {
            TypedValue typedValue = new TypedValue();
            if (buildApptentiveInteractionTheme.resolveAttribute(C0726R.attr.apptentiveInteractionNotificationSmallIcon, typedValue, true)) {
                builder.setSmallIcon(typedValue.resourceId);
            } else {
                ApptentiveLog.m15646d(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Unable to find icon in theme for setting Notification icon.", new Object[0]);
            }
            TypedValue typedValue2 = new TypedValue();
            if (buildApptentiveInteractionTheme.resolveAttribute(C0726R.attr.apptentiveInteractionNotificationColor, typedValue2, true)) {
                builder.setColor(typedValue2.data);
            } else {
                ApptentiveLog.m15646d(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Unable to find color in theme for setting Notification icon.", new Object[0]);
            }
        } else {
            ApptentiveLog.m15646d(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Unable to build theme for getting Notification icon.", new Object[0]);
        }
        ((NotificationManager) context.getSystemService("notification")).notify(-17974612, builder.build());
        final JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("display_type", textModalInteraction.getDisplayType().name());
        } catch (JSONException e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, e, "Error creating Event data object.", new Object[0]);
            ErrorMetrics.logException(e);
        }
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(this) { // from class: com.apptentive.android.sdk.module.engagement.notification.NoteInteractionNotificationAdapter.1
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                return EngagementModule.engageInternal(context, conversation, textModalInteraction, "launch", jSONObject.toString());
            }
        }, "engage Note Notification launch");
    }

    @Override // com.apptentive.android.sdk.module.engagement.notification.InteractionNotificationAdapter
    public void handleInteractionNotificationAction(Context context, String str, Intent intent) {
        String action = intent.getAction();
        String stringExtra = intent.getStringExtra("com.apptentive.notification.extra.INTERACTION_DEFINITION");
        try {
            TextModalInteraction textModalInteraction = new TextModalInteraction(intent.getStringExtra("com.apptentive.notification.extra.INTERACTION_DEFINITION"));
            if (StringUtils.equal(action, "com.apptentive.notification.action.DISPLAY")) {
                actionDisplayNotification(context, str, textModalInteraction);
            } else if (StringUtils.equal(action, "com.apptentive.notification.action.DELETE")) {
                actionDelete(context, textModalInteraction);
            } else if (StringUtils.equal(action, "com.apptentive.notification.action.note.BUTTON_PRESSED")) {
                actionButtonPressed(context, intent, textModalInteraction);
            } else {
                ApptentiveLog.m15635w(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Unsupported action %s for Interaction type %s", action, textModalInteraction.getType().name());
            }
        } catch (JSONException e) {
            ApptentiveLog.m15635w(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Unable to parse interaction: %s", stringExtra);
            ErrorMetrics.logException(e);
        }
    }
}
