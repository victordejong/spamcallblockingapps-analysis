package com.truecaller.messaging.conversation;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.C2752R;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B%\b\u0002\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u0019\u0010\n\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018¨\u0006\u0019"}, d2 = {"Lcom/truecaller/messaging/conversation/QuickAction;", "", "", RemoteMessageConst.Notification.ICON, "I", "getIcon", "()I", "text", "getText", "", "analyticsValue", "Ljava/lang/String;", "getAnalyticsValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;IIILjava/lang/String;)V", "CALL", "VOIP", "FLASH", "SAVE_CONTACT", "VIEW_PROFILE", "NEVER_MARK_AS_SPAM", "NEVER_MARK_AS_PROMOTIONAL", "UNBLOCK", "INVITE", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/QuickAction.class */
public enum QuickAction {
    CALL(2131232403, C2752R.string.call_label_quick_action_bar, "Call"),
    VOIP(2131232429, C2752R.string.voice_label_quick_action_bar, "Voice"),
    FLASH(2131232414, C2752R.string.flash_label_quick_action_bar, "Flash"),
    SAVE_CONTACT(2131232431, C2752R.string.ConversationSaveContact, "SaveContact"),
    VIEW_PROFILE(2131232416, C2752R.string.ImGroupActionViewProfile, "ViewDetails"),
    NEVER_MARK_AS_SPAM(2131232556, C2752R.string.NeverMarkAsSpam, "NeverMarkAsSpam"),
    NEVER_MARK_AS_PROMOTIONAL(2131232159, C2752R.string.NeverMarkAsPromotion, "NeverMarkAsPromotional"),
    UNBLOCK(2131232785, C2752R.string.Unblock, "Unblock"),
    INVITE(2131232569, C2752R.string.referral_invite_button_long, "Invite");
    
    private final String analyticsValue;
    private final int icon;
    private final int text;

    QuickAction(int i, int i2, String str) {
        this.icon = i;
        this.text = i2;
        this.analyticsValue = str;
    }

    public final String getAnalyticsValue() {
        return this.analyticsValue;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getText() {
        return this.text;
    }
}
