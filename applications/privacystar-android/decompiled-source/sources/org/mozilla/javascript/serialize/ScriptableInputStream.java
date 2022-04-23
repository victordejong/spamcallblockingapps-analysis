package org.mozilla.javascript.serialize;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.UniqueTag;
import org.mozilla.javascript.serialize.ScriptableOutputStream;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/serialize/ScriptableInputStream.class */
public class ScriptableInputStream extends ObjectInputStream {
    private ClassLoader classLoader;
    private Scriptable scope;

    public ScriptableInputStream(InputStream inputStream, Scriptable scriptable) throws IOException {
        super(inputStream);
        this.scope = scriptable;
        enableResolveObject(true);
        Context currentContext = Context.getCurrentContext();
        if (currentContext != null) {
            this.classLoader = currentContext.getApplicationClassLoader();
        }
    }

    @Override // java.io.ObjectInputStream
    protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
        String name = objectStreamClass.getName();
        if (this.classLoader != null) {
            try {
                return this.classLoader.loadClass(name);
            } catch (ClassNotFoundException e) {
            }
        }
        return super.resolveClass(objectStreamClass);
    }

    @Override // java.io.ObjectInputStream
    protected Object resolveObject(Object obj) throws IOException {
        Object obj2;
        if (obj instanceof ScriptableOutputStream.PendingLookup) {
            String name = ((ScriptableOutputStream.PendingLookup) obj).getName();
            obj2 = ScriptableOutputStream.lookupQualifiedName(this.scope, name);
            if (obj2 == Scriptable.NOT_FOUND) {
                throw new IOException("Object " + name + " not found upon deserialization.");
            }
        } else if (obj instanceof UniqueTag) {
            obj2 = ((UniqueTag) obj).readResolve();
        } else {
            obj2 = obj;
            if (obj instanceof Undefined) {
                obj2 = ((Undefined) obj).readResolve();
            }
        }
        return obj2;
    }
}
