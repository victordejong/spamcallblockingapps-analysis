package com.danikula.videocache;
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/ProxyCacheException.class */
public class ProxyCacheException extends Exception {
    public ProxyCacheException(String str) {
        super(str + ". Version: 2.7.1");
    }

    public ProxyCacheException(String str, Throwable th) {
        super(str + ". Version: 2.7.1", th);
    }

    public ProxyCacheException(Throwable th) {
        super("No explanation error. Version: 2.7.1", th);
    }
}
