package gogolook.callgogolook2.service;

import com.gogolook.whoscallsdk.core.fcm.WCFirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import kotlin.Metadata;
import p459j.p460a.p582w0.C13987e3;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, m815d2 = {"Lgogolook/callgogolook2/service/FcmService;", "Lcom/gogolook/whoscallsdk/core/fcm/WCFirebaseMessagingService;", "()V", "onMessageReceived", "", "remoteMessage", "Lcom/google/firebase/messaging/RemoteMessage;", "onNewToken", "token", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/service/FcmService.class */
public final class FcmService extends WCFirebaseMessagingService {
    @Override // com.gogolook.whoscallsdk.core.fcm.WCFirebaseMessagingService, com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        C15149k.m377b(remoteMessage, "remoteMessage");
        super.onMessageReceived(remoteMessage);
        C13987e3.m2935a(this, remoteMessage);
    }

    @Override // com.gogolook.whoscallsdk.core.fcm.WCFirebaseMessagingService, com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        C15149k.m377b(str, "token");
        super.onNewToken(str);
    }
}
