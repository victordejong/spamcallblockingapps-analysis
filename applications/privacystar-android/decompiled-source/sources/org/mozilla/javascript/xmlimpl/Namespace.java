package org.mozilla.javascript.xmlimpl;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.xmlimpl.XmlNode;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/Namespace.class */
public class Namespace extends IdScriptableObject {
    private static final int Id_constructor = 1;
    private static final int Id_prefix = 1;
    private static final int Id_toSource = 3;
    private static final int Id_toString = 2;
    private static final int Id_uri = 2;
    private static final int MAX_INSTANCE_ID = 2;
    private static final int MAX_PROTOTYPE_ID = 3;
    private static final Object NAMESPACE_TAG = "Namespace";
    static final long serialVersionUID = -5765755238131301744L;

    /* renamed from: ns */
    private XmlNode.Namespace f859ns;
    private Namespace prototype;

    private Namespace() {
    }

    private Namespace constructNamespace() {
        return newNamespace("", "");
    }

    private Namespace constructNamespace(Object obj, Object obj2) {
        String str;
        String str2;
        if (obj2 instanceof QName) {
            QName qName = (QName) obj2;
            String uri = qName.uri();
            str = uri;
            if (uri == null) {
                str = qName.toString();
            }
        } else {
            str = ScriptRuntime.toString(obj2);
        }
        if (str.length() != 0) {
            str2 = obj == Undefined.instance ? "" : !XMLName.accept(obj) ? "" : ScriptRuntime.toString(obj);
        } else if (obj == Undefined.instance) {
            str2 = "";
        } else {
            String scriptRuntime = ScriptRuntime.toString(obj);
            str2 = scriptRuntime;
            if (scriptRuntime.length() != 0) {
                throw ScriptRuntime.typeError("Illegal prefix '" + scriptRuntime + "' for 'no namespace'.");
            }
        }
        return newNamespace(str2, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Namespace create(Scriptable scriptable, Namespace namespace, XmlNode.Namespace namespace2) {
        Namespace namespace3 = new Namespace();
        namespace3.setParentScope(scriptable);
        namespace3.prototype = namespace;
        namespace3.setPrototype(namespace);
        namespace3.f859ns = namespace2;
        return namespace3;
    }

    private boolean equals(Namespace namespace) {
        return uri().equals(namespace.uri());
    }

    private Object jsConstructor(Context context, boolean z, Object[] objArr) {
        return (z || objArr.length != 1) ? objArr.length == 0 ? constructNamespace() : objArr.length == 1 ? constructNamespace(objArr[0]) : constructNamespace(objArr[0], objArr[1]) : castToNamespace(objArr[0]);
    }

    private String js_toSource() {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        toSourceImpl(this.f859ns.getPrefix(), this.f859ns.getUri(), sb);
        sb.append(')');
        return sb.toString();
    }

    private Namespace realThis(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable instanceof Namespace) {
            return (Namespace) scriptable;
        }
        throw incompatibleCallError(idFunctionObject);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void toSourceImpl(String str, String str2, StringBuilder sb) {
        sb.append("new Namespace(");
        if (str2.length() != 0) {
            sb.append('\'');
            if (str != null) {
                sb.append(ScriptRuntime.escapeString(str, '\''));
                sb.append("', '");
            }
            sb.append(ScriptRuntime.escapeString(str2, '\''));
            sb.append('\'');
        } else if (!"".equals(str)) {
            throw new IllegalArgumentException(str);
        }
        sb.append(')');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace castToNamespace(Object obj) {
        return obj instanceof Namespace ? (Namespace) obj : constructNamespace(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace constructNamespace(Object obj) {
        String str;
        String str2;
        if (obj instanceof Namespace) {
            Namespace namespace = (Namespace) obj;
            str2 = namespace.prefix();
            str = namespace.uri();
        } else if (obj instanceof QName) {
            QName qName = (QName) obj;
            str = qName.uri();
            if (str != null) {
                str2 = qName.prefix();
            } else {
                str = qName.toString();
                str2 = null;
            }
        } else {
            String scriptRuntime = ScriptRuntime.toString(obj);
            str = scriptRuntime;
            if (scriptRuntime.length() == 0) {
                str2 = "";
                str = scriptRuntime;
            }
            str2 = null;
        }
        return newNamespace(str2, str);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Namespace)) {
            return false;
        }
        return equals((Namespace) obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.ScriptableObject
    public Object equivalentValues(Object obj) {
        if (!(obj instanceof Namespace)) {
            return Scriptable.NOT_FOUND;
        }
        return equals((Namespace) obj) ? Boolean.TRUE : Boolean.FALSE;
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(NAMESPACE_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        switch (methodId) {
            case 1:
                return jsConstructor(context, scriptable2 == null, objArr);
            case 2:
                return realThis(scriptable2, idFunctionObject).toString();
            case 3:
                return realThis(scriptable2, idFunctionObject).js_toSource();
            default:
                throw new IllegalArgumentException(String.valueOf(methodId));
        }
    }

    public void exportAsJSClass(boolean z) {
        exportAsJSClass(3, getParentScope(), z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        String str2;
        int length = str.length();
        int i = 0;
        if (length == 3) {
            str2 = "uri";
            i = 2;
        } else if (length == 6) {
            str2 = "prefix";
            i = 1;
        } else {
            str2 = null;
            i = 0;
        }
        if (str2 == null || str2 == str || !str2.equals(str)) {
        }
        if (i == 0) {
            return super.findInstanceIdInfo(str);
        }
        switch (i) {
            case 1:
            case 2:
                return instanceIdInfo(5, super.getMaxInstanceId() + i);
            default:
                throw new IllegalStateException();
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 3;
        if (length == 8) {
            char charAt = str.charAt(3);
            if (charAt == 'o') {
                str2 = "toSource";
            } else {
                if (charAt == 't') {
                    str2 = "toString";
                    i = 2;
                }
                str2 = null;
                i = 0;
            }
        } else {
            if (length == 11) {
                str2 = "constructor";
                i = 1;
            }
            str2 = null;
            i = 0;
        }
        int i2 = i;
        if (str2 != null) {
            i2 = i;
            if (str2 != str) {
                i2 = i;
                if (!str2.equals(str)) {
                    i2 = 0;
                }
            }
        }
        return i2;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Namespace";
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        return uri();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XmlNode.Namespace getDelegate() {
        return this.f859ns;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        switch (i - super.getMaxInstanceId()) {
            case 1:
                return "prefix";
            case 2:
                return "uri";
            default:
                return super.getInstanceIdName(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        switch (i - super.getMaxInstanceId()) {
            case 1:
                return this.f859ns.getPrefix() == null ? Undefined.instance : this.f859ns.getPrefix();
            case 2:
                return this.f859ns.getUri();
            default:
                return super.getInstanceIdValue(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return super.getMaxInstanceId() + 2;
    }

    public int hashCode() {
        return uri().hashCode();
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        int i2 = 0;
        switch (i) {
            case 1:
                i2 = 2;
                str = "constructor";
                break;
            case 2:
                str = "toString";
                break;
            case 3:
                str = "toSource";
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(NAMESPACE_TAG, i, str, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace newNamespace(String str) {
        return create(getParentScope(), this.prototype == null ? this : this.prototype, XmlNode.Namespace.create(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace newNamespace(String str, String str2) {
        if (str == null) {
            return newNamespace(str2);
        }
        return create(getParentScope(), this.prototype == null ? this : this.prototype, XmlNode.Namespace.create(str, str2));
    }

    public String prefix() {
        return this.f859ns.getPrefix();
    }

    public String toLocaleString() {
        return toString();
    }

    public String toString() {
        return uri();
    }

    public String uri() {
        return this.f859ns.getUri();
    }
}
