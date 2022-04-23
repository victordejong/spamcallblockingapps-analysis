package org.mozilla.javascript.xmlimpl;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.NativeWith;
import org.mozilla.javascript.Ref;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.xml.XMLObject;
import org.mozilla.javascript.xmlimpl.XmlNode;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/XMLObjectImpl.class */
public abstract class XMLObjectImpl extends XMLObject {
    private static final int Id_addNamespace = 2;
    private static final int Id_appendChild = 3;
    private static final int Id_attribute = 4;
    private static final int Id_attributes = 5;
    private static final int Id_child = 6;
    private static final int Id_childIndex = 7;
    private static final int Id_children = 8;
    private static final int Id_comments = 9;
    private static final int Id_constructor = 1;
    private static final int Id_contains = 10;
    private static final int Id_copy = 11;
    private static final int Id_descendants = 12;
    private static final int Id_elements = 13;
    private static final int Id_hasComplexContent = 18;
    private static final int Id_hasOwnProperty = 17;
    private static final int Id_hasSimpleContent = 19;
    private static final int Id_inScopeNamespaces = 14;
    private static final int Id_insertChildAfter = 15;
    private static final int Id_insertChildBefore = 16;
    private static final int Id_length = 20;
    private static final int Id_localName = 21;
    private static final int Id_name = 22;
    private static final int Id_namespace = 23;
    private static final int Id_namespaceDeclarations = 24;
    private static final int Id_nodeKind = 25;
    private static final int Id_normalize = 26;
    private static final int Id_parent = 27;
    private static final int Id_prependChild = 28;
    private static final int Id_processingInstructions = 29;
    private static final int Id_propertyIsEnumerable = 30;
    private static final int Id_removeNamespace = 31;
    private static final int Id_replace = 32;
    private static final int Id_setChildren = 33;
    private static final int Id_setLocalName = 34;
    private static final int Id_setName = 35;
    private static final int Id_setNamespace = 36;
    private static final int Id_text = 37;
    private static final int Id_toSource = 39;
    private static final int Id_toString = 38;
    private static final int Id_toXMLString = 40;
    private static final int Id_valueOf = 41;
    private static final int MAX_PROTOTYPE_ID = 41;
    private static final Object XMLOBJECT_TAG = "XMLObject";
    private XMLLibImpl lib;
    private boolean prototypeFlag;

    /* JADX INFO: Access modifiers changed from: protected */
    public XMLObjectImpl(XMLLibImpl xMLLibImpl, Scriptable scriptable, XMLObject xMLObject) {
        initialize(xMLLibImpl, scriptable, xMLObject);
    }

    private static Object arg(Object[] objArr, int i) {
        return i < objArr.length ? objArr[i] : Undefined.instance;
    }

    private XMLList getMatches(XMLName xMLName) {
        XMLList newXMLList = newXMLList();
        addMatches(newXMLList, xMLName);
        return newXMLList;
    }

    private Object[] toObjectArray(Object[] objArr) {
        Object[] objArr2 = new Object[objArr.length];
        for (int i = 0; i < objArr2.length; i++) {
            objArr2[i] = objArr[i];
        }
        return objArr2;
    }

    private void xmlMethodNotFound(Object obj, String str) {
        throw ScriptRuntime.notFunctionError(obj, str);
    }

    abstract void addMatches(XMLList xMLList, XMLName xMLName);

    @Override // org.mozilla.javascript.xml.XMLObject
    public final Object addValues(Context context, boolean z, Object obj) {
        XMLObject xMLObject;
        XMLObject xMLObject2;
        if (!(obj instanceof XMLObject)) {
            return obj == Undefined.instance ? ScriptRuntime.toString(this) : super.addValues(context, z, obj);
        }
        if (z) {
            xMLObject2 = (XMLObject) obj;
            xMLObject = this;
        } else {
            xMLObject = (XMLObject) obj;
            xMLObject2 = this;
        }
        return this.lib.addXMLObjects(context, xMLObject, xMLObject2);
    }

    abstract XMLList child(int i);

    abstract XMLList child(XMLName xMLName);

    abstract XMLList children();

    abstract XMLList comments();

    abstract boolean contains(Object obj);

