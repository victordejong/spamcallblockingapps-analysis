package org.mozilla.javascript.xmlimpl;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.xml.XMLObject;
import org.mozilla.javascript.xmlimpl.XmlNode;
import org.w3c.dom.Node;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/XML.class */
public class XML extends XMLObjectImpl {
    static final long serialVersionUID = -630969919086449092L;
    private XmlNode node;

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML(XMLLibImpl xMLLibImpl, Scriptable scriptable, XMLObject xMLObject, XmlNode xmlNode) {
        super(xMLLibImpl, scriptable, xMLObject);
        initialize(xmlNode);
    }

    private XmlNode.Namespace adapt(Namespace namespace) {
        return namespace.prefix() == null ? XmlNode.Namespace.create(namespace.uri()) : XmlNode.Namespace.create(namespace.prefix(), namespace.uri());
    }

    private void addInScopeNamespace(Namespace namespace) {
        if (!isElement() || namespace.prefix() == null) {
            return;
        }
        if (namespace.prefix().length() != 0 || namespace.uri().length() != 0) {
            if (this.node.getQname().getNamespace().getPrefix().equals(namespace.prefix())) {
                this.node.invalidateNamespacePrefix();
            }
            this.node.declareNamespace(namespace.prefix(), namespace.uri());
        }
    }

    private String ecmaToString() {
        if (isAttribute() || isText()) {
            return ecmaValue();
        }
        if (!hasSimpleContent()) {
            return toXMLString();
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.node.getChildCount(); i++) {
            XmlNode child = this.node.getChild(i);
            if (!child.isProcessingInstructionType() && !child.isCommentType()) {
                sb.append(new XML(getLib(), getParentScope(), (XMLObject) getPrototype(), child).toString());
            }
        }
        return sb.toString();
    }

    private String ecmaValue() {
        return this.node.ecmaValue();
    }

    private int getChildIndexOf(XML xml) {
        for (int i = 0; i < this.node.getChildCount(); i++) {
            if (this.node.getChild(i).isSameNode(xml.node)) {
                return i;
            }
        }
        return -1;
    }

    private XmlNode[] getNodesForInsert(Object obj) {
        if (obj instanceof XML) {
            return new XmlNode[]{((XML) obj).node};
        }
        if (!(obj instanceof XMLList)) {
            return new XmlNode[]{XmlNode.createText(getProcessor(), ScriptRuntime.toString(obj))};
        }
        XMLList xMLList = (XMLList) obj;
        XmlNode[] xmlNodeArr = new XmlNode[xMLList.length()];
        for (int i = 0; i < xMLList.length(); i++) {
            xmlNodeArr[i] = xMLList.item(i).node;
        }
        return xmlNodeArr;
    }

