package org.mozilla.javascript.xmlimpl;

import java.io.Serializable;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.Ref;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.Wrapper;
import org.mozilla.javascript.xml.XMLLib;
import org.mozilla.javascript.xml.XMLObject;
import org.mozilla.javascript.xmlimpl.XmlNode;
import org.spongycastle.asn1.cmc.BodyPartID;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/XMLLibImpl.class */
public final class XMLLibImpl extends XMLLib implements Serializable {
    private static final long serialVersionUID = 1;
    private Scriptable globalScope;
    private Namespace namespacePrototype;
    private XmlProcessor options = new XmlProcessor();
    private QName qnamePrototype;
    private XMLList xmlListPrototype;
    private XML xmlPrototype;

    private XMLLibImpl(Scriptable scriptable) {
        this.globalScope = scriptable;
    }

    private static RuntimeException badXMLName(Object obj) {
        String str;
        if (obj instanceof Number) {
            str = "Can not construct XML name from number: ";
        } else if (obj instanceof Boolean) {
            str = "Can not construct XML name from boolean: ";
        } else if (obj == Undefined.instance || obj == null) {
            str = "Can not construct XML name from ";
        } else {
            throw new IllegalArgumentException(obj.toString());
        }
        return ScriptRuntime.typeError(str + ScriptRuntime.toString(obj));
    }

    private void exportToScope(boolean z) {
        this.xmlPrototype = newXML(XmlNode.createText(this.options, ""));
        this.xmlListPrototype = newXMLList();
        this.namespacePrototype = Namespace.create(this.globalScope, null, XmlNode.Namespace.GLOBAL);
        this.qnamePrototype = QName.create(this, this.globalScope, null, XmlNode.QName.create(XmlNode.Namespace.create(""), ""));
        this.xmlPrototype.exportAsJSClass(z);
        this.xmlListPrototype.exportAsJSClass(z);
        this.namespacePrototype.exportAsJSClass(z);
        this.qnamePrototype.exportAsJSClass(z);
    }

    private String getDefaultNamespaceURI(Context context) {
        return getDefaultNamespace(context).uri();
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        XMLLibImpl xMLLibImpl = new XMLLibImpl(scriptable);
        if (xMLLibImpl.bindToScope(scriptable) == xMLLibImpl) {
            xMLLibImpl.exportToScope(z);
        }
    }

    private XML parse(String str) {
        try {
            return newXML(XmlNode.createElement(this.options, getDefaultNamespaceURI(Context.getCurrentContext()), str));
        } catch (SAXException e) {
            throw ScriptRuntime.typeError("Cannot parse XML: " + e.getMessage());
        }
    }

    public static Node toDomNode(Object obj) {
        if (obj instanceof XML) {
            return ((XML) obj).toDomNode();
        }
        throw new IllegalArgumentException("xmlObject is not an XML object in JavaScript.");
    }

