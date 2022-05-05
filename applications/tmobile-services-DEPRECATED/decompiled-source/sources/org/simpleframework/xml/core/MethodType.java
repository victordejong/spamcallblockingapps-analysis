package org.simpleframework.xml.core;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/MethodType.class */
enum MethodType {
    GET(3),
    IS(2),
    SET(3),
    NONE(0);
    
    private int prefix;

    MethodType(int i) {
        this.prefix = i;
    }

    public int getPrefix() {
        return this.prefix;
    }
}
