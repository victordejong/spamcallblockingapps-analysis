package com.explorestack.protobuf;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/RpcUtil.class */
public final class RpcUtil {

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/RpcUtil$AlreadyCalledException.class */
    public static final class AlreadyCalledException extends RuntimeException {
        private static final long serialVersionUID = 5469741279507848266L;

        public AlreadyCalledException() {
            super("This RpcCallback was already called and cannot be called multiple times.");
        }
    }

    private RpcUtil() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <Type extends Message> Type copyAsType(Type type, Message message) {
        return (Type) type.newBuilderForType().mergeFrom(message).build();
    }

    public static <Type extends Message> RpcCallback<Message> generalizeCallback(final RpcCallback<Type> rpcCallback, final Class<Type> cls, final Type type) {
        return new RpcCallback<Message>() { // from class: com.explorestack.protobuf.RpcUtil.1
            public final void run(Message message) {
                Message message2;
                try {
                    message2 = (Message) cls.cast(message);
                } catch (ClassCastException e) {
                    message2 = RpcUtil.copyAsType(type, message);
                }
                rpcCallback.run(message2);
            }
        };
    }

    public static <ParameterType> RpcCallback<ParameterType> newOneTimeCallback(final RpcCallback<ParameterType> rpcCallback) {
        return new RpcCallback<ParameterType>() { // from class: com.explorestack.protobuf.RpcUtil.2
            private boolean alreadyCalled = false;

            @Override // com.explorestack.protobuf.RpcCallback
            public final void run(ParameterType parametertype) {
                synchronized (this) {
                    if (!this.alreadyCalled) {
                        this.alreadyCalled = true;
                    } else {
                        throw new AlreadyCalledException();
                    }
                }
                RpcCallback.this.run(parametertype);
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <Type extends Message> RpcCallback<Type> specializeCallback(RpcCallback<Message> rpcCallback) {
        return rpcCallback;
    }
}
