package com.clevertap.android.sdk.pushnotification.fcm;

import android.content.Context;
import android.content.pm.PackageManager;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.google.firebase.messaging.FirebaseMessaging;
import java.util.Objects;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22860b;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22865g;
import p193e.p1485h.p1486a.p1493c.p1507w0.p1508m.AbstractC22876c;
import p193e.p1485h.p1486a.p1493c.p1507w0.p1508m.C22874a;
import p193e.p1485h.p1486a.p1493c.p1507w0.p1508m.C22875b;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/pushnotification/fcm/FcmPushProvider.class */
public class FcmPushProvider implements AbstractC22859a {
    private AbstractC22876c handler;

    public FcmPushProvider(AbstractC22860b abstractC22860b, Context context, CleverTapInstanceConfig cleverTapInstanceConfig) {
        this.handler = new C22875b(abstractC22860b, context, cleverTapInstanceConfig);
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a
    public int getPlatform() {
        return 1;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a
    public AbstractC22865g.EnumC22866a getPushType() {
        Objects.requireNonNull(this.handler);
        return AbstractC22865g.EnumC22866a.FCM;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0036 A[Catch: all -> 0x00c2, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00c2, blocks: (B:3:0x000f, B:5:0x0016, B:11:0x0036, B:12:0x006f, B:14:0x0084), top: B:21:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x006f A[Catch: all -> 0x00c2, TRY_ENTER, TryCatch #0 {all -> 0x00c2, blocks: (B:3:0x000f, B:5:0x0016, B:11:0x0036, B:12:0x006f, B:14:0x0084), top: B:21:0x000f }] */
    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isAvailable() {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.clevertap.android.sdk.pushnotification.fcm.FcmPushProvider.isAvailable():boolean");
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a
    public boolean isSupported() {
        boolean z;
        boolean z2;
        Context context = ((C22875b) this.handler).f63513b;
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            z = true;
        } catch (PackageManager.NameNotFoundException e) {
            z = false;
        }
        boolean z3 = true;
        if (!z) {
            try {
                context.getPackageManager().getPackageInfo("com.google.market", 0);
                z2 = true;
            } catch (PackageManager.NameNotFoundException e2) {
                z2 = false;
            }
            z3 = z2;
        }
        return z3;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a
    public int minSDKSupportVersionCode() {
        return 0;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a
    public void requestToken() {
        C22875b c22875b = (C22875b) this.handler;
        Objects.requireNonNull(c22875b);
        try {
            CleverTapInstanceConfig cleverTapInstanceConfig = c22875b.f63512a;
            cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("PushProvider"), AbstractC22865g.f63475a + "Requesting FCM token using googleservices.json");
            FirebaseMessaging.m38318c().m38315f().m38535c(new C22874a(c22875b));
        } catch (Throwable th) {
            CleverTapInstanceConfig cleverTapInstanceConfig2 = c22875b.f63512a;
            String str = AbstractC22865g.f63475a;
            C22735g0 c22735g0 = cleverTapInstanceConfig2.f2253n;
            cleverTapInstanceConfig2.m42082a("PushProvider");
            Objects.requireNonNull(c22735g0);
            c22875b.f63514c.mo7660a(null, AbstractC22865g.EnumC22866a.FCM);
        }
    }

    public void setHandler(AbstractC22876c abstractC22876c) {
        this.handler = abstractC22876c;
    }
}
