package com.apptentive.android.sdk.module.metric;

import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.model.Configuration;
import com.apptentive.android.sdk.model.EventPayload;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/metric/MetricModule.class */
public class MetricModule {
    public static void sendError(final Throwable th, final String str, final String str2) {
        if (!ApptentiveHelper.isConversationQueue()) {
            ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.module.metric.MetricModule.2
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    MetricModule.sendError(th, str, str2);
                }
            });
            return;
        }
        EventPayload.EventLabel eventLabel = EventPayload.EventLabel.error;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("thread", Thread.currentThread().getName());
            if (th != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("message", th.getMessage());
                jSONObject2.put("stackTrace", Util.stackTraceAsString(th));
                jSONObject.put("exception", jSONObject2);
            }
            if (str != null) {
                jSONObject.put("description", str);
            }
            if (str2 != null) {
                jSONObject.put("extraData", str2);
            }
            if (Configuration.load().isMetricsEnabled()) {
                ApptentiveLog.m15638v(ApptentiveLogTag.UTIL, "Sending Error Metric: %s, data: %s", eventLabel.getLabelName(), jSONObject.toString());
                sendEvent(new EventPayload(eventLabel.getLabelName(), jSONObject));
            }
        } catch (Exception e) {
            ApptentiveLog.m15634w(ApptentiveLogTag.UTIL, e, "Error creating Error Metric. Nothing we can do but log this.", new Object[0]);
        }
    }

    private static void sendEvent(EventPayload eventPayload) {
        ApptentiveHelper.checkConversationQueue();
        Conversation conversation = ApptentiveInternal.getInstance().getConversation();
        if (conversation != null) {
            conversation.addPayload(eventPayload);
        } else {
            ApptentiveLog.m15635w(ApptentiveLogTag.UTIL, "Unable to send event '%s': no active conversation", eventPayload);
        }
    }

    public static void sendMetric(final EventPayload.EventLabel eventLabel, final String str, final Map<String, String> map) {
        if (!ApptentiveHelper.isConversationQueue()) {
            ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.module.metric.MetricModule.1
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    MetricModule.sendMetric(EventPayload.EventLabel.this, str, map);
                }
            });
        } else if (Configuration.load().isMetricsEnabled()) {
            ApptentiveLog.m15638v(ApptentiveLogTag.UTIL, "Sending Metric: %s, trigger: %s, data: %s", eventLabel.getLabelName(), str, map != null ? map.toString() : "null");
            EventPayload eventPayload = new EventPayload(eventLabel.getLabelName(), str);
            eventPayload.putData(map);
            sendEvent(eventPayload);
        }
    }
}
