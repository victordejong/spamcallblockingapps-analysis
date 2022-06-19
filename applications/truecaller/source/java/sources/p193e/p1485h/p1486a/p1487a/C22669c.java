package p193e.p1485h.p1486a.p1487a;

import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.push.RemoteMessage;
import java.util.Iterator;
import org.json.JSONObject;
import p193e.p1485h.p1486a.p1493c.C22741j0;
import p193e.p1485h.p1486a.p1493c.p1503s0.AbstractC22829b;
/* renamed from: e.h.a.a.c */
/* loaded from: classes-dex2jar.jar:e/h/a/a/c.class */
public class C22669c implements AbstractC22829b<RemoteMessage> {
    @Override // p193e.p1485h.p1486a.p1493c.p1503s0.AbstractC22829b
    /* renamed from: a */
    public Bundle mo7726a(RemoteMessage remoteMessage) {
        Bundle bundle;
        try {
            String data = remoteMessage.getData();
            boolean z = C22741j0.f62977a;
            bundle = new Bundle();
            if (!TextUtils.isEmpty(data)) {
                JSONObject jSONObject = new JSONObject(data);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle.putString(next, jSONObject.getString(next));
                }
            }
            String str = AbstractC22668b.f62733a;
        } catch (Throwable th) {
            th.printStackTrace();
            String str2 = AbstractC22668b.f62733a;
            bundle = null;
        }
        return bundle;
    }
}
