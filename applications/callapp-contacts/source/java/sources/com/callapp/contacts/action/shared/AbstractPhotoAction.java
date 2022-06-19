package com.callapp.contacts.action.shared;

import com.callapp.common.model.message.OutgoingMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/AbstractPhotoAction.class */
public abstract class AbstractPhotoAction extends SharedAction {
    @Override // com.callapp.contacts.action.shared.SharedAction
    /* renamed from: a */
    protected final String mo31799a(OutgoingMessage outgoingMessage) {
        return StringUtils.m26045b((CharSequence) outgoingMessage.getBody()) ? Activities.m27697a(2131886193, HttpUtils.m26979a(outgoingMessage.getBody()), Activities.m27697a(2131887724, HttpUtils.getCallAppDomain())) : null;
    }
}