    private Ref xmlPrimaryReference(Context context, XMLName xMLName, Scriptable scriptable) {
        XMLObjectImpl xMLObjectImpl;
        XMLObjectImpl xMLObjectImpl2 = null;
        while (true) {
            xMLObjectImpl = xMLObjectImpl2;
            if (scriptable instanceof XMLWithScope) {
                XMLObjectImpl xMLObjectImpl3 = (XMLObjectImpl) scriptable.getPrototype();
                if (xMLObjectImpl3.hasXMLProperty(xMLName)) {
                    xMLObjectImpl = xMLObjectImpl3;
                    break;
                }
                xMLObjectImpl = xMLObjectImpl2;
                if (xMLObjectImpl2 == null) {
                    xMLObjectImpl = xMLObjectImpl3;
                }
            }
            Scriptable parentScope = scriptable.getParentScope();
            xMLObjectImpl2 = xMLObjectImpl;
            scriptable = parentScope;
            if (parentScope == null) {
                break;
            }
        }
        if (xMLObjectImpl != null) {
            xMLName.initXMLObject(xMLObjectImpl);
        }
        return xMLName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object addXMLObjects(Context context, XMLObject xMLObject, XMLObject xMLObject2) {
        XMLList newXMLList = newXMLList();
        if (xMLObject instanceof XMLList) {
            XMLList xMLList = (XMLList) xMLObject;
            if (xMLList.length() == 1) {
                newXMLList.addToList(xMLList.item(0));
            } else {
                newXMLList = newXMLListFrom(xMLObject);
            }
        } else {
            newXMLList.addToList(xMLObject);
        }
        if (xMLObject2 instanceof XMLList) {
            XMLList xMLList2 = (XMLList) xMLObject2;
            for (int i = 0; i < xMLList2.length(); i++) {
                newXMLList.addToList(xMLList2.item(i));
            }
        } else if (xMLObject2 instanceof XML) {
            newXMLList.addToList(xMLObject2);
        }
        return newXMLList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace castToNamespace(Context context, Object obj) {
        return this.namespacePrototype.castToNamespace(obj);
    }

    QName castToQName(Context context, Object obj) {
        return this.qnamePrototype.castToQName(this, context, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public QName constructQName(Context context, Object obj) {
        return this.qnamePrototype.constructQName(this, context, obj);
    }

    QName constructQName(Context context, Object obj, Object obj2) {
        return this.qnamePrototype.constructQName(this, context, obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace[] createNamespaces(XmlNode.Namespace[] namespaceArr) {
        Namespace[] namespaceArr2 = new Namespace[namespaceArr.length];
        for (int i = 0; i < namespaceArr.length; i++) {
            namespaceArr2[i] = this.namespacePrototype.newNamespace(namespaceArr[i].getPrefix(), namespaceArr[i].getUri());
        }
        return namespaceArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XML ecmaToXml(Object obj) {
        if (obj == null || obj == Undefined.instance) {
            throw ScriptRuntime.typeError("Cannot convert " + obj + " to XML");
        } else if (obj instanceof XML) {
            return (XML) obj;
        } else {
            if (obj instanceof XMLList) {
                XMLList xMLList = (XMLList) obj;
                if (xMLList.getXML() != null) {
                    return xMLList.getXML();
                }
                throw ScriptRuntime.typeError("Cannot convert list of >1 element to XML");
            }
            Object obj2 = obj;
            if (obj instanceof Wrapper) {
                obj2 = ((Wrapper) obj).unwrap();
            }
            if (obj2 instanceof Node) {
                return newXML(XmlNode.createElementFromNode((Node) obj2));
            }
            String scriptRuntime = ScriptRuntime.toString(obj2);
            return (scriptRuntime.length() <= 0 || scriptRuntime.charAt(0) != '<') ? newXML(XmlNode.createText(this.options, scriptRuntime)) : parse(scriptRuntime);
        }
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public String escapeAttributeValue(Object obj) {
        return this.options.escapeAttributeValue(obj);
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public String escapeTextValue(Object obj) {
        return this.options.escapeTextValue(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace getDefaultNamespace(Context context) {
        Context context2 = context;
        if (context == null) {
            Context currentContext = Context.getCurrentContext();
            context2 = currentContext;
            if (currentContext == null) {
                return this.namespacePrototype;
            }
        }
        Object searchDefaultNamespace = ScriptRuntime.searchDefaultNamespace(context2);
        if (searchDefaultNamespace != null && (searchDefaultNamespace instanceof Namespace)) {
            return (Namespace) searchDefaultNamespace;
        }
        return this.namespacePrototype;
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public int getPrettyIndent() {
        return this.options.getPrettyIndent();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XmlProcessor getProcessor() {
        return this.options;
    }

    @Deprecated
    Scriptable globalScope() {
        return this.globalScope;
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public boolean isIgnoreComments() {
        return this.options.isIgnoreComments();
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public boolean isIgnoreProcessingInstructions() {
        return this.options.isIgnoreProcessingInstructions();
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public boolean isIgnoreWhitespace() {
        return this.options.isIgnoreWhitespace();
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public boolean isPrettyPrinting() {
        return this.options.isPrettyPrinting();
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public boolean isXMLName(Context context, Object obj) {
        return XMLName.accept(obj);
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public Ref nameRef(Context context, Object obj, Object obj2, Scriptable scriptable, int i) {
        XMLName create = XMLName.create(toNodeQName(context, obj, obj2), false, false);
        if ((i & 2) != 0 && !create.isAttributeName()) {
            create.setAttributeName();
        }
        return xmlPrimaryReference(context, create, scriptable);
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public Ref nameRef(Context context, Object obj, Scriptable scriptable, int i) {
        if ((i & 2) != 0) {
            return xmlPrimaryReference(context, toAttributeName(context, obj), scriptable);
        }
        throw Kit.codeBug();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace newNamespace(String str) {
        return this.namespacePrototype.newNamespace(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public QName newQName(String str, String str2, String str3) {
        return this.qnamePrototype.newQName(this, str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public QName newQName(XmlNode.QName qName) {
        return QName.create(this, this.globalScope, this.qnamePrototype, qName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XML newTextElementXML(XmlNode xmlNode, XmlNode.QName qName, String str) {
        return newXML(XmlNode.newElementWithText(this.options, xmlNode, qName, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML newXML(XmlNode xmlNode) {
        return new XML(this, this.globalScope, this.xmlPrototype, xmlNode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XML newXMLFromJs(Object obj) {
        String xMLString = (obj == null || obj == Undefined.instance) ? "" : obj instanceof XMLObjectImpl ? ((XMLObjectImpl) obj).toXMLString() : ScriptRuntime.toString(obj);
        if (!xMLString.trim().startsWith("<>")) {
            return xMLString.indexOf("<") == -1 ? newXML(XmlNode.createText(this.options, xMLString)) : parse(xMLString);
        }
        throw ScriptRuntime.typeError("Invalid use of XML object anonymous tags <></>.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XMLList newXMLList() {
        return new XMLList(this, this.globalScope, this.xmlListPrototype);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XMLList newXMLListFrom(Object obj) {
        XMLList newXMLList = newXMLList();
        if (obj == null || (obj instanceof Undefined)) {
            return newXMLList;
        }
        if (obj instanceof XML) {
            newXMLList.getNodeList().add((XML) obj);
            return newXMLList;
        } else if (obj instanceof XMLList) {
            newXMLList.getNodeList().add(((XMLList) obj).getNodeList());
            return newXMLList;
        } else {
            String trim = ScriptRuntime.toString(obj).trim();
            String str = trim;
            if (!trim.startsWith("<>")) {
                str = "<>" + trim + "</>";
            }
            String str2 = "<fragment>" + str.substring(2);
            if (!str2.endsWith("</>")) {
                throw ScriptRuntime.typeError("XML with anonymous tag missing end anonymous tag");
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str2.substring(0, str2.length() - 3));
            sb.append("</fragment>");
            XMLList children = newXMLFromJs(sb.toString()).children();
            for (int i = 0; i < children.getNodeList().length(); i++) {
                newXMLList.getNodeList().add((XML) children.item(i).copy());
            }
            return newXMLList;
        }
    }

    @Deprecated
    QName qnamePrototype() {
        return this.qnamePrototype;
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public void setIgnoreComments(boolean z) {
        this.options.setIgnoreComments(z);
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public void setIgnoreProcessingInstructions(boolean z) {
        this.options.setIgnoreProcessingInstructions(z);
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public void setIgnoreWhitespace(boolean z) {
        this.options.setIgnoreWhitespace(z);
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public void setPrettyIndent(int i) {
        this.options.setPrettyIndent(i);
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public void setPrettyPrinting(boolean z) {
        this.options.setPrettyPrinting(z);
    }

    @Deprecated
    XMLName toAttributeName(Context context, Object obj) {
        if (obj instanceof XMLName) {
            return (XMLName) obj;
        }
        if (obj instanceof QName) {
            return XMLName.create(((QName) obj).getDelegate(), true, false);
        }
        if ((obj instanceof Boolean) || (obj instanceof Number) || obj == Undefined.instance || obj == null) {
            throw badXMLName(obj);
        }
        String scriptRuntime = obj instanceof String ? (String) obj : ScriptRuntime.toString(obj);
        String str = scriptRuntime;
        if (scriptRuntime != null) {
            str = scriptRuntime;
            if (scriptRuntime.equals("*")) {
                str = null;
            }
        }
        return XMLName.create(XmlNode.QName.create(XmlNode.Namespace.create(""), str), true, false);
    }

    @Override // org.mozilla.javascript.xml.XMLLib
    public Object toDefaultXmlNamespace(Context context, Object obj) {
        return this.namespacePrototype.constructNamespace(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XmlNode.QName toNodeQName(Context context, Object obj, Object obj2) {
        XmlNode.Namespace namespace;
        String localName = obj2 instanceof QName ? ((QName) obj2).localName() : ScriptRuntime.toString(obj2);
        if (obj == Undefined.instance) {
            if (!"*".equals(localName)) {
                namespace = getDefaultNamespace(context).getDelegate();
            }
            namespace = null;
        } else {
            if (obj != null) {
                namespace = obj instanceof Namespace ? ((Namespace) obj).getDelegate() : this.namespacePrototype.constructNamespace(obj).getDelegate();
            }
            namespace = null;
        }
        String str = localName;
        if (localName != null) {
            str = localName;
            if (localName.equals("*")) {
                str = null;
            }
        }
        return XmlNode.QName.create(namespace, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XmlNode.QName toNodeQName(Context context, Object obj, boolean z) {
        if (obj instanceof XMLName) {
            return ((XMLName) obj).toQname();
        }
        if (obj instanceof QName) {
            return ((QName) obj).getDelegate();
        }
        if ((obj instanceof Boolean) || (obj instanceof Number) || obj == Undefined.instance || obj == null) {
            throw badXMLName(obj);
        }
        return toNodeQName(context, obj instanceof String ? (String) obj : ScriptRuntime.toString(obj), z);
    }

    XmlNode.QName toNodeQName(Context context, String str, boolean z) {
        return (str == null || !str.equals("*")) ? z ? XmlNode.QName.create(XmlNode.Namespace.GLOBAL, str) : XmlNode.QName.create(getDefaultNamespace(context).getDelegate(), str) : XmlNode.QName.create(null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XMLName toXMLName(Context context, Object obj) {
        XMLName xMLName;
        if (obj instanceof XMLName) {
            xMLName = (XMLName) obj;
        } else if (obj instanceof QName) {
            QName qName = (QName) obj;
            xMLName = XMLName.formProperty(qName.uri(), qName.localName());
        } else if (obj instanceof String) {
            xMLName = toXMLNameFromString(context, (String) obj);
        } else if ((obj instanceof Boolean) || (obj instanceof Number) || obj == Undefined.instance || obj == null) {
            throw badXMLName(obj);
        } else {
            xMLName = toXMLNameFromString(context, ScriptRuntime.toString(obj));
        }
        return xMLName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XMLName toXMLNameFromString(Context context, String str) {
        return XMLName.create(getDefaultNamespaceURI(context), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XMLName toXMLNameOrIndex(Context context, Object obj) {
        XMLName xMLName;
        if (obj instanceof XMLName) {
            xMLName = (XMLName) obj;
        } else if (obj instanceof String) {
            String str = (String) obj;
            long testUint32String = ScriptRuntime.testUint32String(str);
            if (testUint32String >= 0) {
                ScriptRuntime.storeUint32Result(context, testUint32String);
                xMLName = null;
            } else {
                xMLName = toXMLNameFromString(context, str);
            }
        } else if (obj instanceof Number) {
            double doubleValue = ((Number) obj).doubleValue();
            long j = (long) doubleValue;
            if (j != doubleValue || 0 > j || j > BodyPartID.bodyIdMax) {
                throw badXMLName(obj);
            }
            ScriptRuntime.storeUint32Result(context, j);
            xMLName = null;
        } else if (obj instanceof QName) {
            QName qName = (QName) obj;
            String uri = qName.uri();
            boolean z = false;
            if (uri != null) {
                z = false;
                if (uri.length() == 0) {
                    long testUint32String2 = ScriptRuntime.testUint32String(uri);
                    z = false;
                    if (testUint32String2 >= 0) {
                        ScriptRuntime.storeUint32Result(context, testUint32String2);
                        z = true;
                    }
                }
            }
            xMLName = null;
            if (!z) {
                xMLName = XMLName.formProperty(uri, qName.localName());
            }
        } else if ((obj instanceof Boolean) || obj == Undefined.instance || obj == null) {
            throw badXMLName(obj);
        } else {
            String scriptRuntime = ScriptRuntime.toString(obj);
            long testUint32String3 = ScriptRuntime.testUint32String(scriptRuntime);
            if (testUint32String3 >= 0) {
                ScriptRuntime.storeUint32Result(context, testUint32String3);
                xMLName = null;
            } else {
                xMLName = toXMLNameFromString(context, scriptRuntime);
            }
        }
        return xMLName;
    }
}
