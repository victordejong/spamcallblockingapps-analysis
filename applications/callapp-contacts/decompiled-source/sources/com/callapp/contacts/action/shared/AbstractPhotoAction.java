package com.callapp.contacts.action.shared;

import com.callapp.common.model.message.OutgoingMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/AbstractPhotoAction.class */
public abstract class AbstractPhotoAction extends SharedAction {
    @Override // com.callapp.contacts.action.shared.SharedAction
    protected final String a(OutgoingMessage outgoingMessage) {
        return StringUtils.b((CharSequence) outgoingMessage.getBody()) ? Activities.a(2131886193, HttpUtils.a(outgoingMessage.getBody()), Activities.a(2131887724, HttpUtils.getCallAppDomain())) : null;
    }
}