    abstract XMLObjectImpl copy();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XML createEmptyXML() {
        return newXML(XmlNode.createEmpty(getProcessor()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Namespace createNamespace(XmlNode.Namespace namespace) {
        if (namespace == null) {
            return null;
        }
        return this.lib.createNamespaces(new XmlNode.Namespace[]{namespace})[0];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Namespace[] createNamespaces(XmlNode.Namespace[] namespaceArr) {
        return this.lib.createNamespaces(namespaceArr);
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void delete(String str) {
        deleteXMLProperty(this.lib.toXMLNameFromString(Context.getCurrentContext(), str));
    }

    @Override // org.mozilla.javascript.xml.XMLObject
    public final boolean delete(Context context, Object obj) {
        Context context2 = context;
        if (context == null) {
            context2 = Context.getCurrentContext();
        }
        XMLName xMLNameOrIndex = this.lib.toXMLNameOrIndex(context2, obj);
        if (xMLNameOrIndex == null) {
            delete((int) ScriptRuntime.lastUint32Result(context2));
            return true;
        }
        deleteXMLProperty(xMLNameOrIndex);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void deleteXMLProperty(XMLName xMLName);

    final String ecmaEscapeAttributeValue(String str) {
        String escapeAttributeValue = this.lib.escapeAttributeValue(str);
        return escapeAttributeValue.substring(1, escapeAttributeValue.length() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XML ecmaToXml(Object obj) {
        return this.lib.ecmaToXml(obj);
    }

    abstract XMLList elements(XMLName xMLName);

    @Override // org.mozilla.javascript.xml.XMLObject
    public NativeWith enterDotQuery(Scriptable scriptable) {
        XMLWithScope xMLWithScope = new XMLWithScope(this.lib, scriptable, this);
        xMLWithScope.initAsDotQuery();
        return xMLWithScope;
    }

    @Override // org.mozilla.javascript.xml.XMLObject
    public NativeWith enterWith(Scriptable scriptable) {
        return new XMLWithScope(this.lib, scriptable, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.ScriptableObject
    public final Object equivalentValues(Object obj) {
        return equivalentXml(obj) ? Boolean.TRUE : Boolean.FALSE;
    }

    abstract boolean equivalentXml(Object obj);

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(XMLOBJECT_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        boolean z = true;
        if (methodId == 1) {
            if (scriptable2 != null) {
                z = false;
            }
            return jsConstructor(context, z, objArr);
        } else if (!(scriptable2 instanceof XMLObjectImpl)) {
            throw incompatibleCallError(idFunctionObject);
        } else {
            XMLObjectImpl xMLObjectImpl = (XMLObjectImpl) scriptable2;
            XML xml = xMLObjectImpl.getXML();
            String str = null;
            switch (methodId) {
                case 2:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "addNamespace");
                    }
                    return xml.addNamespace(this.lib.castToNamespace(context, arg(objArr, 0)));
                case 3:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "appendChild");
                    }
                    return xml.appendChild(arg(objArr, 0));
                case 4:
                    return xMLObjectImpl.getMatches(XMLName.create(this.lib.toNodeQName(context, arg(objArr, 0), true), true, false));
                case 5:
                    return xMLObjectImpl.getMatches(XMLName.create(XmlNode.QName.create(null, null), true, false));
                case 6:
                    XMLName xMLNameOrIndex = this.lib.toXMLNameOrIndex(context, arg(objArr, 0));
                    return xMLNameOrIndex == null ? xMLObjectImpl.child((int) ScriptRuntime.lastUint32Result(context)) : xMLObjectImpl.child(xMLNameOrIndex);
                case 7:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "childIndex");
                    }
                    return ScriptRuntime.wrapInt(xml.childIndex());
                case 8:
                    return xMLObjectImpl.children();
                case 9:
                    return xMLObjectImpl.comments();
                case 10:
                    return ScriptRuntime.wrapBoolean(xMLObjectImpl.contains(arg(objArr, 0)));
                case 11:
                    return xMLObjectImpl.copy();
                case 12:
                    return xMLObjectImpl.getMatches(XMLName.create(objArr.length == 0 ? XmlNode.QName.create(null, null) : this.lib.toNodeQName(context, objArr[0], false), false, true));
                case 13:
                    return xMLObjectImpl.elements(objArr.length == 0 ? XMLName.formStar() : this.lib.toXMLName(context, objArr[0]));
                case 14:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "inScopeNamespaces");
                    }
                    return context.newArray(scriptable, toObjectArray(xml.inScopeNamespaces()));
                case 15:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "insertChildAfter");
                    }
                    Object arg = arg(objArr, 0);
                    return (arg == null || (arg instanceof XML)) ? xml.insertChildAfter((XML) arg, arg(objArr, 1)) : Undefined.instance;
                case 16:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "insertChildBefore");
                    }
                    Object arg2 = arg(objArr, 0);
                    return (arg2 == null || (arg2 instanceof XML)) ? xml.insertChildBefore((XML) arg2, arg(objArr, 1)) : Undefined.instance;
                case 17:
                    return ScriptRuntime.wrapBoolean(xMLObjectImpl.hasOwnProperty(this.lib.toXMLName(context, arg(objArr, 0))));
                case 18:
                    return ScriptRuntime.wrapBoolean(xMLObjectImpl.hasComplexContent());
                case 19:
                    return ScriptRuntime.wrapBoolean(xMLObjectImpl.hasSimpleContent());
                case 20:
                    return ScriptRuntime.wrapInt(xMLObjectImpl.length());
                case 21:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "localName");
                    }
                    return xml.localName();
                case 22:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "name");
                    }
                    return xml.name();
                case 23:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "namespace");
                    }
                    if (objArr.length > 0) {
                        str = ScriptRuntime.toString(objArr[0]);
                    }
                    Namespace namespace = xml.namespace(str);
                    return namespace == null ? Undefined.instance : namespace;
                case 24:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "namespaceDeclarations");
                    }
                    return context.newArray(scriptable, toObjectArray(xml.namespaceDeclarations()));
                case 25:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "nodeKind");
                    }
                    return xml.nodeKind();
                case 26:
                    xMLObjectImpl.normalize();
                    return Undefined.instance;
                case 27:
                    return xMLObjectImpl.parent();
                case 28:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "prependChild");
                    }
                    return xml.prependChild(arg(objArr, 0));
                case 29:
                    return xMLObjectImpl.processingInstructions(objArr.length > 0 ? this.lib.toXMLName(context, objArr[0]) : XMLName.formStar());
                case 30:
                    return ScriptRuntime.wrapBoolean(xMLObjectImpl.propertyIsEnumerable(arg(objArr, 0)));
                case 31:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "removeNamespace");
                    }
                    return xml.removeNamespace(this.lib.castToNamespace(context, arg(objArr, 0)));
                case 32:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "replace");
                    }
                    XMLName xMLNameOrIndex2 = this.lib.toXMLNameOrIndex(context, arg(objArr, 0));
                    Object arg3 = arg(objArr, 1);
                    return xMLNameOrIndex2 == null ? xml.replace((int) ScriptRuntime.lastUint32Result(context), arg3) : xml.replace(xMLNameOrIndex2, arg3);
                case 33:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "setChildren");
                    }
                    return xml.setChildren(arg(objArr, 0));
                case 34:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "setLocalName");
                    }
                    Object arg4 = arg(objArr, 0);
                    xml.setLocalName(arg4 instanceof QName ? ((QName) arg4).localName() : ScriptRuntime.toString(arg4));
                    return Undefined.instance;
                case 35:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "setName");
                    }
                    xml.setName(this.lib.constructQName(context, objArr.length != 0 ? objArr[0] : Undefined.instance));
                    return Undefined.instance;
                case 36:
                    if (xml == null) {
                        xmlMethodNotFound(xMLObjectImpl, "setNamespace");
                    }
                    xml.setNamespace(this.lib.castToNamespace(context, arg(objArr, 0)));
                    return Undefined.instance;
                case 37:
                    return xMLObjectImpl.text();
                case 38:
                    return xMLObjectImpl.toString();
                case 39:
                    return xMLObjectImpl.toSource(ScriptRuntime.toInt32(objArr, 0));
                case 40:
                    return xMLObjectImpl.toXMLString();
                case 41:
                    return xMLObjectImpl.valueOf();
                default:
                    throw new IllegalArgumentException(String.valueOf(methodId));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void exportAsJSClass(boolean z) {
        this.prototypeFlag = true;
        exportAsJSClass(41, getParentScope(), z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:101:0x037c  */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int findPrototypeId(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 927
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.xmlimpl.XMLObjectImpl.findPrototypeId(java.lang.String):int");
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(String str, Scriptable scriptable) {
        return getXMLProperty(this.lib.toXMLNameFromString(Context.getCurrentContext(), str));
    }

    @Override // org.mozilla.javascript.xml.XMLObject
    public final Object get(Context context, Object obj) {
        Context context2 = context;
        if (context == null) {
            context2 = Context.getCurrentContext();
        }
        XMLName xMLNameOrIndex = this.lib.toXMLNameOrIndex(context2, obj);
        if (xMLNameOrIndex != null) {
            return getXMLProperty(xMLNameOrIndex);
        }
        Object obj2 = get((int) ScriptRuntime.lastUint32Result(context2), this);
        Object obj3 = obj2;
        if (obj2 == Scriptable.NOT_FOUND) {
            obj3 = Undefined.instance;
        }
        return obj3;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public final Object getDefaultValue(Class<?> cls) {
        return toString();
    }

    @Override // org.mozilla.javascript.xml.XMLObject
    public Object getFunctionProperty(Context context, int i) {
        if (isPrototype()) {
            return super.get(i, this);
        }
        Scriptable prototype = getPrototype();
        return prototype instanceof XMLObject ? ((XMLObject) prototype).getFunctionProperty(context, i) : NOT_FOUND;
    }

    @Override // org.mozilla.javascript.xml.XMLObject
    public Object getFunctionProperty(Context context, String str) {
        if (isPrototype()) {
            return super.get(str, this);
        }
        Scriptable prototype = getPrototype();
        return prototype instanceof XMLObject ? ((XMLObject) prototype).getFunctionProperty(context, str) : NOT_FOUND;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XMLLibImpl getLib() {
        return this.lib;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public final Scriptable getParentScope() {
        return super.getParentScope();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XmlProcessor getProcessor() {
        return this.lib.getProcessor();
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public final Scriptable getPrototype() {
        return super.getPrototype();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract XML getXML();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Object getXMLProperty(XMLName xMLName);

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(String str, Scriptable scriptable) {
        return hasXMLProperty(this.lib.toXMLNameFromString(Context.getCurrentContext(), str));
    }

    @Override // org.mozilla.javascript.xml.XMLObject
    public final boolean has(Context context, Object obj) {
        Context context2 = context;
        if (context == null) {
            context2 = Context.getCurrentContext();
        }
        XMLName xMLNameOrIndex = this.lib.toXMLNameOrIndex(context2, obj);
        return xMLNameOrIndex == null ? has((int) ScriptRuntime.lastUint32Result(context2), this) : hasXMLProperty(xMLNameOrIndex);
    }

    abstract boolean hasComplexContent();

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public final boolean hasInstance(Scriptable scriptable) {
        return super.hasInstance(scriptable);
    }

    abstract boolean hasOwnProperty(XMLName xMLName);

    abstract boolean hasSimpleContent();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean hasXMLProperty(XMLName xMLName);

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        int i2 = 1;
        switch (i) {
            case 1:
                initPrototypeConstructor(this instanceof XML ? new XMLCtor((XML) this, XMLOBJECT_TAG, i, 1) : new IdFunctionObject(this, XMLOBJECT_TAG, i, 1));
                return;
            case 2:
                str = "addNamespace";
                break;
            case 3:
                str = "appendChild";
                break;
            case 4:
                str = "attribute";
                break;
            case 5:
                str = "attributes";
                i2 = 0;
                break;
            case 6:
                str = "child";
                break;
            case 7:
                str = "childIndex";
                i2 = 0;
                break;
            case 8:
                str = "children";
                i2 = 0;
                break;
            case 9:
                str = "comments";
                i2 = 0;
                break;
            case 10:
                str = "contains";
                break;
            case 11:
                str = "copy";
                i2 = 0;
                break;
            case 12:
                str = "descendants";
                break;
            case 13:
                str = "elements";
                break;
            case 14:
                str = "inScopeNamespaces";
                i2 = 0;
                break;
            case 15:
                str = "insertChildAfter";
                i2 = 2;
                break;
            case 16:
                str = "insertChildBefore";
                i2 = 2;
                break;
            case 17:
                str = "hasOwnProperty";
                break;
            case 18:
                str = "hasComplexContent";
                i2 = 0;
                break;
            case 19:
                str = "hasSimpleContent";
                i2 = 0;
                break;
            case 20:
                str = "length";
                i2 = 0;
                break;
            case 21:
                str = "localName";
                i2 = 0;
                break;
            case 22:
                str = "name";
                i2 = 0;
                break;
            case 23:
                str = "namespace";
                break;
            case 24:
                str = "namespaceDeclarations";
                i2 = 0;
                break;
            case 25:
                str = "nodeKind";
                i2 = 0;
                break;
            case 26:
                str = "normalize";
                i2 = 0;
                break;
            case 27:
                str = "parent";
                i2 = 0;
                break;
            case 28:
                str = "prependChild";
                break;
            case 29:
                str = "processingInstructions";
                break;
            case 30:
                str = "propertyIsEnumerable";
                break;
            case 31:
                str = "removeNamespace";
                break;
            case 32:
                str = "replace";
                i2 = 2;
                break;
            case 33:
                str = "setChildren";
                break;
            case 34:
                str = "setLocalName";
                break;
            case 35:
                str = "setName";
                break;
            case 36:
                str = "setNamespace";
                break;
            case 37:
                str = "text";
                i2 = 0;
                break;
            case 38:
                str = "toString";
                i2 = 0;
                break;
            case 39:
                str = "toSource";
                break;
            case 40:
                str = "toXMLString";
                break;
            case 41:
                str = "valueOf";
                i2 = 0;
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(XMLOBJECT_TAG, i, str, i2);
    }

    final void initialize(XMLLibImpl xMLLibImpl, Scriptable scriptable, XMLObject xMLObject) {
        setParentScope(scriptable);
        setPrototype(xMLObject);
        this.prototypeFlag = xMLObject == null;
        this.lib = xMLLibImpl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isPrototype() {
        return this.prototypeFlag;
    }

    protected abstract Object jsConstructor(Context context, boolean z, Object[] objArr);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int length();

    @Override // org.mozilla.javascript.xml.XMLObject
    public Ref memberRef(Context context, Object obj, int i) {
        boolean z = false;
        boolean z2 = (i & 2) != 0;
        if ((i & 4) != 0) {
            z = true;
        }
        if (z2 || z) {
            XMLName create = XMLName.create(this.lib.toNodeQName(context, obj, z2), z2, z);
            create.initXMLObject(this);
            return create;
        }
        throw Kit.codeBug();
    }

    @Override // org.mozilla.javascript.xml.XMLObject
    public Ref memberRef(Context context, Object obj, Object obj2, int i) {
        boolean z = false;
        boolean z2 = (i & 2) != 0;
        if ((i & 4) != 0) {
            z = true;
        }
        XMLName create = XMLName.create(this.lib.toNodeQName(context, obj, obj2), z2, z);
        create.initXMLObject(this);
        return create;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final QName newQName(String str, String str2, String str3) {
        return this.lib.newQName(str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final QName newQName(XmlNode.QName qName) {
        return this.lib.newQName(qName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XML newTextElementXML(XmlNode xmlNode, XmlNode.QName qName, String str) {
        return this.lib.newTextElementXML(xmlNode, qName, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XML newXML(XmlNode xmlNode) {
        return this.lib.newXML(xmlNode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XML newXMLFromJs(Object obj) {
        return this.lib.newXMLFromJs(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XMLList newXMLList() {
        return this.lib.newXMLList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XMLList newXMLListFrom(Object obj) {
        return this.lib.newXMLListFrom(obj);
    }

    abstract void normalize();

    abstract Object parent();

    abstract XMLList processingInstructions(XMLName xMLName);

    abstract boolean propertyIsEnumerable(Object obj);

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
        putXMLProperty(this.lib.toXMLNameFromString(Context.getCurrentContext(), str), obj);
    }

    @Override // org.mozilla.javascript.xml.XMLObject
    public final void put(Context context, Object obj, Object obj2) {
        Context context2 = context;
        if (context == null) {
            context2 = Context.getCurrentContext();
        }
        XMLName xMLNameOrIndex = this.lib.toXMLNameOrIndex(context2, obj);
        if (xMLNameOrIndex == null) {
            put((int) ScriptRuntime.lastUint32Result(context2), this, obj2);
        } else {
            putXMLProperty(xMLNameOrIndex, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void putXMLProperty(XMLName xMLName, Object obj);

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public final void setParentScope(Scriptable scriptable) {
        super.setParentScope(scriptable);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public final void setPrototype(Scriptable scriptable) {
        super.setPrototype(scriptable);
    }

    abstract XMLList text();

    abstract String toSource(int i);

    public abstract String toString();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String toXMLString();

    abstract Object valueOf();

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML xmlFromNode(XmlNode xmlNode) {
        if (xmlNode.getXml() == null) {
            xmlNode.setXml(newXML(xmlNode));
        }
        return xmlNode.getXml();
    }
}
