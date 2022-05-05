package org.msgpack.core;

import java.io.IOException;
import java.util.List;
import org.msgpack.core.MessagePack;
import org.msgpack.core.buffer.ArrayBufferOutput;
import org.msgpack.core.buffer.MessageBuffer;
import org.msgpack.core.buffer.MessageBufferOutput;
/* loaded from: classes3-dex2jar.jar:org/msgpack/core/MessageBufferPacker.class */
public class MessageBufferPacker extends MessagePacker {
    public MessageBufferPacker(MessagePack.PackerConfig packerConfig) {
        this(new ArrayBufferOutput(), packerConfig);
    }

    public MessageBufferPacker(ArrayBufferOutput arrayBufferOutput, MessagePack.PackerConfig packerConfig) {
        super(arrayBufferOutput, packerConfig);
    }

    private ArrayBufferOutput getArrayBufferOut() {
        return (ArrayBufferOutput) this.out;
    }

    public void clear() {
        getArrayBufferOut().clear();
    }

    @Override // org.msgpack.core.MessagePacker
    public MessageBufferOutput reset(MessageBufferOutput messageBufferOutput) throws IOException {
        if (messageBufferOutput instanceof ArrayBufferOutput) {
            return super.reset(messageBufferOutput);
        }
        throw new IllegalArgumentException("MessageBufferPacker accepts only ArrayBufferOutput");
    }

    public List<MessageBuffer> toBufferList() {
        try {
            flush();
            return getArrayBufferOut().toBufferList();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public byte[] toByteArray() {
        try {
            flush();
            return getArrayBufferOut().toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public MessageBuffer toMessageBuffer() {
        try {
            flush();
            return getArrayBufferOut().toMessageBuffer();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
