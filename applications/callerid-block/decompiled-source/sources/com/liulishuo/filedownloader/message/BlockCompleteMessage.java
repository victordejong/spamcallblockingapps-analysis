package com.liulishuo.filedownloader.message;

import p092e.p096e.p097a.p102h0.C3066f;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/BlockCompleteMessage.class */
public interface BlockCompleteMessage {

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl.class */
    public static class BlockCompleteMessageImpl extends MessageSnapshot implements BlockCompleteMessage {

        /* renamed from: d */
        private final MessageSnapshot f11467d;

        public BlockCompleteMessageImpl(MessageSnapshot messageSnapshot) {
            super(messageSnapshot.m1856e());
            if (messageSnapshot.mo1841m() == -3) {
                this.f11467d = messageSnapshot;
                return;
            }
            throw new IllegalArgumentException(C3066f.m367o("can't create the block complete message for id[%d], status[%d]", Integer.valueOf(messageSnapshot.m1856e()), Byte.valueOf(messageSnapshot.mo1841m())));
        }

        @Override // com.liulishuo.filedownloader.message.BlockCompleteMessage
        /* renamed from: b */
        public MessageSnapshot mo1857b() {
            return this.f11467d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) 4;
        }
    }

    /* renamed from: b */
    MessageSnapshot mo1857b();
}
