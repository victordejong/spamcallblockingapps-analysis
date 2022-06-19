package com.raizlabs.android.dbflow.structure;
/* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/structure/InvalidDBConfiguration.class */
public class InvalidDBConfiguration extends RuntimeException {
    public InvalidDBConfiguration() {
        super("No Databases were found. Did you create a Database Annotation placeholder class?");
    }

    public InvalidDBConfiguration(String str) {
        super(str);
    }
}
