package org.simpleframework.xml.transform;

import org.simpleframework.xml.core.PersistenceException;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/TransformException.class */
public class TransformException extends PersistenceException {
    public TransformException(String str, Object... objArr) {
        super(String.format(str, objArr), new Object[0]);
    }

    public TransformException(Throwable th, String str, Object... objArr) {
        super(String.format(str, objArr), th);
    }
}
