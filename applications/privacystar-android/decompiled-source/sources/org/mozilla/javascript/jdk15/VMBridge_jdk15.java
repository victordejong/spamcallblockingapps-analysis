package org.mozilla.javascript.jdk15;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Iterator;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Wrapper;
import org.mozilla.javascript.jdk13.VMBridge_jdk13;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/jdk15/VMBridge_jdk15.class */
public class VMBridge_jdk15 extends VMBridge_jdk13 {
    public VMBridge_jdk15() throws SecurityException, InstantiationException {
        try {
            Method.class.getMethod("isVarArgs", null);
        } catch (NoSuchMethodException e) {
            throw new InstantiationException(e.getMessage());
        }
    }

    @Override // org.mozilla.javascript.VMBridge
    public Iterator<?> getJavaIterator(Context context, Scriptable scriptable, Object obj) {
        Iterator<?> it = null;
        if (!(obj instanceof Wrapper)) {
            return null;
        }
        Object unwrap = ((Wrapper) obj).unwrap();
        if (unwrap instanceof Iterator) {
            it = (Iterator) unwrap;
        }
        if (unwrap instanceof Iterable) {
            it = ((Iterable) unwrap).iterator();
        }
        return it;
    }

    @Override // org.mozilla.javascript.jdk13.VMBridge_jdk13, org.mozilla.javascript.VMBridge
    public boolean isVarArgs(Member member) {
        if (member instanceof Method) {
            return ((Method) member).isVarArgs();
        }
        if (member instanceof Constructor) {
            return ((Constructor) member).isVarArgs();
        }
        return false;
    }
}
