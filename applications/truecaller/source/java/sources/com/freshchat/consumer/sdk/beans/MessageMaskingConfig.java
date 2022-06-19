package com.freshchat.consumer.sdk.beans;

import e.m.e.d0.b;
import java.util.LinkedList;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/MessageMaskingConfig.class */
public class MessageMaskingConfig {
    @b("androidMessageMasks")
    private LinkedList<MessageMask> messageMasks;

    public LinkedList<MessageMask> getMessageMasks() {
        return this.messageMasks;
    }

    public void setMessageMasks(LinkedList<MessageMask> linkedList) {
        this.messageMasks = linkedList;
    }
}
