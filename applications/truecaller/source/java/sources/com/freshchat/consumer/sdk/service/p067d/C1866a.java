package com.freshchat.consumer.sdk.service.p067d;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.beans.FlowBusinessHourType;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.Participant;
import com.freshchat.consumer.sdk.beans.Tag;
import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.p048a.C1461a;
import com.freshchat.consumer.sdk.p049c.C1506c;
import com.freshchat.consumer.sdk.p049c.C1512h;
import com.freshchat.consumer.sdk.p049c.C1514j;
import com.freshchat.consumer.sdk.p052e.C1530c;
import com.freshchat.consumer.sdk.p052e.C1531d;
import com.freshchat.consumer.sdk.p052e.C1533f;
import com.freshchat.consumer.sdk.p057j.C1567a;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1612ah;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.service.d.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/d/a.class */
public class C1866a {
    /* renamed from: a */
    private static boolean m39400a(Context context, C1461a c1461a) {
        boolean z;
        JSONObject m41027cm;
        C1506c c1506c;
        JSONArray jSONArray;
        JSONException e;
        if (c1461a.isValid() && c1461a.m41026cn() && (m41027cm = c1461a.m41027cm()) != null) {
            try {
                c1506c = new C1506c(context);
                jSONArray = m41027cm.getJSONArray("channels");
            } catch (JSONException e2) {
            }
            if (jSONArray != null) {
                int length = jSONArray.length();
                ArrayList arrayList = new ArrayList();
                try {
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    for (int i = 0; i < length; i++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            try {
                                long j = jSONObject.getLong(RemoteMessageConst.Notification.CHANNEL_ID);
                                try {
                                    try {
                                        Channel updatedAt = new Channel().setId(j).setName(jSONObject.getString(AnalyticsConstants.NAME)).setPosition(jSONObject.getInt("position")).setChannelType(jSONObject.getString("type")).setIconUrl(jSONObject.optString("iconUrl")).setDefault(jSONObject.getBoolean("defaultChannel")).setRestricted(jSONObject.optBoolean("restricted")).setHidden(jSONObject.optBoolean("hidden")).setUpdatedAt(jSONObject.getLong("updated"));
                                        if (jSONObject.has("operatingHoursId")) {
                                            updatedAt.setOperatingHoursId(jSONObject.getLong("operatingHoursId"));
                                        }
                                        if (jSONObject.has("flowId")) {
                                            updatedAt.setFlowId(jSONObject.getString("flowId"));
                                        }
                                        if (jSONObject.has("flowVersionId")) {
                                            updatedAt.setFlowVersionId(jSONObject.getString("flowVersionId"));
                                        }
                                        if (jSONObject.has("serviceAccountId")) {
                                            updatedAt.setServiceAccountId(jSONObject.getLong("serviceAccountId"));
                                        }
                                        if (jSONObject.has("flowBusinessHourType")) {
                                            updatedAt.setFlowBusinessHourType(FlowBusinessHourType.get(jSONObject.getString("flowBusinessHourType")));
                                        }
                                        if (jSONObject.has("flowMessages")) {
                                            updatedAt.setFlowMessagesJson(jSONObject.getString("flowMessages"));
                                        }
                                        if (jSONObject.has("channelAlias")) {
                                            updatedAt.setChannelAlias(jSONObject.getString("channelAlias"));
                                        }
                                        if (jSONObject.has("serviceAccount")) {
                                            JSONObject jSONObject2 = jSONObject.getJSONObject("serviceAccount");
                                            Participant participant = new Participant();
                                            participant.setFirstName(jSONObject2.getString("firstName"));
                                            if (jSONObject2.has(AnalyticsConstants.NAME)) {
                                                participant.setFirstName(jSONObject2.getString(AnalyticsConstants.NAME));
                                            }
                                            participant.setAlias(jSONObject2.getString("id"));
                                            if (jSONObject2.has("profilePicUrl")) {
                                                participant.setProfilePicUrl(jSONObject2.getString("profilePicUrl"));
                                            }
                                            arrayList2.add(participant);
                                        }
                                        JSONObject optJSONObject = jSONObject.optJSONObject("welcomeMessage");
                                        if (optJSONObject != null) {
                                            Message m39388b = C1869c.m39388b(optJSONObject);
                                            m39388b.setChannelId(j);
                                            try {
                                                m39388b.setRead(true);
                                                m39388b.setAlias(j + "_welcome_message");
                                                m39388b.setMessageUserAlias("agent");
                                                m39388b.setMessageUserType(2);
                                                updatedAt.setLatestOrWelcomeMessage(m39388b);
                                            } catch (JSONException e3) {
                                                e = e3;
                                                C1613ai.m40282e("FRESHCHAT", "Exception occurred", e);
                                            }
                                        }
                                        try {
                                            arrayList.add(updatedAt);
                                            try {
                                                List<Tag> m39375a = C1873f.m39375a(jSONObject.getString(RemoteMessageConst.Notification.CHANNEL_ID), jSONObject.optJSONArray("tags"), Tag.TaggedType.CHANNEL);
                                                if (C1716k.m39902a(m39375a)) {
                                                    try {
                                                        arrayList3.addAll(m39375a);
                                                    } catch (JSONException e4) {
                                                        e = e4;
                                                        C1613ai.m40282e("FRESHCHAT", "Exception occurred", e);
                                                    }
                                                }
                                            } catch (JSONException e5) {
                                                e = e5;
                                            }
                                        } catch (JSONException e6) {
                                            e = e6;
                                        }
                                    } catch (JSONException e7) {
                                        e = e7;
                                    }
                                } catch (JSONException e8) {
                                    e = e8;
                                }
                            } catch (JSONException e9) {
                                e = e9;
                            }
                        } catch (JSONException e10) {
                            e = e10;
                        }
                    }
                    try {
                        new C1514j(context).m40677a(Tag.TaggedType.CHANNEL);
                        c1506c.m40778a(arrayList, arrayList3);
                        if (C1716k.m39902a(arrayList2)) {
                            new C1512h(context).m40704g(arrayList2);
                        }
                        m39399b(context, c1461a);
                        z = C1716k.m39902a(arrayList);
                    } catch (JSONException e11) {
                        C1613ai.m40283e("FRESHCHAT_WARNING", "Error processing channels");
                        z = false;
                        C1460a.m41033g(context);
                        return z;
                    }
                } catch (JSONException e12) {
                }
                C1460a.m41033g(context);
                return z;
            }
        }
        z = false;
        C1460a.m41033g(context);
        return z;
    }

    /* renamed from: b */
    private static Map<String, String> m39398b(C1466e c1466e) {
        String m40992bB = c1466e.m40992bB();
        HashMap hashMap = new HashMap();
        if (C1626as.m40233a(m40992bB)) {
            hashMap.put("If-Modified-Since", m40992bB);
        }
        return hashMap;
    }

    /* renamed from: b */
    private static void m39399b(Context context, C1461a c1461a) {
        C1466e m39396w = m39396w(context);
        m39396w.m40986bH();
        m39396w.m40990bD();
        JSONObject m41027cm = c1461a.m41027cm();
        if (m41027cm.has("contentLocale")) {
            try {
                String string = m41027cm.getString("contentLocale");
                if (C1626as.m40233a(string)) {
                    m39396w.m41014C(string);
                }
            } catch (JSONException e) {
                StringBuilder m8728C = C22128a.m8728C("Channels content locale exception - ");
                m8728C.append(e.toString());
                C1613ai.m40283e("FRESHCHAT_WARNING", m8728C.toString());
            }
        }
        if (c1461a.m41027cm().has("lastModifiedAt")) {
            try {
                m39396w.m41015B(m41027cm.getString("lastModifiedAt"));
            } catch (JSONException e2) {
                C1613ai.m40283e("FRESHCHAT_WARNING", e2.toString());
            }
        }
        m39396w.m41012D(C1612ah.m40289bc(context));
    }

    /* renamed from: v */
    public static boolean m39397v(Context context) {
        boolean z;
        C1594aa.m40342fF();
        try {
            C1531d m40606a = new C1530c(context).m40606a(C1567a.m40503A(context), m39398b(C1466e.m40905i(context)));
            if (m40606a.getStatusCode() == 410) {
                C1533f.m40588o(context, C1530c.m40608a(m40606a));
                z = false;
            } else if (m40606a.getStatusCode() == 200) {
                z = m39400a(context, new C1461a(m40606a.getInputStream()));
            } else {
                z = false;
                if (m40606a.getStatusCode() == 304) {
                    C1466e.m40905i(context).m40986bH();
                    C1466e.m40905i(context).m41012D(C1612ah.m40289bc(context));
                    z = false;
                }
            }
        } catch (DeletedException | Exception e) {
            C1723q.m39823a(e);
            z = false;
        }
        return z;
    }

    /* renamed from: w */
    private static C1466e m39396w(Context context) {
        return C1466e.m40905i(context);
    }
}
