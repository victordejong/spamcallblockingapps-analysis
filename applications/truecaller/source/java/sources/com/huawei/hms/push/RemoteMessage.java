package com.huawei.hms.push;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.push.utils.DateUtil;
import com.huawei.hms.push.utils.JsonUtil;
import com.huawei.hms.support.api.push.PushException;
import com.huawei.hms.support.log.HMSLog;
import java.io.Serializable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/RemoteMessage.class */
public class RemoteMessage implements Parcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new C2424b();
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_NORMAL = 2;
    public static final int PRIORITY_UNKNOWN = 0;

    /* renamed from: a */
    public static final String[] f7678a;

    /* renamed from: b */
    public static final int[] f7679b;

    /* renamed from: c */
    public static final long[] f7680c;

    /* renamed from: d */
    public static final HashMap<String, Object> f7681d;

    /* renamed from: e */
    public static final HashMap<String, Object> f7682e;

    /* renamed from: f */
    public static final HashMap<String, Object> f7683f;

    /* renamed from: g */
    public static final HashMap<String, Object> f7684g;

    /* renamed from: h */
    public static final HashMap<String, Object> f7685h;

    /* renamed from: i */
    public Bundle f7686i;

    /* renamed from: j */
    public Notification f7687j;

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/RemoteMessage$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public final Bundle f7688a;

        /* renamed from: b */
        public final Map<String, String> f7689b = new HashMap();

        public Builder(String str) {
            Bundle bundle = new Bundle();
            this.f7688a = bundle;
            bundle.putString(RemoteMessageConst.f7718TO, str);
        }

        public Builder addData(String str, String str2) {
            if (str != null) {
                this.f7689b.put(str, str2);
                return this;
            }
            throw new IllegalArgumentException("add data failed, key is null.");
        }

        public RemoteMessage build() {
            Bundle bundle = new Bundle();
            JSONObject jSONObject = new JSONObject();
            try {
                for (Map.Entry<String, String> entry : this.f7689b.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
                try {
                    String jSONObject2 = jSONObject.toString();
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put(RemoteMessageConst.COLLAPSE_KEY, this.f7688a.getString(RemoteMessageConst.COLLAPSE_KEY));
                    jSONObject3.put(RemoteMessageConst.TTL, this.f7688a.getInt(RemoteMessageConst.TTL));
                    jSONObject3.put(RemoteMessageConst.SEND_MODE, this.f7688a.getInt(RemoteMessageConst.SEND_MODE));
                    jSONObject3.put(RemoteMessageConst.RECEIPT_MODE, this.f7688a.getInt(RemoteMessageConst.RECEIPT_MODE));
                    JSONObject jSONObject4 = new JSONObject();
                    if (jSONObject.length() != 0) {
                        jSONObject4.put(RemoteMessageConst.DATA, jSONObject2);
                    }
                    jSONObject4.put(RemoteMessageConst.MSGID, this.f7688a.getString(RemoteMessageConst.MSGID));
                    jSONObject3.put(RemoteMessageConst.MessageBody.MSG_CONTENT, jSONObject4);
                    bundle.putByteArray(RemoteMessageConst.MSGBODY, jSONObject3.toString().getBytes(C2448x.f7781a));
                    bundle.putString(RemoteMessageConst.f7718TO, this.f7688a.getString(RemoteMessageConst.f7718TO));
                    bundle.putString("message_type", this.f7688a.getString("message_type"));
                    return new RemoteMessage(bundle);
                } catch (JSONException e) {
                    HMSLog.m37192w("RemoteMessage", "JSONException: parse message body failed.");
                    throw new PushException(PushException.EXCEPTION_SEND_FAILED);
                }
            } catch (JSONException e2) {
                HMSLog.m37192w("RemoteMessage", "JSONException: parse data to json failed.");
                throw new PushException(PushException.EXCEPTION_SEND_FAILED);
            }
        }

        public Builder clearData() {
            this.f7689b.clear();
            return this;
        }

        public Builder setCollapseKey(String str) {
            this.f7688a.putString(RemoteMessageConst.COLLAPSE_KEY, str);
            return this;
        }

        public Builder setData(Map<String, String> map) {
            this.f7689b.clear();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.f7689b.put(entry.getKey(), entry.getValue());
            }
            return this;
        }

        public Builder setMessageId(String str) {
            this.f7688a.putString(RemoteMessageConst.MSGID, str);
            return this;
        }

        public Builder setMessageType(String str) {
            this.f7688a.putString("message_type", str);
            return this;
        }

        public Builder setReceiptMode(int i) {
            if (i == 1 || i == 0) {
                this.f7688a.putInt(RemoteMessageConst.RECEIPT_MODE, i);
                return this;
            }
            throw new IllegalArgumentException("receipt mode can only be 0 or 1.");
        }

        public Builder setSendMode(int i) {
            if (i == 0 || i == 1) {
                this.f7688a.putInt(RemoteMessageConst.SEND_MODE, i);
                return this;
            }
            throw new IllegalArgumentException("send mode can only be 0 or 1.");
        }

        public Builder setTtl(int i) {
            if (i < 1 || i > 1296000) {
                throw new IllegalArgumentException("ttl must be greater than or equal to 1 and less than or equal to 1296000");
            }
            this.f7688a.putInt(RemoteMessageConst.TTL, i);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/RemoteMessage$MessagePriority.class */
    public @interface MessagePriority {
    }

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/RemoteMessage$Notification.class */
    public static class Notification implements Serializable {

        /* renamed from: A */
        public final long[] f7690A;

        /* renamed from: B */
        public final String f7691B;

        /* renamed from: a */
        public final String f7692a;

        /* renamed from: b */
        public final String f7693b;

        /* renamed from: c */
        public final String[] f7694c;

        /* renamed from: d */
        public final String f7695d;

        /* renamed from: e */
        public final String f7696e;

        /* renamed from: f */
        public final String[] f7697f;

        /* renamed from: g */
        public final String f7698g;

        /* renamed from: h */
        public final String f7699h;

        /* renamed from: i */
        public final String f7700i;

        /* renamed from: j */
        public final String f7701j;

        /* renamed from: k */
        public final String f7702k;

        /* renamed from: l */
        public final String f7703l;

        /* renamed from: m */
        public final String f7704m;

        /* renamed from: n */
        public final Uri f7705n;

        /* renamed from: o */
        public final int f7706o;

        /* renamed from: p */
        public final String f7707p;

        /* renamed from: q */
        public final int f7708q;

        /* renamed from: r */
        public final int f7709r;

        /* renamed from: s */
        public final int f7710s;

        /* renamed from: t */
        public final int[] f7711t;

        /* renamed from: u */
        public final String f7712u;

        /* renamed from: v */
        public final int f7713v;

        /* renamed from: w */
        public final String f7714w;

        /* renamed from: x */
        public final int f7715x;

        /* renamed from: y */
        public final String f7716y;

        /* renamed from: z */
        public final String f7717z;

        public Notification(Bundle bundle) {
            this.f7692a = bundle.getString(RemoteMessageConst.Notification.NOTIFY_TITLE);
            this.f7695d = bundle.getString("content");
            this.f7693b = bundle.getString(RemoteMessageConst.Notification.TITLE_LOC_KEY);
            this.f7696e = bundle.getString(RemoteMessageConst.Notification.BODY_LOC_KEY);
            this.f7694c = bundle.getStringArray(RemoteMessageConst.Notification.TITLE_LOC_ARGS);
            this.f7697f = bundle.getStringArray(RemoteMessageConst.Notification.BODY_LOC_ARGS);
            this.f7698g = bundle.getString(RemoteMessageConst.Notification.ICON);
            this.f7701j = bundle.getString(RemoteMessageConst.Notification.COLOR);
            this.f7699h = bundle.getString(RemoteMessageConst.Notification.SOUND);
            this.f7700i = bundle.getString(RemoteMessageConst.Notification.TAG);
            this.f7704m = bundle.getString(RemoteMessageConst.Notification.CHANNEL_ID);
            this.f7702k = bundle.getString(RemoteMessageConst.Notification.CLICK_ACTION);
            this.f7703l = bundle.getString(RemoteMessageConst.Notification.INTENT_URI);
            this.f7706o = bundle.getInt(RemoteMessageConst.Notification.NOTIFY_ID);
            String string = bundle.getString("url");
            this.f7705n = !TextUtils.isEmpty(string) ? Uri.parse(string) : null;
            this.f7707p = bundle.getString(RemoteMessageConst.Notification.NOTIFY_ICON);
            this.f7708q = bundle.getInt(RemoteMessageConst.Notification.DEFAULT_LIGHT_SETTINGS);
            this.f7709r = bundle.getInt(RemoteMessageConst.Notification.DEFAULT_SOUND);
            this.f7710s = bundle.getInt(RemoteMessageConst.Notification.DEFAULT_VIBRATE_TIMINGS);
            this.f7711t = bundle.getIntArray(RemoteMessageConst.Notification.LIGHT_SETTINGS);
            this.f7712u = bundle.getString(RemoteMessageConst.Notification.WHEN);
            this.f7713v = bundle.getInt(RemoteMessageConst.Notification.LOCAL_ONLY);
            this.f7714w = bundle.getString(RemoteMessageConst.Notification.BADGE_SET_NUM, null);
            this.f7715x = bundle.getInt(RemoteMessageConst.Notification.AUTO_CANCEL);
            this.f7716y = bundle.getString(RemoteMessageConst.Notification.PRIORITY, null);
            this.f7717z = bundle.getString(RemoteMessageConst.Notification.TICKER);
            this.f7690A = bundle.getLongArray(RemoteMessageConst.Notification.VIBRATE_TIMINGS);
            this.f7691B = bundle.getString(RemoteMessageConst.Notification.VISIBILITY, null);
        }

        public /* synthetic */ Notification(Bundle bundle, C2424b c2424b) {
            this(bundle);
        }

        /* renamed from: a */
        public final Integer m37357a(String str) {
            Integer valueOf;
            if (str != null) {
                try {
                    valueOf = Integer.valueOf(str);
                } catch (NumberFormatException e) {
                    HMSLog.m37192w("RemoteMessage", "NumberFormatException: get " + str + " failed.");
                }
                return valueOf;
            }
            valueOf = null;
            return valueOf;
        }

        public Integer getBadgeNumber() {
            return m37357a(this.f7714w);
        }

        public String getBody() {
            return this.f7695d;
        }

        public String[] getBodyLocalizationArgs() {
            String[] strArr = this.f7697f;
            return strArr == null ? new String[0] : (String[]) strArr.clone();
        }

        public String getBodyLocalizationKey() {
            return this.f7696e;
        }

        public String getChannelId() {
            return this.f7704m;
        }

        public String getClickAction() {
            return this.f7702k;
        }

        public String getColor() {
            return this.f7701j;
        }

        public String getIcon() {
            return this.f7698g;
        }

        public Uri getImageUrl() {
            String str = this.f7707p;
            return str == null ? null : Uri.parse(str);
        }

        public Integer getImportance() {
            return m37357a(this.f7716y);
        }

        public String getIntentUri() {
            return this.f7703l;
        }

        public int[] getLightSettings() {
            int[] iArr = this.f7711t;
            return iArr == null ? new int[0] : (int[]) iArr.clone();
        }

        public Uri getLink() {
            return this.f7705n;
        }

        public int getNotifyId() {
            return this.f7706o;
        }

        public String getSound() {
            return this.f7699h;
        }

        public String getTag() {
            return this.f7700i;
        }

        public String getTicker() {
            return this.f7717z;
        }

        public String getTitle() {
            return this.f7692a;
        }

        public String[] getTitleLocalizationArgs() {
            String[] strArr = this.f7694c;
            return strArr == null ? new String[0] : (String[]) strArr.clone();
        }

        public String getTitleLocalizationKey() {
            return this.f7693b;
        }

        public long[] getVibrateConfig() {
            long[] jArr = this.f7690A;
            return jArr == null ? new long[0] : (long[]) jArr.clone();
        }

        public Integer getVisibility() {
            return m37357a(this.f7691B);
        }

        public Long getWhen() {
            Long valueOf;
            if (!TextUtils.isEmpty(this.f7712u)) {
                try {
                    valueOf = Long.valueOf(DateUtil.parseUtcToMillisecond(this.f7712u));
                } catch (StringIndexOutOfBoundsException e) {
                    HMSLog.m37192w("RemoteMessage", "StringIndexOutOfBoundsException: parse when failed.");
                } catch (ParseException e2) {
                    HMSLog.m37192w("RemoteMessage", "ParseException: parse when failed.");
                }
                return valueOf;
            }
            valueOf = null;
            return valueOf;
        }

        public boolean isAutoCancel() {
            boolean z = true;
            if (this.f7715x != 1) {
                z = false;
            }
            return z;
        }

        public boolean isDefaultLight() {
            boolean z = true;
            if (this.f7708q != 1) {
                z = false;
            }
            return z;
        }

        public boolean isDefaultSound() {
            boolean z = true;
            if (this.f7709r != 1) {
                z = false;
            }
            return z;
        }

        public boolean isDefaultVibrate() {
            boolean z = true;
            if (this.f7710s != 1) {
                z = false;
            }
            return z;
        }

        public boolean isLocalOnly() {
            boolean z = true;
            if (this.f7713v != 1) {
                z = false;
            }
            return z;
        }
    }

    static {
        String[] strArr = new String[0];
        f7678a = strArr;
        int[] iArr = new int[0];
        f7679b = iArr;
        long[] jArr = new long[0];
        f7680c = jArr;
        HashMap<String, Object> hashMap = new HashMap<>(8);
        f7681d = hashMap;
        hashMap.put(RemoteMessageConst.FROM, "");
        hashMap.put(RemoteMessageConst.COLLAPSE_KEY, "");
        hashMap.put(RemoteMessageConst.SEND_TIME, "");
        hashMap.put(RemoteMessageConst.TTL, Integer.valueOf((int) RemoteMessageConst.DEFAULT_TTL));
        hashMap.put(RemoteMessageConst.URGENCY, 2);
        hashMap.put(RemoteMessageConst.ORI_URGENCY, 2);
        hashMap.put(RemoteMessageConst.SEND_MODE, 0);
        hashMap.put(RemoteMessageConst.RECEIPT_MODE, 0);
        HashMap<String, Object> hashMap2 = new HashMap<>(8);
        f7682e = hashMap2;
        hashMap2.put(RemoteMessageConst.Notification.TITLE_LOC_KEY, "");
        hashMap2.put(RemoteMessageConst.Notification.BODY_LOC_KEY, "");
        hashMap2.put(RemoteMessageConst.Notification.NOTIFY_ICON, "");
        hashMap2.put(RemoteMessageConst.Notification.TITLE_LOC_ARGS, strArr);
        hashMap2.put(RemoteMessageConst.Notification.BODY_LOC_ARGS, strArr);
        hashMap2.put(RemoteMessageConst.Notification.TICKER, "");
        hashMap2.put(RemoteMessageConst.Notification.NOTIFY_TITLE, "");
        hashMap2.put("content", "");
        HashMap<String, Object> hashMap3 = new HashMap<>(8);
        f7683f = hashMap3;
        hashMap3.put(RemoteMessageConst.Notification.ICON, "");
        hashMap3.put(RemoteMessageConst.Notification.COLOR, "");
        hashMap3.put(RemoteMessageConst.Notification.SOUND, "");
        hashMap3.put(RemoteMessageConst.Notification.DEFAULT_LIGHT_SETTINGS, 1);
        hashMap3.put(RemoteMessageConst.Notification.LIGHT_SETTINGS, iArr);
        hashMap3.put(RemoteMessageConst.Notification.DEFAULT_SOUND, 1);
        hashMap3.put(RemoteMessageConst.Notification.DEFAULT_VIBRATE_TIMINGS, 1);
        hashMap3.put(RemoteMessageConst.Notification.VIBRATE_TIMINGS, jArr);
        HashMap<String, Object> hashMap4 = new HashMap<>(8);
        f7684g = hashMap4;
        hashMap4.put(RemoteMessageConst.Notification.TAG, "");
        hashMap4.put(RemoteMessageConst.Notification.WHEN, "");
        hashMap4.put(RemoteMessageConst.Notification.LOCAL_ONLY, 1);
        hashMap4.put(RemoteMessageConst.Notification.BADGE_SET_NUM, "");
        hashMap4.put(RemoteMessageConst.Notification.PRIORITY, "");
        hashMap4.put(RemoteMessageConst.Notification.AUTO_CANCEL, 1);
        hashMap4.put(RemoteMessageConst.Notification.VISIBILITY, "");
        hashMap4.put(RemoteMessageConst.Notification.CHANNEL_ID, "");
        HashMap<String, Object> hashMap5 = new HashMap<>(3);
        f7685h = hashMap5;
        hashMap5.put(RemoteMessageConst.Notification.CLICK_ACTION, "");
        hashMap5.put(RemoteMessageConst.Notification.INTENT_URI, "");
        hashMap5.put("url", "");
    }

    public RemoteMessage(Bundle bundle) {
        this.f7686i = m37364a(bundle);
    }

    public RemoteMessage(Parcel parcel) {
        this.f7686i = parcel.readBundle();
        this.f7687j = (Notification) parcel.readSerializable();
    }

    /* renamed from: a */
    public static JSONObject m37363a(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(RemoteMessageConst.MessageBody.MSG_CONTENT);
        }
        return null;
    }

    /* renamed from: b */
    public static JSONObject m37361b(Bundle bundle) {
        try {
            return new JSONObject(AbstractC2447w.m37232a(bundle.getByteArray(RemoteMessageConst.MSGBODY)));
        } catch (JSONException e) {
            HMSLog.m37192w("RemoteMessage", "JSONException:parse message body failed.");
            return null;
        }
    }

    /* renamed from: b */
    public static JSONObject m37360b(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(RemoteMessageConst.MessageBody.NOTIFY_DETAIL);
        }
        return null;
    }

    /* renamed from: c */
    public static JSONObject m37359c(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(RemoteMessageConst.MessageBody.PARAM);
        }
        return null;
    }

    /* renamed from: d */
    public static JSONObject m37358d(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(RemoteMessageConst.MessageBody.PS_CONTENT);
        }
        return null;
    }

    /* renamed from: a */
    public final Bundle m37364a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        JSONObject m37361b = m37361b(bundle);
        JSONObject m37363a = m37363a(m37361b);
        String string = JsonUtil.getString(m37363a, RemoteMessageConst.DATA, null);
        bundle2.putString(RemoteMessageConst.ANALYTIC_INFO, JsonUtil.getString(m37363a, RemoteMessageConst.ANALYTIC_INFO, null));
        bundle2.putString(RemoteMessageConst.DEVICE_TOKEN, bundle.getString(RemoteMessageConst.DEVICE_TOKEN));
        JSONObject m37358d = m37358d(m37363a);
        JSONObject m37360b = m37360b(m37358d);
        JSONObject m37359c = m37359c(m37358d);
        if (bundle.getInt(RemoteMessageConst.INPUT_TYPE) == 1 && AbstractC2441s.m37248a(m37363a, m37358d, string)) {
            bundle2.putString(RemoteMessageConst.DATA, AbstractC2447w.m37232a(bundle.getByteArray(RemoteMessageConst.MSGBODY)));
            return bundle2;
        }
        String string2 = bundle.getString(RemoteMessageConst.f7718TO);
        String string3 = bundle.getString("message_type");
        String string4 = JsonUtil.getString(m37363a, RemoteMessageConst.MSGID, null);
        bundle2.putString(RemoteMessageConst.f7718TO, string2);
        bundle2.putString(RemoteMessageConst.DATA, string);
        bundle2.putString(RemoteMessageConst.MSGID, string4);
        bundle2.putString("message_type", string3);
        JsonUtil.transferJsonObjectToBundle(m37361b, bundle2, f7681d);
        bundle2.putBundle(RemoteMessageConst.NOTIFICATION, m37362a(m37361b, m37363a, m37358d, m37360b, m37359c));
        return bundle2;
    }

    /* renamed from: a */
    public final Bundle m37362a(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, JSONObject jSONObject5) {
        Bundle bundle = new Bundle();
        JsonUtil.transferJsonObjectToBundle(jSONObject3, bundle, f7682e);
        JsonUtil.transferJsonObjectToBundle(jSONObject4, bundle, f7683f);
        JsonUtil.transferJsonObjectToBundle(jSONObject, bundle, f7684g);
        JsonUtil.transferJsonObjectToBundle(jSONObject5, bundle, f7685h);
        bundle.putInt(RemoteMessageConst.Notification.NOTIFY_ID, JsonUtil.getInt(jSONObject2, RemoteMessageConst.Notification.NOTIFY_ID, 0));
        return bundle;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public String getAnalyticInfo() {
        return this.f7686i.getString(RemoteMessageConst.ANALYTIC_INFO);
    }

    public Map<String, String> getAnalyticInfoMap() {
        HashMap hashMap = new HashMap();
        String string = this.f7686i.getString(RemoteMessageConst.ANALYTIC_INFO);
        if (string != null && !string.trim().isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String valueOf = String.valueOf(keys.next());
                    hashMap.put(valueOf, String.valueOf(jSONObject.get(valueOf)));
                }
            } catch (JSONException e) {
                HMSLog.m37192w("RemoteMessage", "JSONException: get analyticInfo from map failed.");
            }
        }
        return hashMap;
    }

    public String getCollapseKey() {
        return this.f7686i.getString(RemoteMessageConst.COLLAPSE_KEY);
    }

    public String getData() {
        return this.f7686i.getString(RemoteMessageConst.DATA);
    }

    public Map<String, String> getDataOfMap() {
        HashMap hashMap = new HashMap();
        String string = this.f7686i.getString(RemoteMessageConst.DATA);
        if (string != null && !string.trim().isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String valueOf = String.valueOf(keys.next());
                    hashMap.put(valueOf, String.valueOf(jSONObject.get(valueOf)));
                }
            } catch (JSONException e) {
                HMSLog.m37192w("RemoteMessage", "JSONException: get data from map failed");
            }
        }
        return hashMap;
    }

    public String getFrom() {
        return this.f7686i.getString(RemoteMessageConst.FROM);
    }

    public String getMessageId() {
        return this.f7686i.getString(RemoteMessageConst.MSGID);
    }

    public String getMessageType() {
        return this.f7686i.getString("message_type");
    }

    public Notification getNotification() {
        Bundle bundle = this.f7686i.getBundle(RemoteMessageConst.NOTIFICATION);
        if (this.f7687j == null && bundle != null) {
            this.f7687j = new Notification(bundle, null);
        }
        if (this.f7687j == null) {
            this.f7687j = new Notification(new Bundle(), null);
        }
        return this.f7687j;
    }

    public int getOriginalUrgency() {
        int i = this.f7686i.getInt(RemoteMessageConst.ORI_URGENCY);
        int i2 = i;
        if (i != 1) {
            i2 = i;
            if (i != 2) {
                i2 = 0;
            }
        }
        return i2;
    }

    public int getReceiptMode() {
        return this.f7686i.getInt(RemoteMessageConst.RECEIPT_MODE);
    }

    public int getSendMode() {
        return this.f7686i.getInt(RemoteMessageConst.SEND_MODE);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    public long getSentTime() {
        char c = 0;
        try {
            String string = this.f7686i.getString(RemoteMessageConst.SEND_TIME);
            if (!TextUtils.isEmpty(string)) {
                c = Long.parseLong(string);
            }
            return c;
        } catch (NumberFormatException e) {
            HMSLog.m37192w("RemoteMessage", "NumberFormatException: get sendTime error.");
            return 0L;
        }
    }

    public String getTo() {
        return this.f7686i.getString(RemoteMessageConst.f7718TO);
    }

    public String getToken() {
        return this.f7686i.getString(RemoteMessageConst.DEVICE_TOKEN);
    }

    public int getTtl() {
        return this.f7686i.getInt(RemoteMessageConst.TTL);
    }

    public int getUrgency() {
        int i = this.f7686i.getInt(RemoteMessageConst.URGENCY);
        int i2 = i;
        if (i != 1) {
            i2 = i;
            if (i != 2) {
                i2 = 0;
            }
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f7686i);
        parcel.writeSerializable(this.f7687j);
    }
}
