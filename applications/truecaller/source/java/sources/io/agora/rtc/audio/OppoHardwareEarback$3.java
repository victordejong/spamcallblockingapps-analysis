package io.agora.rtc.audio;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/audio/OppoHardwareEarback$3.class */
public class OppoHardwareEarback$3 implements InvocationHandler {
    public final /* synthetic */ OppoHardwareEarback this$0;
    public final /* synthetic */ Object val$client;

    public OppoHardwareEarback$3(OppoHardwareEarback oppoHardwareEarback, Object obj) {
        this.this$0 = oppoHardwareEarback;
        this.val$client = obj;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if (!method.getName().equals("onConnectionSucceed") || OppoHardwareEarback.access$100(this.this$0) == null) {
            return null;
        }
        ReflectUtils.safeCallMethod(OppoHardwareEarback.access$200(this.this$0), this.val$client, "abandonAudioLoopback", new Class[0], new Object[0]);
        return null;
    }
}
