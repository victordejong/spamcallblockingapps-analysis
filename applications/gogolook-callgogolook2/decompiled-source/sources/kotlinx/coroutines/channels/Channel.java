package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.internal.SystemPropsKt;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018�� \u0004*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0004¨\u0006\u0005"}, m815d2 = {"Lkotlinx/coroutines/channels/Channel;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/SendChannel;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "Factory", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/Channel.class */
public interface Channel<E> extends SendChannel<E>, ReceiveChannel<E> {
    public static final int BUFFERED = -2;
    public static final int CONFLATED = -1;
    public static final String DEFAULT_BUFFER_PROPERTY_NAME = "kotlinx.coroutines.channels.defaultBuffer";
    public static final Factory Factory = Factory.$$INSTANCE;
    public static final int OPTIONAL_CHANNEL = -3;
    public static final int RENDEZVOUS = 0;
    public static final int UNLIMITED = Integer.MAX_VALUE;

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/Channel$DefaultImpls.class */
    public static final class DefaultImpls {
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u000e"}, m815d2 = {"Lkotlinx/coroutines/channels/Channel$Factory;", "", "()V", "BUFFERED", "", "CHANNEL_DEFAULT_CAPACITY", "getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core", "()I", "CONFLATED", "DEFAULT_BUFFER_PROPERTY_NAME", "", "OPTIONAL_CHANNEL", "RENDEZVOUS", "UNLIMITED", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/Channel$Factory.class */
    public static final class Factory {
        public static final int BUFFERED = -2;
        public static final int CONFLATED = -1;
        public static final String DEFAULT_BUFFER_PROPERTY_NAME = "kotlinx.coroutines.channels.defaultBuffer";
        public static final int OPTIONAL_CHANNEL = -3;
        public static final int RENDEZVOUS = 0;
        public static final int UNLIMITED = Integer.MAX_VALUE;
        public static final /* synthetic */ Factory $$INSTANCE = new Factory();
        public static final int CHANNEL_DEFAULT_CAPACITY = SystemPropsKt.systemProp("kotlinx.coroutines.channels.defaultBuffer", 64, 1, 2147483646);

        public final int getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core() {
            return CHANNEL_DEFAULT_CAPACITY;
        }
    }
}
