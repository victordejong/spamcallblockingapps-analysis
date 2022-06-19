package com.truecaller.fcm;

import android.content.Context;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1113o4.AbstractC18920b;
import p193e.p194a.p1113o4.AbstractC18923e;
import p193e.p194a.p1113o4.C18922d;
import p193e.p194a.p1340w2.C21188a;
import p193e.p194a.p1340w2.C21189b;
import p193e.p194a.p1395y3.AbstractC21785c;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b-\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0017¢\u0006\u0004\b\u000b\u0010\fR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006."}, d2 = {"Lcom/truecaller/fcm/FcmMessageListenerService;", "Lcom/google/firebase/messaging/FirebaseMessagingService;", "Ls1/s;", "onCreate", "()V", "", AnalyticsConstants.TOKEN, "onNewToken", "(Ljava/lang/String;)V", "Lcom/google/firebase/messaging/RemoteMessage;", "remoteMessage", "onMessageReceived", "(Lcom/google/firebase/messaging/RemoteMessage;)V", "Le/a/w2/a;", AbstractC2405c.f7629a, "Le/a/w2/a;", "getAppsFlyerEventsTracker", "()Le/a/w2/a;", "setAppsFlyerEventsTracker", "(Le/a/w2/a;)V", "appsFlyerEventsTracker", "Le/a/o4/b;", C22021b.f61237c, "Le/a/o4/b;", "getPushHandler", "()Le/a/o4/b;", "setPushHandler", "(Le/a/o4/b;)V", "pushHandler", "Le/a/o4/e;", "a", "Le/a/o4/e;", "getPushIdManager", "()Le/a/o4/e;", "setPushIdManager", "(Le/a/o4/e;)V", "pushIdManager", "Le/a/y3/c;", "d", "Le/a/y3/c;", "getFreshChatManager", "()Le/a/y3/c;", "setFreshChatManager", "(Le/a/y3/c;)V", "freshChatManager", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/fcm/FcmMessageListenerService.class */
public final class FcmMessageListenerService extends FirebaseMessagingService {
    @Inject

    /* renamed from: a */
    public AbstractC18923e f11914a;
    @Inject

    /* renamed from: b */
    public AbstractC18920b f11915b;
    @Inject

    /* renamed from: c */
    public C21188a f11916c;
    @Inject

    /* renamed from: d */
    public AbstractC21785c f11917d;

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate() {
        FcmMessageListenerService.super.onCreate();
        AbstractC16444k2.f46188a.m17389a().mo11379n(this);
    }

    public void onMessageReceived(RemoteMessage remoteMessage) {
        l.e(remoteMessage, "remoteMessage");
        l.e(remoteMessage, "$this$hasUninstallKey");
        if (remoteMessage.o2().containsKey("af-uinstall-tracking")) {
            return;
        }
        AbstractC21785c abstractC21785c = this.f11917d;
        if (abstractC21785c == null) {
            l.l("freshChatManager");
            throw null;
        } else if (abstractC21785c.mo9077d(remoteMessage)) {
            AbstractC21785c abstractC21785c2 = this.f11917d;
            if (abstractC21785c2 != null) {
                abstractC21785c2.mo9080a(remoteMessage);
            } else {
                l.l("freshChatManager");
                throw null;
            }
        } else {
            AbstractC18920b abstractC18920b = this.f11915b;
            if (abstractC18920b != null) {
                abstractC18920b.mo14324a(remoteMessage);
            } else {
                l.l("pushHandler");
                throw null;
            }
        }
    }

    public void onNewToken(String str) {
        l.e(str, AnalyticsConstants.TOKEN);
        FcmMessageListenerService.super.onNewToken(str);
        AbstractC18923e abstractC18923e = this.f11914a;
        if (abstractC18923e == null) {
            l.l("pushIdManager");
            throw null;
        }
        abstractC18923e.mo14320c(new C18922d(str, AbstractC12603e.C12604a.f36737c));
        C21188a c21188a = this.f11916c;
        if (c21188a == null) {
            l.l("appsFlyerEventsTracker");
            throw null;
        }
        Objects.requireNonNull(c21188a);
        l.e(str, "firebaseToken");
        C21189b c21189b = C21189b.f59373c;
        Context context = c21188a.f59370a;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "firebaseToken");
        C21189b.m10152a(context).updateServerUninstallToken(context.getApplicationContext(), str);
        AbstractC21785c abstractC21785c = this.f11917d;
        if (abstractC21785c == null) {
            l.l("freshChatManager");
            throw null;
        } else if (!abstractC21785c.mo9078c()) {
        } else {
            AbstractC21785c abstractC21785c2 = this.f11917d;
            if (abstractC21785c2 != null) {
                abstractC21785c2.mo9076e(str);
            } else {
                l.l("freshChatManager");
                throw null;
            }
        }
    }
}
