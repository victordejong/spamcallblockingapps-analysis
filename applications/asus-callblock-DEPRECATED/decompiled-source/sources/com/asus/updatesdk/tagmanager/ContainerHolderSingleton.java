package com.asus.updatesdk.tagmanager;

import com.google.android.gms.tagmanager.b;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/tagmanager/ContainerHolderSingleton.class */
public class ContainerHolderSingleton {

    /* renamed from: a  reason: collision with root package name */
    private static b f3178a;

    private ContainerHolderSingleton() {
    }

    public static b getContainerHolder() {
        return f3178a;
    }

    public static void setContainerHolder(b bVar) {
        f3178a = bVar;
    }
}
