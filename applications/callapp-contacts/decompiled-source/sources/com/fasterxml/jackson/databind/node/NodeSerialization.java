package com.fasterxml.jackson.databind.node;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/node/NodeSerialization.class */
class NodeSerialization implements Externalizable, Serializable {
    public byte[] json;

    public NodeSerialization() {
    }

    public NodeSerialization(byte[] bArr) {
        this.json = bArr;
    }

    public static NodeSerialization from(Object obj) {
        try {
            return new NodeSerialization(InternalNodeMapper.valueToBytes(obj));
        } catch (IOException e) {
            throw new IllegalArgumentException("Failed to JDK serialize `" + obj.getClass().getSimpleName() + "` value: " + e.getMessage(), e);
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        int readInt = objectInput.readInt();
        byte[] bArr = new byte[readInt];
        this.json = bArr;
        objectInput.readFully(bArr, 0, readInt);
    }

    protected Object readResolve() {
        try {
            return InternalNodeMapper.bytesToNode(this.json);
        } catch (IOException e) {
            throw new IllegalArgumentException("Failed to JDK deserialize `JsonNode` value: " + e.getMessage(), e);
        }
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.json.length);
        objectOutput.write(this.json);
    }
}
