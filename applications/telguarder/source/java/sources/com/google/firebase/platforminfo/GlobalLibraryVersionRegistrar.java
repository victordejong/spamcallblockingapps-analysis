package com.google.firebase.platforminfo;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/platforminfo/GlobalLibraryVersionRegistrar.class */
public class GlobalLibraryVersionRegistrar {
    private static volatile GlobalLibraryVersionRegistrar INSTANCE;
    private final Set<LibraryVersion> infos = new HashSet();

    GlobalLibraryVersionRegistrar() {
    }

    public static GlobalLibraryVersionRegistrar getInstance() {
        GlobalLibraryVersionRegistrar globalLibraryVersionRegistrar = INSTANCE;
        GlobalLibraryVersionRegistrar globalLibraryVersionRegistrar2 = globalLibraryVersionRegistrar;
        if (globalLibraryVersionRegistrar == null) {
            synchronized (GlobalLibraryVersionRegistrar.class) {
                try {
                    GlobalLibraryVersionRegistrar globalLibraryVersionRegistrar3 = INSTANCE;
                    globalLibraryVersionRegistrar2 = globalLibraryVersionRegistrar3;
                    if (globalLibraryVersionRegistrar3 == null) {
                        globalLibraryVersionRegistrar2 = new GlobalLibraryVersionRegistrar();
                        INSTANCE = globalLibraryVersionRegistrar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return globalLibraryVersionRegistrar2;
    }

    public Set<LibraryVersion> getRegisteredVersions() {
        Set<LibraryVersion> unmodifiableSet;
        synchronized (this.infos) {
            unmodifiableSet = Collections.unmodifiableSet(this.infos);
        }
        return unmodifiableSet;
    }

    public void registerVersion(String str, String str2) {
        synchronized (this.infos) {
            this.infos.add(LibraryVersion.create(str, str2));
        }
    }
}
