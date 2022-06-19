package com.liulishuo.filedownloader.message;

import p078c.p122d.p123a.p128i0.C2040f;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/BlockCompleteMessage.class */
public interface BlockCompleteMessage {

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl.class */
    public static class BlockCompleteMessageImpl extends MessageSnapshot implements BlockCompleteMessage {

        /* renamed from: f */
        private final MessageSnapshot f40064f;

        public BlockCompleteMessageImpl(MessageSnapshot messageSnapshot) {
            super(messageSnapshot.m901e());
            if (messageSnapshot.mo886k() == -3) {
                this.f40064f = messageSnapshot;
                return;
            }
            throw new IllegalArgumentException(C2040f.m28206o("can't create the block complete message for id[%d], status[%d]", Integer.valueOf(messageSnapshot.m901e()), Byte.valueOf(messageSnapshot.mo886k())));
        }

        @Override // com.liulishuo.filedownloader.message.BlockCompleteMessage
        /* renamed from: b */
        public MessageSnapshot mo902b() {
            return this.f40064f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) 4;
        }
    }

    /* renamed from: b */
    MessageSnapshot mo902b();
}
