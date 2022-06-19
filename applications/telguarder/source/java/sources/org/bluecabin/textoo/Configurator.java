package org.bluecabin.textoo;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/Configurator.class */
public abstract class Configurator<T> {
    public Configurator(TextooContext textooContext) {
        textooContext.assertNotNull();
    }

    public abstract T apply();
}
