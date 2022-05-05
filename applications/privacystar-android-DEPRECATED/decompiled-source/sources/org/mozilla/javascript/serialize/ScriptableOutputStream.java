package org.mozilla.javascript.serialize;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.UniqueTag;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/serialize/ScriptableOutputStream.class */
public class ScriptableOutputStream extends ObjectOutputStream {
    private Scriptable scope;
    private Map<Object, String> table = new HashMap();

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/serialize/ScriptableOutputStream$PendingLookup.class */
    static class PendingLookup implements Serializable {
        static final long serialVersionUID = -2692990309789917727L;
        private String name;

        PendingLookup(String str) {
            this.name = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getName() {
            return this.name;
        }
    }

    public ScriptableOutputStream(OutputStream outputStream, Scriptable scriptable) throws IOException {
        super(outputStream);
        this.scope = scriptable;
        this.table.put(scriptable, "");
        enableReplaceObject(true);
        excludeStandardObjectNames();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Object lookupQualifiedName(Scriptable scriptable, String str) {
        Scriptable scriptable2;
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        while (true) {
            scriptable2 = scriptable;
            if (!stringTokenizer.hasMoreTokens()) {
                break;
            }
            Object property = ScriptableObject.getProperty(scriptable, stringTokenizer.nextToken());
            scriptable2 = property;
            if (property == 0) {
                break;
            }
            scriptable = property;
            if (!(property instanceof Scriptable)) {
                scriptable2 = property;
                break;
            }
        }
        return scriptable2;
    }

    public void addExcludedName(String str) {
        Object lookupQualifiedName = lookupQualifiedName(this.scope, str);
        if (!(lookupQualifiedName instanceof Scriptable)) {
            throw new IllegalArgumentException("Object for excluded name " + str + " not found.");
        }
        this.table.put(lookupQualifiedName, str);
    }

    public void addOptionalExcludedName(String str) {
        Object lookupQualifiedName = lookupQualifiedName(this.scope, str);
        if (lookupQualifiedName != null && lookupQualifiedName != UniqueTag.NOT_FOUND) {
            if (!(lookupQualifiedName instanceof Scriptable)) {
                throw new IllegalArgumentException("Object for excluded name " + str + " is not a Scriptable, it is " + lookupQualifiedName.getClass().getName());
            }
            this.table.put(lookupQualifiedName, str);
        }
    }

    public void excludeAllIds(Object[] objArr) {
        for (Object obj : objArr) {
            if (obj instanceof String) {
                String str = (String) obj;
                if (this.scope.get(str, this.scope) instanceof Scriptable) {
                    addExcludedName(str);
                }
            }
        }
    }

    public void excludeStandardObjectNames() {
        for (String str : new String[]{"Object", "Object.prototype", "Function", "Function.prototype", "String", "String.prototype", "Math", "Array", "Array.prototype", "Error", "Error.prototype", "Number", "Number.prototype", HttpRequest.HEADER_DATE, "Date.prototype", "RegExp", "RegExp.prototype", "Script", "Script.prototype", "Continuation", "Continuation.prototype"}) {
            addExcludedName(str);
        }
        for (String str2 : new String[]{"XML", "XML.prototype", "XMLList", "XMLList.prototype"}) {
            addOptionalExcludedName(str2);
        }
    }

    public boolean hasExcludedName(String str) {
        return this.table.get(str) != null;
    }

    public void removeExcludedName(String str) {
        this.table.remove(str);
    }

    @Override // java.io.ObjectOutputStream
    protected Object replaceObject(Object obj) throws IOException {
        String str = this.table.get(obj);
        return str == null ? obj : new PendingLookup(str);
    }
}
