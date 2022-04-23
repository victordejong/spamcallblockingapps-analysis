package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UninitializedMessageException;
import java.io.InputStream;
import p131c.p161d.p367h.AbstractC6354n0;
/* renamed from: c.d.h.b */
/* loaded from: classes2-dex2jar.jar:c/d/h/b.class */
public abstract class AbstractC6282b<MessageType extends AbstractC6354n0> implements AbstractC6376v0<MessageType> {

    /* renamed from: a */
    public static final C6358p f19858a = C6358p.m21173a();

    @Override // p131c.p161d.p367h.AbstractC6376v0
    /* renamed from: a */
    public MessageType mo21030a(AbstractC6327j jVar, C6358p pVar) throws InvalidProtocolBufferException {
        MessageType messagetype = (MessageType) ((AbstractC6354n0) mo6928b(jVar, pVar));
        m21685a((AbstractC6282b<MessageType>) messagetype);
        return messagetype;
    }

    /* renamed from: a */
    public final MessageType m21685a(MessageType messagetype) throws InvalidProtocolBufferException {
        if (messagetype == null || messagetype.isInitialized()) {
            return messagetype;
        }
        throw m21683b(messagetype).asInvalidProtocolBufferException().setUnfinishedMessage(messagetype);
    }

    @Override // p131c.p161d.p367h.AbstractC6376v0
    /* renamed from: a */
    public MessageType mo21029a(ByteString byteString, C6358p pVar) throws InvalidProtocolBufferException {
        MessageType b = m21682b(byteString, pVar);
        m21685a((AbstractC6282b<MessageType>) b);
        return b;
    }

    @Override // p131c.p161d.p367h.AbstractC6376v0
    /* renamed from: a */
    public MessageType mo21028a(InputStream inputStream) throws InvalidProtocolBufferException {
        return m21684a(inputStream, f19858a);
    }

    /* renamed from: a */
    public MessageType m21684a(InputStream inputStream, C6358p pVar) throws InvalidProtocolBufferException {
        MessageType b = m21681b(inputStream, pVar);
        m21685a((AbstractC6282b<MessageType>) b);
        return b;
    }

    /* renamed from: b */
    public MessageType m21682b(ByteString byteString, C6358p pVar) throws InvalidProtocolBufferException {
        try {
            AbstractC6327j newCodedInput = byteString.newCodedInput();
            MessageType messagetype = (MessageType) ((AbstractC6354n0) mo6928b(newCodedInput, pVar));
            try {
                newCodedInput.mo21419a(0);
                return messagetype;
            } catch (InvalidProtocolBufferException e) {
                throw e.setUnfinishedMessage(messagetype);
            }
        } catch (InvalidProtocolBufferException e2) {
            throw e2;
        }
    }

    /* renamed from: b */
    public MessageType m21681b(InputStream inputStream, C6358p pVar) throws InvalidProtocolBufferException {
        AbstractC6327j a = AbstractC6327j.m21468a(inputStream);
        MessageType messagetype = (MessageType) ((AbstractC6354n0) mo6928b(a, pVar));
        try {
            a.mo21419a(0);
            return messagetype;
        } catch (InvalidProtocolBufferException e) {
            throw e.setUnfinishedMessage(messagetype);
        }
    }

    /* renamed from: b */
    public final UninitializedMessageException m21683b(MessageType messagetype) {
        return messagetype instanceof AbstractC6275a ? ((AbstractC6275a) messagetype).m21693d() : new UninitializedMessageException(messagetype);
    }
}
