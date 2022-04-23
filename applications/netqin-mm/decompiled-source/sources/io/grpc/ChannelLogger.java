package io.grpc;
/* loaded from: classes2-dex2jar.jar:io/grpc/ChannelLogger.class */
public abstract class ChannelLogger {

    /* loaded from: classes2-dex2jar.jar:io/grpc/ChannelLogger$ChannelLogLevel.class */
    public enum ChannelLogLevel {
        DEBUG,
        INFO,
        WARNING,
        ERROR
    }

    /* renamed from: a */
    public abstract void mo688a(ChannelLogLevel channelLogLevel, String str);

    /* renamed from: a */
    public abstract void mo687a(ChannelLogLevel channelLogLevel, String str, Object... objArr);
}
