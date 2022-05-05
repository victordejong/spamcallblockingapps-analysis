package com.google.android.gms.tagmanager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bj.class */
class bj {
    private static bj d;

    /* renamed from: a  reason: collision with root package name */
    volatile a f4303a = a.NONE;
    volatile String c = null;

    /* renamed from: b  reason: collision with root package name */
    volatile String f4304b = null;
    private volatile String e = null;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bj$a.class */
    enum a {
        NONE,
        CONTAINER,
        CONTAINER_DEBUG
    }

    bj() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static bj a() {
        bj bjVar;
        synchronized (bj.class) {
            try {
                if (d == null) {
                    d = new bj();
                }
                bjVar = d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bjVar;
    }
}
