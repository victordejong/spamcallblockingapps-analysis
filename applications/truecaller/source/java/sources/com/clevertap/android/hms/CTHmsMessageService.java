package com.clevertap.android.hms;

import android.content.Context;
import com.huawei.hms.push.HmsMessageService;
import com.huawei.hms.push.RemoteMessage;
import java.util.Objects;
import p193e.p1485h.p1486a.p1487a.AbstractC22668b;
import p193e.p1485h.p1486a.p1487a.AbstractC22671e;
import p193e.p1485h.p1486a.p1487a.C22667a;
import p193e.p1485h.p1486a.p1487a.C22669c;
import p193e.p1485h.p1486a.p1493c.C22773p;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22865g;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/hms/CTHmsMessageService.class */
public class CTHmsMessageService extends HmsMessageService {

    /* renamed from: b */
    public AbstractC22671e f2150b = new C22667a(new C22669c());

    @Override // com.huawei.hms.push.HmsMessageService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        super.onMessageReceived(remoteMessage);
        String str = AbstractC22668b.f62733a;
        ((C22667a) this.f2150b).m7982a(getApplicationContext(), remoteMessage);
    }

    @Override // com.huawei.hms.push.HmsMessageService
    public void onNewToken(String str) {
        super.onNewToken(str);
        String str2 = AbstractC22668b.f62733a;
        AbstractC22671e abstractC22671e = this.f2150b;
        Context applicationContext = getApplicationContext();
        Objects.requireNonNull((C22667a) abstractC22671e);
        try {
            C22773p.m7782s(applicationContext, str, AbstractC22865g.EnumC22866a.HPS);
        } catch (Throwable th) {
            String str3 = AbstractC22668b.f62733a;
        }
    }
}
