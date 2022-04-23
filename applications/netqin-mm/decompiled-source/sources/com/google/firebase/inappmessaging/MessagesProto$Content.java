package com.google.firebase.inappmessaging;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p282e.p315q.AbstractC5500h0;
import p131c.p161d.p282e.p315q.C5483b0;
import p131c.p161d.p282e.p315q.C5494f0;
import p131c.p161d.p282e.p315q.C5503i0;
import p131c.p161d.p282e.p315q.C5508k0;
import p131c.p161d.p282e.p315q.C5884y;
import p131c.p161d.p367h.AbstractC6376v0;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/MessagesProto$Content.class */
public final class MessagesProto$Content extends GeneratedMessageLite<MessagesProto$Content, C7839a> implements AbstractC5500h0 {
    public static final int BANNER_FIELD_NUMBER = 1;
    public static final int CARD_FIELD_NUMBER = 4;
    public static final MessagesProto$Content DEFAULT_INSTANCE;
    public static final int IMAGE_ONLY_FIELD_NUMBER = 3;
    public static final int MODAL_FIELD_NUMBER = 2;
    public static volatile AbstractC6376v0<MessagesProto$Content> PARSER;
    public int messageDetailsCase_ = 0;
    public Object messageDetails_;

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase.class */
    public enum MessageDetailsCase {
        BANNER(1),
        MODAL(2),
        IMAGE_ONLY(3),
        CARD(4),
        MESSAGEDETAILS_NOT_SET(0);
        
        public final int value;

        MessageDetailsCase(int i) {
            this.value = i;
        }

        public static MessageDetailsCase forNumber(int i) {
            if (i == 0) {
                return MESSAGEDETAILS_NOT_SET;
            }
            if (i == 1) {
                return BANNER;
            }
            if (i == 2) {
                return MODAL;
            }
            if (i == 3) {
                return IMAGE_ONLY;
            }
            if (i != 4) {
                return null;
            }
            return CARD;
        }

        @Deprecated
        public static MessageDetailsCase valueOf(int i) {
            return forNumber(i);
        }

        public int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.google.firebase.inappmessaging.MessagesProto$Content$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/MessagesProto$Content$a.class */
    public static final class C7839a extends GeneratedMessageLite.AbstractC7946a<MessagesProto$Content, C7839a> implements AbstractC5500h0 {
        public C7839a() {
            super(MessagesProto$Content.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C7839a(C5884y yVar) {
            this();
        }
    }

    static {
        MessagesProto$Content messagesProto$Content = new MessagesProto$Content();
        DEFAULT_INSTANCE = messagesProto$Content;
        GeneratedMessageLite.m6949a(MessagesProto$Content.class, messagesProto$Content);
    }

    /* renamed from: C */
    public static MessagesProto$Content m7317C() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5884y.f19188a[methodToInvoke.ordinal()]) {
            case 1:
                return new MessagesProto$Content();
            case 2:
                return new C7839a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0004\u0001��\u0001\u0004\u0004������\u0001<��\u0002<��\u0003<��\u0004<��", new Object[]{"messageDetails_", "messageDetailsCase_", C5483b0.class, C5508k0.class, C5503i0.class, C5494f0.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<MessagesProto$Content> v0Var = PARSER;
                AbstractC6376v0<MessagesProto$Content> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (MessagesProto$Content.class) {
                        try {
                            AbstractC6376v0<MessagesProto$Content> v0Var3 = PARSER;
                            v0Var2 = v0Var3;
                            if (v0Var3 == null) {
                                v0Var2 = new GeneratedMessageLite.C7947b<>(DEFAULT_INSTANCE);
                                PARSER = v0Var2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return v0Var2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: v */
    public C5483b0 m7316v() {
        return this.messageDetailsCase_ == 1 ? (C5483b0) this.messageDetails_ : C5483b0.m23695F();
    }

    /* renamed from: w */
    public C5494f0 m7315w() {
        return this.messageDetailsCase_ == 4 ? (C5494f0) this.messageDetails_ : C5494f0.m23670M();
    }

    /* renamed from: x */
    public C5503i0 m7314x() {
        return this.messageDetailsCase_ == 3 ? (C5503i0) this.messageDetails_ : C5503i0.m23656z();
    }

    /* renamed from: y */
    public MessageDetailsCase m7313y() {
        return MessageDetailsCase.forNumber(this.messageDetailsCase_);
    }

    /* renamed from: z */
    public C5508k0 m7312z() {
        return this.messageDetailsCase_ == 2 ? (C5508k0) this.messageDetails_ : C5508k0.m23650G();
    }
}
