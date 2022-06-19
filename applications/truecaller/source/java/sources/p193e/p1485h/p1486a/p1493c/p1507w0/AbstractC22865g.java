package p193e.p1485h.p1486a.p1493c.p1507w0;

import com.mopub.common.DataKeys;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.h.a.c.w0.g */
/* loaded from: classes-dex2jar.jar:e/h/a/c/w0/g.class */
public interface AbstractC22865g {

    /* renamed from: a */
    public static final String f63475a = EnumC22866a.FCM.toString();

    /* renamed from: e.h.a.c.w0.g$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/w0/g$a.class */
    public enum EnumC22866a {
        FCM("fcm", "fcm_token", "com.clevertap.android.sdk.pushnotification.fcm.FcmPushProvider", "com.google.firebase.messaging.FirebaseMessagingService"),
        XPS("xps", "xps_token", "com.clevertap.android.xps.XiaomiPushProvider", "com.xiaomi.mipush.sdk.MiPushClient"),
        HPS("hps", "hps_token", "com.clevertap.android.hms.HmsPushProvider", "com.huawei.hms.push.HmsMessageService"),
        BPS("bps", "bps_token", "com.clevertap.android.bps.BaiduPushProvider", "com.baidu.android.pushservice.PushMessageReceiver"),
        ADM(DataKeys.ADM_KEY, "adm_token", "com.clevertap.android.adm.AmazonPushProvider", "com.amazon.device.messaging.ADM");
        

        /* renamed from: a */
        public final String f63482a;

        /* renamed from: b */
        public final String f63483b;

        /* renamed from: c */
        public final String f63484c;

        /* renamed from: d */
        public final String f63485d;

        EnumC22866a(String str, String str2, String str3, String str4) {
            this.f63485d = str;
            this.f63484c = str2;
            this.f63482a = str3;
            this.f63483b = str4;
        }

        @Override // java.lang.Enum
        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(" [PushType:");
            m8728C.append(name());
            m8728C.append("] ");
            return m8728C.toString();
        }
    }
}
