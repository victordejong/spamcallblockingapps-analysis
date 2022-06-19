package com.truecaller.messaging.conversation;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.insights.models.smartnotifications.SmartNotificationMetadata;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.notifications.NotificationIdentifier;
import com.truecaller.notifications.OtpAnalyticsModel;
import com.truecaller.p183ui.TruecallerInit;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p195a.p200c.AbstractC5275f3;
import p193e.p194a.p195a.p200c.AbstractC5383i6;
import p193e.p194a.p195a.p200c.AbstractC5784v3;
import p193e.p194a.p195a.p200c.C5649p3;
import p193e.p194a.p195a.p200c.C5815y3;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.f;
import s1.z.c.l;
import w3.c.a.a.a.h;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018�� \u00182\u00020\u00012\u00020\u0002:\u0001\u0019B\u0007¢\u0006\u0004\b\u0017\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, d2 = {"Lcom/truecaller/messaging/conversation/ConversationActivity;", "Ln3/b/a/h;", "Le/a/a/c/f3;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onBackPressed", "()V", "Landroid/content/Intent;", "intent", "startActivity", "(Landroid/content/Intent;)V", "Le/a/a/c/v3;", "z9", "()Le/a/a/c/v3;", "component", "j4", "(Le/a/a/c/v3;)V", "d", "Le/a/a/c/v3;", "mComponent", "<init>", "e", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/ConversationActivity.class */
public final class ConversationActivity extends AbstractC5383i6 implements AbstractC5275f3 {

    /* renamed from: e */
    public static final C4167a f13017e = new C4167a(null);

    /* renamed from: d */
    public AbstractC5784v3 f13018d;

    /* renamed from: com.truecaller.messaging.conversation.ConversationActivity$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/ConversationActivity$a.class */
    public static final class C4167a {
        public C4167a(f fVar) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v20, types: [android.content.Intent] */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2 */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r2v4, types: [android.content.Intent[]] */
        /* renamed from: c */
        public static PendingIntent m35127c(C4167a c4167a, Context context, long j, long j2, String str, boolean z, boolean z2, boolean z3, List list, NotificationIdentifier notificationIdentifier, String str2, int i) {
            ?? r11 = j2;
            if ((i & 4) != 0) {
                r11 = -1;
            }
            if ((i & 8) != 0) {
                str = null;
            }
            if ((i & 16) != 0) {
                z = false;
            }
            if ((i & 32) != 0) {
                z2 = false;
            }
            if ((i & 64) != 0) {
                z3 = false;
            }
            NotificationIdentifier notificationIdentifier2 = (i & 256) != 0 ? null : notificationIdentifier;
            String str3 = (i & 512) != 0 ? null : str2;
            l.e(context, AnalyticsConstants.CONTEXT);
            InboxTab inboxTab = InboxTab.PERSONAL;
            if (z) {
                inboxTab = InboxTab.PROMOTIONAL;
            } else if (z2) {
                inboxTab = InboxTab.OTHERS;
            }
            Intent m34556ua = TruecallerInit.m34556ua(context, "messages", "notificationIncomingMessage", inboxTab);
            ?? intent = new Intent(context, ConversationActivity.class);
            intent.putExtra("conversation_id", j);
            if (r11 != -1) {
                intent.putExtra("message_id", r11);
            }
            if (str != null) {
                intent.putExtra("launch_source", str);
            }
            if (z) {
                intent.putExtra("filter", 4);
            }
            if (z3) {
                intent.putExtra("open_attachment_picker", true);
            }
            if (notificationIdentifier2 != null) {
                C10480a.m26079E(intent, notificationIdentifier2.f13653a, notificationIdentifier2.f13654b);
            }
            if (str3 != null) {
                C10480a.m26083D(intent, str3);
            }
            PendingIntent activities = PendingIntent.getActivities(context, (int) j, new Intent[]{m34556ua, intent}, 1140850688);
            l.d(activities, "PendingIntent.getActivit…ingIntent.FLAG_IMMUTABLE)");
            return activities;
        }

        /* renamed from: a */
        public final PendingIntent m35129a(Context context, Message message, String str, NotificationIdentifier notificationIdentifier, SmartNotificationMetadata smartNotificationMetadata, OtpAnalyticsModel otpAnalyticsModel) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(message, "message");
            l.e(str, "actionInfo");
            l.e(notificationIdentifier, "identifier");
            Intent m34556ua = TruecallerInit.m34556ua(context, "messages", "notificationIncomingMessage", InboxTab.OTHERS);
            String str2 = otpAnalyticsModel != null ? "otp_notification" : (smartNotificationMetadata == null || !smartNotificationMetadata.isUpdateNotification()) ? "notificationSmartCards" : "updates_notification";
            long j = message.f13381b;
            long j2 = message.f13380a;
            Intent putExtra = new Intent(context, ConversationActivity.class).putExtra("conversation_id", j).putExtra("extra_notification_origin", "extra_smart_notification").putExtra("extra_action_info", str).putExtra("extra_action_type", "click").putExtra("extra_smart_notif_metadata", smartNotificationMetadata).putExtra("extra_otp_analytics_model", otpAnalyticsModel).putExtra("extra_notification_id", notificationIdentifier.f13653a).putExtra("launch_source", str2);
            l.d(putExtra, "Intent(context, Conversa…SOURCE, analyticsContext)");
            if (j2 != -1) {
                putExtra.putExtra("message_id", j2);
            }
            PendingIntent activities = PendingIntent.getActivities(context, 1, new Intent[]{m34556ua, putExtra}, 201326592);
            l.d(activities, "PendingIntent.getActivit…ingIntent.FLAG_IMMUTABLE)");
            return activities;
        }

        /* renamed from: b */
        public final Intent m35128b(Context context, String str, String str2, String str3, String str4) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str, "imId");
            Participant.C3848b c3848b = new Participant.C3848b(3);
            c3848b.f11598e = str;
            c3848b.f11596c = str;
            c3848b.f11605l = str2;
            c3848b.f11606m = str3;
            c3848b.f11600g = str4;
            Participant m35443a = c3848b.m35443a();
            l.d(m35443a, "Participant.Builder(True…\n                .build()");
            Intent putExtra = new Intent(context, ConversationActivity.class).putExtra("participants", new Participant[]{m35443a}).putExtra("is_hidden_number_intent", true);
            l.d(putExtra, "Intent(context, Conversa…DDEN_NUMBER_INTENT, true)");
            return putExtra;
        }

        /* renamed from: d */
        public final Intent m35126d(Participant[] participantArr, boolean z) {
            l.e(participantArr, "participants");
            String[] strArr = new String[participantArr.length];
            int[] iArr = new int[participantArr.length];
            int length = participantArr.length;
            for (int i = 0; i < length; i++) {
                strArr[i] = participantArr[i].f11572e;
                iArr[i] = participantArr[i].f11569b;
            }
            Intent putExtra = new Intent("com.truecaller.OPEN_CONVERSATION").putExtra("normalized_addresses", strArr).putExtra("participant_types", iArr).putExtra("is_bubble_intent", z);
            l.d(putExtra, "Intent(ACTION_OPEN)\n    …E_INTENT, isBubbleIntent)");
            if (Build.VERSION.SDK_INT >= 29) {
                putExtra.setIdentifier(h.q(strArr, ","));
            }
            return putExtra;
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5275f3
    /* renamed from: j4 */
    public void mo33448j4(AbstractC5784v3 abstractC5784v3) {
        l.e(abstractC5784v3, "component");
        this.f13018d = abstractC5784v3;
    }

    public void onBackPressed() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        String str = C5649p3.f18975a;
        C5815y3 m42942K = supportFragmentManager.m42942K(C5649p3.f18975a);
        if (m42942K != null) {
            m42942K.f19484b.mo33324df();
        }
        ConversationActivity.super.onBackPressed();
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f7, code lost:
        if (r10 != false) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.conversation.ConversationActivity.onCreate(android.os.Bundle):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void startActivity(Intent intent) {
        l.e(intent, "intent");
        if (!(getApplicationContext().getPackageManager().queryIntentActivities(intent, 65536).size() > 0)) {
            Toast.makeText(getApplicationContext(), 2131887863, 1).show();
            return;
        }
        Context applicationContext = getApplicationContext();
        if (TextUtils.equals(intent.getAction(), "android.intent.action.VIEW")) {
            String packageName = applicationContext.getPackageName();
            Iterator<ResolveInfo> it = applicationContext.getPackageManager().queryIntentActivities(intent, 0).iterator();
            while (true) {
                if (it.hasNext()) {
                    if (TextUtils.equals(it.next().activityInfo.packageName, packageName)) {
                        intent.setPackage(packageName);
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        ConversationActivity.super.startActivity(intent);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5275f3
    /* renamed from: z9 */
    public AbstractC5784v3 mo33447z9() {
        AbstractC5784v3 abstractC5784v3 = this.f13018d;
        if (abstractC5784v3 != null) {
            Objects.requireNonNull(abstractC5784v3, "null cannot be cast to non-null type com.truecaller.messaging.conversation.ConversationComponent");
            return abstractC5784v3;
        }
        throw new IllegalStateException("Conversation component not set".toString());
    }
}
