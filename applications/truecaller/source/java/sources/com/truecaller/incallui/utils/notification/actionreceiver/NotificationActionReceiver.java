package com.truecaller.incallui.utils.notification.actionreceiver;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callrecording.analytics.RecordingAnalyticsSource;
import com.truecaller.incallui.utils.audio.AudioRoute;
import com.truecaller.incallui.utils.notification.NotificationUIEvent;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p717f.p734z.p736n0.C13843a;
import p193e.p194a.p717f.p734z.p737o0.p738b.AbstractC13846a;
import p193e.p194a.p717f.p734z.p737o0.p738b.AbstractC13847b;
import p193e.p194a.p717f.p734z.p737o0.p738b.C13848c;
import q3.a.w2.r;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u000e\u0010\u000bJ#\u0010\b\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver;", "Landroid/content/BroadcastReceiver;", "Le/a/f/z/o0/b/b;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "a", "()V", "d", "Landroid/content/Context;", "<init>", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver.class */
public final class NotificationActionReceiver extends AbstractC13846a implements AbstractC13847b {
    @Inject

    /* renamed from: c */
    public C13848c f12451c;

    /* renamed from: d */
    public Context f12452d;

    @Override // p193e.p194a.p717f.p734z.p737o0.p738b.AbstractC13847b
    /* renamed from: a */
    public void mo21002a() {
        Context context = this.f12452d;
        if (context != null) {
            C19291g.m13515s(context);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p717f.p734z.p737o0.p738b.AbstractC13846a, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C13843a c13843a;
        super.onReceive(context, intent);
        if (context == null || intent == null) {
            return;
        }
        this.f12452d = context;
        C13848c c13848c = this.f12451c;
        if (c13848c == null) {
            l.l("presenter");
            throw null;
        }
        c13848c.f57683a = this;
        String action = intent.getAction();
        if (action != null) {
            boolean z = true;
            switch (action.hashCode()) {
                case -2140708147:
                    if (action.equals("HangUp")) {
                        C13848c c13848c2 = this.f12451c;
                        if (c13848c2 == null) {
                            l.l("presenter");
                            throw null;
                        }
                        C17891a1.C17902k.m15590n0(c13848c2.f40177b, false, 1, null);
                        AbstractC13847b abstractC13847b = (AbstractC13847b) c13848c2.f57683a;
                        if (abstractC13847b != null) {
                            abstractC13847b.mo21002a();
                        }
                        c13848c2.f40180e.mo21031i(NotificationUIEvent.HANGUP_CLICK);
                        break;
                    }
                    break;
                case -1087964458:
                    if (action.equals("Decline")) {
                        C13848c c13848c3 = this.f12451c;
                        if (c13848c3 == null) {
                            l.l("presenter");
                            throw null;
                        }
                        c13848c3.f40177b.mo21206a();
                        AbstractC13847b abstractC13847b2 = (AbstractC13847b) c13848c3.f57683a;
                        if (abstractC13847b2 != null) {
                            abstractC13847b2.mo21002a();
                        }
                        c13848c3.f40180e.mo21031i(NotificationUIEvent.DECLINE_CLICK);
                        break;
                    }
                    break;
                case 1053541867:
                    if (action.equals("ToggleSpeaker")) {
                        C13848c c13848c4 = this.f12451c;
                        if (c13848c4 == null) {
                            l.l("presenter");
                            throw null;
                        }
                        r<C13843a> mo21061s = c13848c4.f40178c.mo21061s();
                        if (((mo21061s == null || (c13843a = (C13843a) mo21061s.c()) == null) ? null : c13843a.f40169a) != AudioRoute.SPEAKER) {
                            z = false;
                        }
                        if (!z) {
                            c13848c4.f40178c.mo21077A0();
                            c13848c4.f40180e.mo21031i(NotificationUIEvent.SPEAKER_ON_CLICK);
                            break;
                        } else {
                            c13848c4.f40178c.mo21070P1();
                            c13848c4.f40180e.mo21031i(NotificationUIEvent.SPEAKER_OFF_CLICK);
                            break;
                        }
                    }
                    break;
                case 1140822957:
                    if (action.equals("ToggleMute")) {
                        C13848c c13848c5 = this.f12451c;
                        if (c13848c5 == null) {
                            l.l("presenter");
                            throw null;
                        }
                        r<C13843a> mo21061s2 = c13848c5.f40178c.mo21061s();
                        boolean z2 = false;
                        if (mo21061s2 != null) {
                            C13843a c13843a2 = (C13843a) mo21061s2.c();
                            z2 = false;
                            if (c13843a2 != null) {
                                z2 = c13843a2.f40172d;
                            }
                        }
                        c13848c5.f40178c.mo21066i0(!z2);
                        if (!z2) {
                            c13848c5.f40180e.mo21031i(NotificationUIEvent.MUTE_CLICK);
                            break;
                        } else {
                            c13848c5.f40180e.mo21031i(NotificationUIEvent.UNMUTE_CLICK);
                            break;
                        }
                    }
                    break;
                case 1242077413:
                    if (action.equals("ToggleRecord")) {
                        C13848c c13848c6 = this.f12451c;
                        if (c13848c6 == null) {
                            l.l("presenter");
                            throw null;
                        } else {
                            c13848c6.f40179d.mo17580r(c13848c6.f40177b.mo21200g(), RecordingAnalyticsSource.INCALLUI_NOTIFICATION);
                            break;
                        }
                    }
                    break;
            }
        }
        C13848c c13848c7 = this.f12451c;
        if (c13848c7 == null) {
            l.l("presenter");
            throw null;
        }
        c13848c7.f57683a = null;
        this.f12452d = null;
    }
}
