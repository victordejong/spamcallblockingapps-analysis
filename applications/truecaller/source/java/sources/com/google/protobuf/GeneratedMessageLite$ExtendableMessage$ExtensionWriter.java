package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter.class */
public class GeneratedMessageLite$ExtendableMessage$ExtensionWriter {
    private final Iterator<Map.Entry<GeneratedMessageLite.ExtensionDescriptor, Object>> iter;
    private final boolean messageSetWireFormat;
    private Map.Entry<GeneratedMessageLite.ExtensionDescriptor, Object> next;
    public final /* synthetic */ GeneratedMessageLite.ExtendableMessage this$0;

    private GeneratedMessageLite$ExtendableMessage$ExtensionWriter(GeneratedMessageLite.ExtendableMessage extendableMessage, boolean z) {
        this.this$0 = extendableMessage;
        Iterator<Map.Entry<GeneratedMessageLite.ExtensionDescriptor, Object>> it = extendableMessage.extensions.iterator();
        this.iter = it;
        if (it.hasNext()) {
            this.next = it.next();
        }
        this.messageSetWireFormat = z;
    }

    public void writeUntil(int i, CodedOutputStream codedOutputStream) throws IOException {
        while (true) {
            Map.Entry<GeneratedMessageLite.ExtensionDescriptor, Object> entry = this.next;
            if (entry == null || entry.getKey().getNumber() >= i) {
                return;
            }
            GeneratedMessageLite.ExtensionDescriptor key = this.next.getKey();
            if (!this.messageSetWireFormat || key.getLiteJavaType() != WireFormat.JavaType.MESSAGE || key.isRepeated()) {
                FieldSet.writeField(key, this.next.getValue(), codedOutputStream);
            } else {
                codedOutputStream.writeMessageSetExtension(key.getNumber(), (MessageLite) this.next.getValue());
            }
            if (this.iter.hasNext()) {
                this.next = this.iter.next();
            } else {
                this.next = null;
            }
        }
    }
}
