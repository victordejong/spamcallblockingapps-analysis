package com.explorestack.protobuf;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/GeneratedMessageInfoFactory.class */
class GeneratedMessageInfoFactory implements MessageInfoFactory {
    private static final GeneratedMessageInfoFactory instance = new GeneratedMessageInfoFactory();

    private GeneratedMessageInfoFactory() {
    }

    public static GeneratedMessageInfoFactory getInstance() {
        return instance;
    }

    @Override // com.explorestack.protobuf.MessageInfoFactory
    public boolean isSupported(Class<?> cls) {
        return GeneratedMessageLite.class.isAssignableFrom(cls);
    }

    @Override // com.explorestack.protobuf.MessageInfoFactory
    public MessageInfo messageInfoFor(Class<?> cls) {
        if (!GeneratedMessageLite.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
        }
        try {
            return (MessageInfo) GeneratedMessageLite.getDefaultInstance(cls.asSubclass(GeneratedMessageLite.class)).buildMessageInfo();
        } catch (Exception e) {
            throw new RuntimeException("Unable to get message info for " + cls.getName(), e);
        }
    }
}
