package com.truecaller.referral;

import android.app.IntentService;
import android.content.Intent;
import android.text.TextUtils;
import com.truecaller.C2752R;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* loaded from: classes12-dex2jar.jar:com/truecaller/referral/ReferralNotificationService.class */
public class ReferralNotificationService extends IntentService {

    /* renamed from: a */
    public static final /* synthetic */ int f14451a = 0;

    public ReferralNotificationService() {
        super("ReferralNotificationService");
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0333  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m34790a(android.content.Intent r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 839
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.referral.ReferralNotificationService.m34790a(android.content.Intent, java.lang.String):void");
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            return;
        }
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getApplicationContext()).mo10154s();
        action.hashCode();
        boolean z = true;
        switch (action.hashCode()) {
            case -1908554575:
                if (action.equals("com.truecaller.intent.action.REFERRAL_REFER_MORE_USERS")) {
                    z = false;
                    break;
                }
                break;
            case -397777121:
                if (action.equals("com.truecaller.intent.action.REFERRAL_PREMIUM_GRANTED")) {
                    z = true;
                    break;
                }
                break;
            case 233028233:
                if (action.equals("com.truecaller.intent.action.REFERRAL_REFERRER_NOTIFICATION_RECEIVED")) {
                    z = true;
                    break;
                }
                break;
            case 1204829377:
                if (action.equals("com.truecaller.intent.action.REFERRAL_JOINER_NOTIFICATION_RECEIVED")) {
                    z = true;
                    break;
                }
                break;
            case 1968287211:
                if (action.equals("com.truecaller.intent.action.ACTION_CLEAR_CACHE_NOTIFICATION_RECEIVED")) {
                    z = true;
                    break;
                }
                break;
            case 1987817529:
                if (action.equals("com.truecaller.intent.action.REFERRAL_REFERRER_PROMO_NOTIFICATION_RECEIVED")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                String stringExtra = intent.getStringExtra("refer_mode");
                if (h.e(stringExtra, "referrer")) {
                    Intent m16112F = C17422k.m16112F(this);
                    m16112F.putExtra("LAUNCH_MODE", "MODE_REFER_MORE_FRIENDS");
                    startActivity(m16112F);
                } else if (h.e(stringExtra, "joiner")) {
                    Intent m16112F2 = C17422k.m16112F(this);
                    m16112F2.putExtra("LAUNCH_MODE", "MODE_REFERRAL_ON_BOARDING");
                    startActivity(m16112F2);
                } else if (h.e(stringExtra, "promo")) {
                    Intent m16112F3 = C17422k.m16112F(this);
                    m16112F3.putExtra("LAUNCH_MODE", "MODE_SHOW_REFERRAL");
                    startActivity(m16112F3);
                }
                mo10154s.mo12617O1().mo18968f(C2752R.C2754id.referral_bonus_referrer_notification_id);
                mo10154s.mo12617O1().mo18968f(C2752R.C2754id.referral_bonus_joiner_notification_id);
                C19291g.m13515s(this);
                return;
            case true:
                String stringExtra2 = intent.getStringExtra("text");
                Intent m16112F4 = C17422k.m16112F(this);
                m16112F4.putExtra("REFERRAL_GRANTED_MESSAGE", stringExtra2);
                m16112F4.putExtra("LAUNCH_MODE", "MODE_REFERRAL_GRANTED_VIEW");
                startActivity(m16112F4);
                return;
            case true:
                m34790a(intent, "referrer");
                mo10154s.mo12779C1().mo16452c();
                return;
            case true:
                m34790a(intent, "joiner");
                mo10154s.mo12779C1().mo16452c();
                return;
            case true:
                l.e(mo10154s.mo11648b(), "featuresRegistry");
                C18334g0.m15214n0("referralLink");
                C18334g0.m15214n0("referralCode");
                return;
            case true:
                m34790a(intent, "promo");
                return;
            default:
                return;
        }
    }
}
