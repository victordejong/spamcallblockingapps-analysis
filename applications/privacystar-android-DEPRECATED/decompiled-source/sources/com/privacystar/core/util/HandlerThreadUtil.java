package com.privacystar.core.util;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/HandlerThreadUtil.class */
public class HandlerThreadUtil {
    private static HashMap<String, HandlerThread> handlerThreadMap = new HashMap<>(3);
    private static HashMap<String, Handler> handlerMap = new HashMap<>(3);

    public static Handler getHandler(String str) {
        Handler handler;
        synchronized (HandlerThreadUtil.class) {
            try {
                handler = getHandler(str, 5);
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    public static Handler getHandler(String str, int i) {
        Handler handler;
        synchronized (HandlerThreadUtil.class) {
            try {
                Handler handler2 = handlerMap.get(str);
                if (handler2 == null) {
                    HandlerThread handlerThread = handlerThreadMap.get(str);
                    HandlerThread handlerThread2 = handlerThread;
                    if (handlerThread == null) {
                        handlerThread2 = new HandlerThread(str, i);
                        handlerThreadMap.put(str, handlerThread2);
                    }
                    if (!handlerThread2.isAlive()) {
                        handlerThread2.start();
                    }
                    Handler handler3 = new Handler(handlerThread2.getLooper());
                    handlerMap.put(str, handler3);
                    handler = handler3;
                } else {
                    handler = handler2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }
}
