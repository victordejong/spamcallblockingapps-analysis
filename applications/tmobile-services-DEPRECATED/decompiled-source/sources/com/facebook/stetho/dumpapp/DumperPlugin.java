package com.facebook.stetho.dumpapp;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/dumpapp/DumperPlugin.class */
public interface DumperPlugin {
    void dump(DumperContext dumperContext) throws DumpException;

    String getName();
}
