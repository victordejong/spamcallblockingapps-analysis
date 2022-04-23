package org.mozilla.javascript;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ConstProperties.class */
public interface ConstProperties {
    void defineConst(String str, Scriptable scriptable);

    boolean isConst(String str);

    void putConst(String str, Scriptable scriptable, Object obj);
}
