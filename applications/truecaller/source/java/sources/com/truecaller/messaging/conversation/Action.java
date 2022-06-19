package com.truecaller.messaging.conversation;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.C2752R;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u001e\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B'\b\u0002\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\t\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006j\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001f¨\u0006 "}, d2 = {"Lcom/truecaller/messaging/conversation/Action;", "", "", "id", "I", "getId", "()I", RemoteMessageConst.Notification.ICON, "getIcon", "text", "getText", "<init>", "(Ljava/lang/String;IIII)V", "REPLY", "COPY", "DELETE", "FORWARD", "SHARE", "SELECT_CALLS", "IMPORTANT", "NOT_IMPORTANT", "SPAM", "NOT_SPAM", "PROMOTIONAL", "NOT_PROMOTIONAL", "DOWNLOAD", "RESEND_SMS", "EDIT", "SEND_FEEDBACK", "DETAILS", "SELECT_MSGS", "MORE", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/Action.class */
public enum Action {
    REPLY(C2752R.C2754id.actionReply, C2752R.string.Reply, 2131232424),
    COPY(C2752R.C2754id.actionCopy, C2752R.string.menu_copy, 2131232408),
    DELETE(C2752R.C2754id.actionDelete, C2752R.string.HistoryActionDelete, 2131232409),
    FORWARD(C2752R.C2754id.actionForward, C2752R.string.ConversationForward, 2131232415),
    SHARE(C2752R.C2754id.actionShare, C2752R.string.ConversationShare, 2131232652),
    SELECT_CALLS(C2752R.C2754id.actionSelectAllCalls, C2752R.string.ConversationSelectAllCalls, C2752R.C2753drawable.ic_tcx_select_all_24dp),
    IMPORTANT(C2752R.C2754id.actionMarkImportant, C2752R.string.ConversationImportant, 2131232675),
    NOT_IMPORTANT(C2752R.C2754id.actionNotImportant, C2752R.string.ConversationUnimportant, 2131232674),
    SPAM(C2752R.C2754id.actionSpam, C2752R.string.ConversationSpam, C2752R.C2753drawable.ic_tcx_action_block_outline_24dp),
    NOT_SPAM(C2752R.C2754id.actionNotSpam, C2752R.string.ConversationNotSpam, C2752R.C2753drawable.ic_tcx_action_block_outline_24dp),
    PROMOTIONAL(C2752R.C2754id.actionPromotional, C2752R.string.ConversationReportPromotional, 2131232158),
    NOT_PROMOTIONAL(C2752R.C2754id.actionNotPromotional, C2752R.string.ConversationReportNotPromotional, 2131232159),
    DOWNLOAD(C2752R.C2754id.actionDownload, C2752R.string.menu_download, 2131232410),
    RESEND_SMS(C2752R.C2754id.actionResendSms, C2752R.string.ConversationErrorResendSms, 2131232419),
    EDIT(C2752R.C2754id.actionEdit, C2752R.string.ConversationErrorEdit, 2131232411),
    SEND_FEEDBACK(C2752R.C2754id.actionFeedback, C2752R.string.ConversationDetailsActionFeedback, 2131232534),
    DETAILS(C2752R.C2754id.actionInfo, C2752R.string.ConversationDetails, 2131232416),
    SELECT_MSGS(C2752R.C2754id.actionSelectAllMessages, C2752R.string.ConversationSelectAllMsgs, C2752R.C2753drawable.ic_tcx_select_all_24dp),
    MORE(0, C2752R.string.ConversationMore, 2131232587);
    
    private final int icon;

    /* renamed from: id */
    private final int f13012id;
    private final int text;

    Action(int i, int i2, int i3) {
        this.f13012id = i;
        this.text = i2;
        this.icon = i3;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getId() {
        return this.f13012id;
    }

    public final int getText() {
        return this.text;
    }
}
