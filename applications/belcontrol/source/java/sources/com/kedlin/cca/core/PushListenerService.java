package com.kedlin.cca.core;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.InstanceIdResult;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import java.util.HashMap;
import java.util.Map;
import p000.md1;
import p000.r71;
import p000.w91;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/PushListenerService.class */
public class PushListenerService extends FirebaseMessagingService {

    /* renamed from: a */
    public static HashMap<md1.EnumC1474c, Class<?>> f3702a;

    /* renamed from: b */
    public static final Object f3703b = new Object();

    /* renamed from: com.kedlin.cca.core.PushListenerService$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/PushListenerService$a.class */
    public static final class C0634a implements OnSuccessListener<InstanceIdResult> {
        /* renamed from: a */
        public void onSuccess(InstanceIdResult instanceIdResult) {
            PushListenerService.m4389c(instanceIdResult.getToken());
        }
    }

    /* renamed from: com.kedlin.cca.core.PushListenerService$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/PushListenerService$b.class */
    public static final class C0635b implements OnCompleteListener<Void> {
        public void onComplete(Task<Void> task) {
            task.isSuccessful();
        }
    }

    /* renamed from: com.kedlin.cca.core.PushListenerService$c */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/PushListenerService$c.class */
    public static final class RunnableC0636c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f3704a;

        public RunnableC0636c(String str) {
            this.f3704a = str;
        }

        /* renamed from: a */
        public final void m4386a(w91.EnumC1708a enumC1708a) {
            if (!TextUtils.isEmpty(r71.EnumC1638a.f7904K.m687i())) {
                return;
            }
            w91.m276b(this, enumC1708a);
        }

        @Override // java.lang.Runnable
        public void run() {
            r71.EnumC1638a enumC1638a;
            synchronized (PushListenerService.f3703b) {
                try {
                    m4386a(w91.EnumC1708a.PUSH_NOTIFICATION_TOKEN_REQUESTED);
                    String str = "FCM Registration Token: " + this.f3704a;
                    m4386a(w91.EnumC1708a.PUSH_NOTIFICATION_TOKEN_RECEIVED);
                    enumC1638a = r71.EnumC1638a.f7904K;
                } catch (Exception e) {
                    m4386a(w91.EnumC1708a.PUSH_NOTIFICATION_TOKEN_FAILED);
                    j91.m1504l(this, "Failed to send token", e);
                }
                if (enumC1638a.m687i().equals(this.f3704a)) {
                    return;
                }
                if (!k61.m1466C(this.f3704a)) {
                    m4386a(w91.EnumC1708a.PUSH_NOTIFICATION_TOKEN_FAILED_SERVER);
                    j91.m1505k(this, "Failed to send token");
                    return;
                }
                m4386a(w91.EnumC1708a.PUSH_NOTIFICATION_TOKEN_SENT);
                enumC1638a.m681o(this.f3704a);
            }
        }
    }

    static {
        HashMap<md1.EnumC1474c, Class<?>> hashMap = new HashMap<>();
        f3702a = hashMap;
        hashMap.put(md1.EnumC1474c.PUSH_NOTIFICATION, ld1.class);
        f3702a.put(md1.EnumC1474c.PUSH_INFO_REQUEST, kd1.class);
        f3702a.put(md1.EnumC1474c.PUSH_SCREEN_DISPLAY_REQUEST, nd1.class);
        f3702a.put(md1.EnumC1474c.PUSH_DEVICE_TO_SYNCHRONIZE_REQUEST, pd1.class);
        f3702a.put(md1.EnumC1474c.PUSH_DEVICE_TO_SENT_PURCHASE_TOKEN_REQUEST, od1.class);
        f3702a.put(md1.EnumC1474c.PUSH_DEVICE_TO_SYNCHRONIZE_COMMUNITY, jd1.class);
    }

    /* renamed from: b */
    public static void m4390b() {
        FirebaseInstanceId.getInstance().getInstanceId().addOnSuccessListener(new C0634a());
    }

    /* renamed from: c */
    public static void m4389c(String str) {
        if (str == null || str.isEmpty() || r71.m709m().length < 1) {
            return;
        }
        m4388d();
        new Thread(new RunnableC0636c(str)).start();
    }

    /* renamed from: d */
    public static void m4388d() {
        FirebaseMessaging.getInstance().subscribeToTopic("cbl-update").addOnCompleteListener(new C0635b());
    }

    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    public void onMessageReceived(RemoteMessage remoteMessage) {
        Map data = remoteMessage.getData();
        try {
            md1.EnumC1474c m1265b = md1.EnumC1474c.m1265b(Integer.valueOf((String) data.get("type")).intValue());
            Class<?> cls = f3702a.get(m1265b);
            if (cls == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("Payload Type", "" + m1265b.m1266a());
            w91.m275c(this, w91.EnumC1708a.PUSH_NOTIFICATION_RECEIVED_PAYLOAD, bundle);
            md1 md1Var = (md1) cls.newInstance();
            md1Var.f6999a = Long.valueOf((String) data.get("timestamp")).longValue();
            md1Var.m1268i(Integer.valueOf(m1265b.m1266a()));
            md1Var.f7002d = md1.EnumC1472a.m1267a(Integer.valueOf((String) data.get("flags")).intValue());
            md1Var.f7004g = (String) data.get("title");
            md1Var.f7003f = (String) data.get("data");
            md1Var.f7005h = (String) data.get(ImagesContract.URL);
            md1Var.f7000b = data.get("validity") == null ? (char) 0 : Long.valueOf((String) data.get("validity")).longValue();
            HashMap<Integer, md1> m1270g = md1.m1270g();
            md1 md1Var2 = m1270g.get(Integer.valueOf(md1Var.m1273d().m1266a()));
            if (md1Var2 != null && md1Var2.f6999a == md1Var.f6999a) {
                return;
            }
            md1Var.m1274c(md1.EnumC1473b.PUSH_CONTEXT_RECEIVE, null);
            m1270g.put(Integer.valueOf(md1Var.m1273d().m1266a()), md1Var);
            md1.m1269h(m1270g);
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to parse JSON", th);
        }
    }

    public void onNewToken(String str) {
        m4389c(str);
    }
}
