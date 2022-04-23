package com.google.protobuf;

import com.google.protobuf.AbstractC2639m0;
/* renamed from: com.google.protobuf.b */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/b.class */
public abstract class AbstractC2573b<MessageType extends AbstractC2639m0> implements AbstractC2660u0<MessageType> {
    static {
        C2643o.m2411b();
    }

    /* renamed from: c */
    private MessageType m2904c(MessageType messagetype) {
        if (messagetype == null || messagetype.mo2413o()) {
            return messagetype;
        }
        throw m2903d(messagetype).asInvalidProtocolBufferException().setUnfinishedMessage(messagetype);
    }

    /* renamed from: d */
    private UninitializedMessageException m2903d(MessageType messagetype) {
        return messagetype instanceof AbstractC2569a ? ((AbstractC2569a) messagetype).m2917u() : new UninitializedMessageException(messagetype);
    }

    /* renamed from: e */
    public MessageType mo2271a(ByteString byteString, C2643o oVar) {
        MessageType f = m2901f(byteString, oVar);
        m2904c(f);
        return f;
    }

    /* renamed from: f */
    public MessageType m2901f(ByteString byteString, C2643o oVar) {
        try {
            AbstractC2613i newCodedInput = byteString.newCodedInput();
            MessageType messagetype = (MessageType) ((AbstractC2639m0) mo2270b(newCodedInput, oVar));
            try {
                newCodedInput.mo2640a(0);
                return messagetype;
            } catch (InvalidProtocolBufferException e) {
                throw e.setUnfinishedMessage(messagetype);
            }
        } catch (InvalidProtocolBufferException e2) {
            throw e2;
        }
    }
}