    private XML toXML(XmlNode xmlNode) {
        if (xmlNode.getXml() == null) {
            xmlNode.setXml(newXML(xmlNode));
        }
        return xmlNode.getXml();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public void addMatches(XMLList xMLList, XMLName xMLName) {
        xMLName.addMatches(xMLList, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML addNamespace(Namespace namespace) {
        addInScopeNamespace(namespace);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML appendChild(Object obj) {
        if (this.node.isParentType()) {
            this.node.insertChildrenAt(this.node.getChildCount(), getNodesForInsert(obj));
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public XMLList child(int i) {
        XMLList newXMLList = newXMLList();
        newXMLList.setTargets(this, null);
        if (i >= 0 && i < this.node.getChildCount()) {
            newXMLList.addToList(getXmlChild(i));
        }
        return newXMLList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public XMLList child(XMLName xMLName) {
        XMLList newXMLList = newXMLList();
        XmlNode[] matchingChildren = this.node.getMatchingChildren(XmlNode.Filter.ELEMENT);
        for (int i = 0; i < matchingChildren.length; i++) {
            if (xMLName.matchesElement(matchingChildren[i].getQname())) {
                newXMLList.addToList(toXML(matchingChildren[i]));
            }
        }
        newXMLList.setTargets(this, xMLName.toQname());
        return newXMLList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int childIndex() {
        return this.node.getChildIndex();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public XMLList children() {
        XMLList newXMLList = newXMLList();
        newXMLList.setTargets(this, XMLName.formStar().toQname());
        for (XmlNode xmlNode : this.node.getMatchingChildren(XmlNode.Filter.TRUE)) {
            newXMLList.addToList(toXML(xmlNode));
        }
        return newXMLList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public XMLList comments() {
        XMLList newXMLList = newXMLList();
        this.node.addMatchingChildren(newXMLList, XmlNode.Filter.COMMENT);
        return newXMLList;
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    boolean contains(Object obj) {
        if (obj instanceof XML) {
            return equivalentXml(obj);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public XMLObjectImpl copy() {
        return newXML(this.node.copy());
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void delete(int i) {
        if (i == 0) {
            remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public void deleteXMLProperty(XMLName xMLName) {
        XMLList propertyList = getPropertyList(xMLName);
        for (int i = 0; i < propertyList.length(); i++) {
            propertyList.item(i).node.deleteMe();
        }
    }

    final String ecmaClass() {
        if (this.node.isTextType()) {
            return "text";
        }
        if (this.node.isAttributeType()) {
            return "attribute";
        }
        if (this.node.isCommentType()) {
            return "comment";
        }
        if (this.node.isProcessingInstructionType()) {
            return "processing-instruction";
        }
        if (this.node.isElementType()) {
            return "element";
        }
        throw new RuntimeException("Unrecognized type: " + this.node);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public XMLList elements(XMLName xMLName) {
        XMLList newXMLList = newXMLList();
        newXMLList.setTargets(this, xMLName.toQname());
        XmlNode[] matchingChildren = this.node.getMatchingChildren(XmlNode.Filter.ELEMENT);
        for (int i = 0; i < matchingChildren.length; i++) {
            if (xMLName.matches(toXML(matchingChildren[i]))) {
                newXMLList.addToList(toXML(matchingChildren[i]));
            }
        }
        return newXMLList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public boolean equivalentXml(Object obj) {
        if (obj instanceof XML) {
            return this.node.toXmlString(getProcessor()).equals(((XML) obj).node.toXmlString(getProcessor()));
        }
        boolean z = false;
        if (obj instanceof XMLList) {
            XMLList xMLList = (XMLList) obj;
            if (xMLList.length() == 1) {
                z = equivalentXml(xMLList.getXML());
            }
        } else if (hasSimpleContent()) {
            z = toString().equals(ScriptRuntime.toString(obj));
        }
        return z;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        return i == 0 ? this : Scriptable.NOT_FOUND;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XmlNode getAnnotation() {
        return this.node;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML[] getAttributes() {
        XmlNode[] attributes = this.node.getAttributes();
        XML[] xmlArr = new XML[attributes.length];
        for (int i = 0; i < xmlArr.length; i++) {
            xmlArr[i] = toXML(attributes[i]);
        }
        return xmlArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML[] getChildren() {
        if (!isElement()) {
            return null;
        }
        XmlNode[] matchingChildren = this.node.getMatchingChildren(XmlNode.Filter.TRUE);
        XML[] xmlArr = new XML[matchingChildren.length];
        for (int i = 0; i < xmlArr.length; i++) {
            xmlArr[i] = toXML(matchingChildren[i]);
        }
        return xmlArr;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "XML";
    }

    @Override // org.mozilla.javascript.xml.XMLObject
    public Scriptable getExtraMethodSource(Context context) {
        if (hasSimpleContent()) {
            return ScriptRuntime.toObjectOrNull(context, toString());
        }
        return null;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object[] getIds() {
        return isPrototype() ? new Object[0] : new Object[]{0};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML getLastXmlChild() {
        int childCount = this.node.getChildCount() - 1;
        if (childCount < 0) {
            return null;
        }
        return getXmlChild(childCount);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XmlNode.QName getNodeQname() {
        return this.node.getQname();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XMLList getPropertyList(XMLName xMLName) {
        return xMLName.getMyValueOn(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public final XML getXML() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public Object getXMLProperty(XMLName xMLName) {
        return getPropertyList(xMLName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML getXmlChild(int i) {
        XmlNode child = this.node.getChild(i);
        if (child.getXml() == null) {
            child.setXml(newXML(child));
        }
        return child.getXml();
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        return i == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public boolean hasComplexContent() {
        return !hasSimpleContent();
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    boolean hasOwnProperty(XMLName xMLName) {
        boolean z = false;
        if (!isPrototype() ? getPropertyList(xMLName).length() > 0 : findPrototypeId(xMLName.localName()) != 0) {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public boolean hasSimpleContent() {
        if (isComment() || isProcessingInstruction()) {
            return false;
        }
        if (isText() || this.node.isAttributeType()) {
            return true;
        }
        return !this.node.hasChildElement();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public boolean hasXMLProperty(XMLName xMLName) {
        return getPropertyList(xMLName).length() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace[] inScopeNamespaces() {
        return createNamespaces(this.node.getInScopeNamespaces());
    }

    void initialize(XmlNode xmlNode) {
        this.node = xmlNode;
        this.node.setXml(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML insertChildAfter(XML xml, Object obj) {
        if (xml == null) {
            prependChild(obj);
        } else {
            XmlNode[] nodesForInsert = getNodesForInsert(obj);
            int childIndexOf = getChildIndexOf(xml);
            if (childIndexOf != -1) {
                this.node.insertChildrenAt(childIndexOf + 1, nodesForInsert);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML insertChildBefore(XML xml, Object obj) {
        if (xml == null) {
            appendChild(obj);
        } else {
            XmlNode[] nodesForInsert = getNodesForInsert(obj);
            int childIndexOf = getChildIndexOf(xml);
            if (childIndexOf != -1) {
                this.node.insertChildrenAt(childIndexOf, nodesForInsert);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: is */
    public boolean m203is(XML xml) {
        return this.node.isSameNode(xml.node);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isAttribute() {
        return this.node.isAttributeType();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isComment() {
        return this.node.isCommentType();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isElement() {
        return this.node.isElementType();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isProcessingInstruction() {
        return this.node.isProcessingInstructionType();
    }

    final boolean isText() {
        return this.node.isTextType();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (r7[0] == org.mozilla.javascript.Undefined.instance) goto L_0x0016;
     */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.Object jsConstructor(org.mozilla.javascript.Context r5, boolean r6, java.lang.Object[] r7) {
        /*
            r4 = this;
            r0 = r7
            int r0 = r0.length
            if (r0 == 0) goto L_0x0016
            r0 = r7
            r1 = 0
            r0 = r0[r1]
            if (r0 == 0) goto L_0x0016
            r0 = r7
            r5 = r0
            r0 = r7
            r1 = 0
            r0 = r0[r1]
            java.lang.Object r1 = org.mozilla.javascript.Undefined.instance
            if (r0 != r1) goto L_0x0021
        L_0x0016:
            r0 = 1
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r5 = r0
            r0 = r5
            r1 = 0
            java.lang.String r2 = ""
            r0[r1] = r2
        L_0x0021:
            r0 = r4
            r1 = r5
            r2 = 0
            r1 = r1[r2]
            org.mozilla.javascript.xmlimpl.XML r0 = r0.ecmaToXml(r1)
            r5 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0032
            r0 = r5
            org.mozilla.javascript.xmlimpl.XMLObjectImpl r0 = r0.copy()
            return r0
        L_0x0032:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.xmlimpl.XML.jsConstructor(org.mozilla.javascript.Context, boolean, java.lang.Object[]):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public int length() {
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String localName() {
        if (name() == null) {
            return null;
        }
        return name().localName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML makeXmlFromString(XMLName xMLName, String str) {
        try {
            return newTextElementXML(this.node, xMLName.toQname(), str);
        } catch (Exception e) {
            throw ScriptRuntime.typeError(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public QName name() {
        if (isText() || isComment()) {
            return null;
        }
        return isProcessingInstruction() ? newQName("", this.node.getQname().getLocalName(), null) : newQName(this.node.getQname());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace namespace(String str) {
        return str == null ? createNamespace(this.node.getNamespaceDeclaration()) : createNamespace(this.node.getNamespaceDeclaration(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace[] namespaceDeclarations() {
        return createNamespaces(this.node.getNamespaceDeclarations());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object nodeKind() {
        return ecmaClass();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public void normalize() {
        this.node.normalize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public Object parent() {
        if (this.node.parent() == null) {
            return null;
        }
        return newXML(this.node.parent());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML prependChild(Object obj) {
        if (this.node.isParentType()) {
            this.node.insertChildrenAt(0, getNodesForInsert(obj));
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public XMLList processingInstructions(XMLName xMLName) {
        XMLList newXMLList = newXMLList();
        this.node.addMatchingChildren(newXMLList, XmlNode.Filter.PROCESSING_INSTRUCTION(xMLName));
        return newXMLList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        if ((1.0d / r0) > 0.0d) goto L_0x0017;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (((java.lang.Integer) r6).intValue() == 0) goto L_0x0017;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
        r7 = true;
     */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean propertyIsEnumerable(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof java.lang.Integer
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001c
            r0 = r8
            r7 = r0
            r0 = r6
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            if (r0 != 0) goto L_0x004e
        L_0x0017:
            r0 = 1
            r7 = r0
            goto L_0x004e
        L_0x001c:
            r0 = r6
            boolean r0 = r0 instanceof java.lang.Number
            if (r0 == 0) goto L_0x0043
            r0 = r6
            java.lang.Number r0 = (java.lang.Number) r0
            double r0 = r0.doubleValue()
            r9 = r0
            r0 = r8
            r7 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004e
            r0 = r8
            r7 = r0
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r1 = r9
            double r0 = r0 / r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x004e
            goto L_0x0017
        L_0x0043:
            r0 = r6
            java.lang.String r0 = org.mozilla.javascript.ScriptRuntime.toString(r0)
            java.lang.String r1 = "0"
            boolean r0 = r0.equals(r1)
            r7 = r0
        L_0x004e:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.xmlimpl.XML.propertyIsEnumerable(java.lang.Object):boolean");
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        throw ScriptRuntime.typeError("Assignment to indexed XML is not allowed");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public void putXMLProperty(XMLName xMLName, Object obj) {
        if (!isPrototype()) {
            xMLName.setMyValueOn(this, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void remove() {
        this.node.deleteMe();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeChild(int i) {
        this.node.removeChild(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML removeNamespace(Namespace namespace) {
        if (!isElement()) {
            return this;
        }
        this.node.removeNamespace(adapt(namespace));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML replace(int i, Object obj) {
        XMLList child = child(i);
        if (child.length() > 0) {
            insertChildAfter(child.item(0), obj);
            removeChild(i);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML replace(XMLName xMLName, Object obj) {
        putXMLProperty(xMLName, obj);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void replaceWith(XML xml) {
        if (this.node.parent() == null) {
            initialize(xml.node);
        } else {
            this.node.replaceWith(xml.node);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAttribute(XMLName xMLName, Object obj) {
        if (!isElement()) {
            throw new IllegalStateException("Can only set attributes on elements.");
        } else if (xMLName.uri() != null || !xMLName.localName().equals("*")) {
            this.node.setAttribute(xMLName.toQname(), ScriptRuntime.toString(obj));
        } else {
            throw ScriptRuntime.typeError("@* assignment not supported.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML setChildren(Object obj) {
        if (!isElement()) {
            return this;
        }
        while (this.node.getChildCount() > 0) {
            this.node.removeChild(0);
        }
        this.node.insertChildrenAt(0, getNodesForInsert(obj));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLocalName(String str) {
        if (!isText() && !isComment()) {
            this.node.setLocalName(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setName(QName qName) {
        if (!isText() && !isComment()) {
            if (isProcessingInstruction()) {
                this.node.setLocalName(qName.localName());
            } else {
                this.node.renameNode(qName.getDelegate());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNamespace(Namespace namespace) {
        if (!isText() && !isComment() && !isProcessingInstruction()) {
            setName(newQName(namespace.uri(), localName(), namespace.prefix()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public XMLList text() {
        XMLList newXMLList = newXMLList();
        this.node.addMatchingChildren(newXMLList, XmlNode.Filter.TEXT);
        return newXMLList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Node toDomNode() {
        return this.node.toDomNode();
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    String toSource(int i) {
        return toXMLString();
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public String toString() {
        return ecmaToString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public String toXMLString() {
        return this.node.ecmaToXMLString(getProcessor());
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    Object valueOf() {
        return this;
    }
}
