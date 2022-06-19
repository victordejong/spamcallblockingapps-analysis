package io.agora.rtc.audio;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/audio/OppoHardwareEarback$1.class */
public class OppoHardwareEarback$1 implements InvocationHandler {
    public final /* synthetic */ OppoHardwareEarback this$0;

    public OppoHardwareEarback$1(OppoHardwareEarback oppoHardwareEarback) {
        this.this$0 = oppoHardwareEarback;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if (method.getName().equals("onConnectionSucceed")) {
            OppoHardwareEarback.access$002(this.this$0, true);
            return null;
        }
        return null;
    }
}
