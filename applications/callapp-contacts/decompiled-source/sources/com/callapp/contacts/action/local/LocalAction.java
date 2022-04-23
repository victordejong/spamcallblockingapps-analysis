package com.callapp.contacts.action.local;

import com.callapp.contacts.action.Action;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/LocalAction.class */
public abstract class LocalAction extends Action {
    @Override // com.callapp.contacts.action.Action
    public String getKey() {
        return getClass().getSimpleName();
    }
}
