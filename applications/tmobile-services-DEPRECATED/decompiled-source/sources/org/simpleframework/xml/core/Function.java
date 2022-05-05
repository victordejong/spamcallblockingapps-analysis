package org.simpleframework.xml.core;

import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/Function.class */
public class Function {
    private final boolean contextual;
    private final Method method;

    public Function(Method method) {
        this(method, false);
    }

    public Function(Method method, boolean z) {
        this.contextual = z;
        this.method = method;
    }

    public Object call(Context context, Object obj) throws Exception {
        if (obj == null) {
            return null;
        }
        return this.contextual ? this.method.invoke(obj, context.getSession().getMap()) : this.method.invoke(obj, new Object[0]);
    }
}
