package com.explorestack.protobuf;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/RawMessageInfo.class */
final class RawMessageInfo implements MessageInfo {
    private final MessageLite defaultInstance;
    private final int flags;
    private final String info;
    private final Object[] objects;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RawMessageInfo(MessageLite messageLite, String str, Object[] objArr) {
        this.defaultInstance = messageLite;
        this.info = str;
        this.objects = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.flags = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3++;
            } else {
                this.flags = i | (charAt2 << i2);
                return;
            }
        }
    }

    @Override // com.explorestack.protobuf.MessageInfo
    public final MessageLite getDefaultInstance() {
        return this.defaultInstance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] getObjects() {
        return this.objects;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getStringInfo() {
        return this.info;
    }

    @Override // com.explorestack.protobuf.MessageInfo
    public final ProtoSyntax getSyntax() {
        return (this.flags & 1) == 1 ? ProtoSyntax.PROTO2 : ProtoSyntax.PROTO3;
    }

    @Override // com.explorestack.protobuf.MessageInfo
    public final boolean isMessageSetWireFormat() {
        return (this.flags & 2) == 2;
    }
}
