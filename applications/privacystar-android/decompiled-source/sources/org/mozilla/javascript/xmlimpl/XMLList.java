package org.mozilla.javascript.xmlimpl;

import android.support.p001v4.app.NotificationCompat;
import java.util.ArrayList;
import org.mozilla.javascript.Callable;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.xml.XMLObject;
import org.mozilla.javascript.xmlimpl.XmlNode;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/XMLList.class */
public class XMLList extends XMLObjectImpl implements Function {
    static final long serialVersionUID = -4543618751670781135L;
    private XMLObjectImpl targetObject = null;
    private XmlNode.QName targetProperty = null;
    private XmlNode.InternalList _annos = new XmlNode.InternalList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public XMLList(XMLLibImpl xMLLibImpl, Scriptable scriptable, XMLObject xMLObject) {
        super(xMLLibImpl, scriptable, xMLObject);
    }

    private Object applyOrCall(boolean z, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        String str = z ? "apply" : NotificationCompat.CATEGORY_CALL;
        if ((scriptable2 instanceof XMLList) && ((XMLList) scriptable2).targetProperty != null) {
            return ScriptRuntime.applyOrCall(z, context, scriptable, scriptable2, objArr);
        }
        throw ScriptRuntime.typeError1("msg.isnt.function", str);
    }

    private XMLList getPropertyList(XMLName xMLName) {
        XMLList newXMLList = newXMLList();
        newXMLList.setTargets(this, (xMLName.isDescendants() || xMLName.isAttributeName()) ? null : xMLName.toQname());
        for (int i = 0; i < length(); i++) {
            newXMLList.addToList(getXmlFromAnnotation(i).getPropertyList(xMLName));
        }
        return newXMLList;
    }

    private XML getXML(XmlNode.InternalList internalList, int i) {
        if (i < 0 || i >= length()) {
            return null;
        }
        return xmlFromNode(internalList.item(i));
    }

    private XML getXmlFromAnnotation(int i) {
        return getXML(this._annos, i);
    }

    private void insert(int i, XML xml) {
        if (i < length()) {
            XmlNode.InternalList internalList = new XmlNode.InternalList();
            internalList.add(this._annos, 0, i);
            internalList.add(xml);
            internalList.add(this._annos, i, length());
            this._annos = internalList;
        }
    }

    private void internalRemoveFromList(int i) {
        this._annos.remove(i);
    }

    private void replaceNode(XML xml, XML xml2) {
        xml.replaceWith(xml2);
    }

    private void setAttribute(XMLName xMLName, Object obj) {
        for (int i = 0; i < length(); i++) {
            getXmlFromAnnotation(i).setAttribute(xMLName, obj);
        }
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    void addMatches(XMLList xMLList, XMLName xMLName) {
        for (int i = 0; i < length(); i++) {
            getXmlFromAnnotation(i).addMatches(xMLList, xMLName);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addToList(Object obj) {
        this._annos.addToList(obj);
    }

    @Override // org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (this.targetProperty == null) {
            throw ScriptRuntime.notFunctionError(this);
        }
        String localName = this.targetProperty.getLocalName();
        boolean equals = localName.equals("apply");
        if (equals || localName.equals(NotificationCompat.CATEGORY_CALL)) {
            return applyOrCall(equals, context, scriptable, scriptable2, objArr);
        }
        if (!(scriptable2 instanceof XMLObject)) {
            throw ScriptRuntime.typeError1("msg.incompat.call", localName);
        }
        Object obj = null;
        Scriptable scriptable3 = scriptable2;
        loop0: while (true) {
            Scriptable scriptable4 = scriptable3;
            while (scriptable4 instanceof XMLObject) {
                XMLObject xMLObject = (XMLObject) scriptable4;
                obj = xMLObject.getFunctionProperty(context, localName);
                if (obj != Scriptable.NOT_FOUND) {
                    break loop0;
                }
                Scriptable extraMethodSource = xMLObject.getExtraMethodSource(context);
                obj = obj;
                scriptable4 = extraMethodSource;
                if (extraMethodSource != null) {
                    scriptable3 = extraMethodSource;
                    if (!(extraMethodSource instanceof XMLObject)) {
                        obj = ScriptableObject.getProperty(extraMethodSource, localName);
                        scriptable3 = extraMethodSource;
                    }
                }
            }
            break loop0;
        }
        if (obj instanceof Callable) {
            return ((Callable) obj).call(context, scriptable, scriptable3, objArr);
        }
        throw ScriptRuntime.notFunctionError(scriptable3, obj, localName);
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    XMLList child(int i) {
        XMLList newXMLList = newXMLList();
        for (int i2 = 0; i2 < length(); i2++) {
            newXMLList.addToList(getXmlFromAnnotation(i2).child(i));
        }
        return newXMLList;
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    XMLList child(XMLName xMLName) {
        XMLList newXMLList = newXMLList();
        for (int i = 0; i < length(); i++) {
            newXMLList.addToList(getXmlFromAnnotation(i).child(xMLName));
        }
        return newXMLList;
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    XMLList children() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < length(); i++) {
            XML xmlFromAnnotation = getXmlFromAnnotation(i);
            if (xmlFromAnnotation != null) {
                XMLList children = xmlFromAnnotation.children();
                int length = children.length();
                for (int i2 = 0; i2 < length; i2++) {
                    arrayList.add(children.item(i2));
                }
            }
        }
        XMLList newXMLList = newXMLList();
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            newXMLList.addToList(arrayList.get(i3));
        }
        return newXMLList;
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    XMLList comments() {
        XMLList newXMLList = newXMLList();
        for (int i = 0; i < length(); i++) {
            newXMLList.addToList(getXmlFromAnnotation(i).comments());
        }
        return newXMLList;
    }

    @Override // org.mozilla.javascript.Function
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        throw ScriptRuntime.typeError1("msg.not.ctor", "XMLList");
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    boolean contains(Object obj) {
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length()) {
                break;
            } else if (getXmlFromAnnotation(i).equivalentXml(obj)) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    XMLObjectImpl copy() {
        XMLList newXMLList = newXMLList();
        for (int i = 0; i < length(); i++) {
            newXMLList.addToList(getXmlFromAnnotation(i).copy());
        }
        return newXMLList;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void delete(int i) {
        if (i >= 0 && i < length()) {
            getXmlFromAnnotation(i).remove();
            internalRemoveFromList(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public void deleteXMLProperty(XMLName xMLName) {
        for (int i = 0; i < length(); i++) {
            XML xmlFromAnnotation = getXmlFromAnnotation(i);
            if (xmlFromAnnotation.isElement()) {
                xmlFromAnnotation.deleteXMLProperty(xMLName);
            }
        }
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    XMLList elements(XMLName xMLName) {
        XMLList newXMLList = newXMLList();
        for (int i = 0; i < length(); i++) {
            newXMLList.addToList(getXmlFromAnnotation(i).elements(xMLName));
        }
        return newXMLList;
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    boolean equivalentXml(Object obj) {
        boolean z;
        if ((obj instanceof Undefined) && length() == 0) {
            z = true;
        } else if (length() == 1) {
            z = getXmlFromAnnotation(0).equivalentXml(obj);
        } else {
            if (obj instanceof XMLList) {
                XMLList xMLList = (XMLList) obj;
                if (xMLList.length() == length()) {
                    int i = 0;
                    while (true) {
                        z = true;
                        if (i >= length()) {
                            break;
                        } else if (!getXmlFromAnnotation(i).equivalentXml(xMLList.getXmlFromAnnotation(i))) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
            z = false;
        }
        return z;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        return (i < 0 || i >= length()) ? Scriptable.NOT_FOUND : getXmlFromAnnotation(i);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "XMLList";
    }

    @Override // org.mozilla.javascript.xml.XMLObject
    public Scriptable getExtraMethodSource(Context context) {
        if (length() == 1) {
            return getXmlFromAnnotation(0);
        }
        return null;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object[] getIds() {
        Object[] objArr;
        int i = 0;
        if (!isPrototype()) {
            Object[] objArr2 = new Object[length()];
            while (true) {
                objArr = objArr2;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = Integer.valueOf(i);
                i++;
            }
        } else {
            objArr = new Object[0];
        }
        return objArr;
    }

    public Object[] getIdsForDebug() {
        return getIds();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XmlNode.InternalList getNodeList() {
        return this._annos;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public XML getXML() {
        if (length() == 1) {
            return getXmlFromAnnotation(0);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public Object getXMLProperty(XMLName xMLName) {
        return getPropertyList(xMLName);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        return i >= 0 && i < length();
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    boolean hasComplexContent() {
        int length = length();
        boolean z = true;
        if (length != 0) {
            if (length == 1) {
                z = getXmlFromAnnotation(0).hasComplexContent();
            } else {
                for (int i = 0; i < length; i++) {
                    if (getXmlFromAnnotation(i).isElement()) {
                        break;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    boolean hasOwnProperty(XMLName xMLName) {
        boolean z = false;
        boolean z2 = false;
        if (isPrototype()) {
            if (findPrototypeId(xMLName.localName()) != 0) {
                z2 = true;
            }
            return z2;
        }
        if (getPropertyList(xMLName).length() > 0) {
            z = true;
        }
        return z;
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    boolean hasSimpleContent() {
        if (length() == 0) {
            return true;
        }
        if (length() == 1) {
            return getXmlFromAnnotation(0).hasSimpleContent();
        }
        for (int i = 0; i < length(); i++) {
            if (getXmlFromAnnotation(i).isElement()) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public boolean hasXMLProperty(XMLName xMLName) {
        return getPropertyList(xMLName).length() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML item(int i) {
        return this._annos != null ? getXmlFromAnnotation(i) : createEmptyXML();
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    protected Object jsConstructor(Context context, boolean z, Object[] objArr) {
        if (objArr.length == 0) {
            return newXMLList();
        }
        Object obj = objArr[0];
        return (z || !(obj instanceof XMLList)) ? newXMLListFrom(obj) : obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public int length() {
        return this._annos != null ? this._annos.length() : 0;
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    void normalize() {
        for (int i = 0; i < length(); i++) {
            getXmlFromAnnotation(i).normalize();
        }
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    Object parent() {
        if (length() == 0) {
            return Undefined.instance;
        }
        XML xml = null;
        for (int i = 0; i < length(); i++) {
            Object parent = getXmlFromAnnotation(i).parent();
            if (!(parent instanceof XML)) {
                return Undefined.instance;
            }
            XML xml2 = (XML) parent;
            if (i == 0) {
                xml = xml2;
            } else if (!xml.m203is(xml2)) {
                return Undefined.instance;
            }
        }
        return xml;
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    XMLList processingInstructions(XMLName xMLName) {
        XMLList newXMLList = newXMLList();
        for (int i = 0; i < length(); i++) {
            newXMLList.addToList(getXmlFromAnnotation(i).processingInstructions(xMLName));
        }
        return newXMLList;
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    boolean propertyIsEnumerable(Object obj) {
        long j;
        if (obj instanceof Integer) {
            j = ((Integer) obj).intValue();
        } else if (obj instanceof Number) {
            double doubleValue = ((Number) obj).doubleValue();
            j = (long) doubleValue;
            if (j != doubleValue) {
                return false;
            }
            if (j == 0 && 1.0d / doubleValue < 0.0d) {
                return false;
            }
        } else {
            j = ScriptRuntime.testUint32String(ScriptRuntime.toString(obj));
        }
        boolean z = false;
        if (0 <= j) {
            z = false;
            if (j < length()) {
                z = true;
            }
        }
        return z;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        Object obj2;
        Object obj3;
        Object obj4 = Undefined.instance;
        if (obj == null) {
            obj2 = "null";
        } else {
            obj2 = obj;
            if (obj instanceof Undefined) {
                obj2 = "undefined";
            }
        }
        if (obj2 instanceof XMLObject) {
            obj3 = (XMLObject) obj2;
        } else if (this.targetProperty == null) {
            obj3 = newXMLFromJs(obj2.toString());
        } else {
            XML item = item(i);
            XMLObjectImpl xMLObjectImpl = item;
            if (item == null) {
                XML item2 = item(0);
                xMLObjectImpl = item2 == null ? newTextElementXML(null, this.targetProperty, null) : item2.copy();
            }
            ((XML) xMLObjectImpl).setChildren(obj2);
            obj3 = xMLObjectImpl;
        }
        Object parent = i < length() ? item(i).parent() : length() == 0 ? this.targetObject != null ? this.targetObject.getXML() : parent() : parent();
        if (parent instanceof XML) {
            XML xml = (XML) parent;
            if (i < length()) {
                XML xmlFromAnnotation = getXmlFromAnnotation(i);
                if (obj3 instanceof XML) {
                    replaceNode(xmlFromAnnotation, (XML) obj3);
                    replace(i, xmlFromAnnotation);
                } else if (obj3 instanceof XMLList) {
                    XMLList xMLList = (XMLList) obj3;
                    if (xMLList.length() > 0) {
                        int childIndex = xmlFromAnnotation.childIndex();
                        replaceNode(xmlFromAnnotation, xMLList.item(0));
                        replace(i, xMLList.item(0));
                        for (int i2 = 1; i2 < xMLList.length(); i2++) {
                            xml.insertChildAfter(xml.getXmlChild(childIndex), xMLList.item(i2));
                            childIndex++;
                            insert(i + i2, xMLList.item(i2));
                        }
                    }
                }
            } else {
                xml.appendChild(obj3);
                addToList(xml.getLastXmlChild());
            }
        } else if (i < length()) {
            XML xml2 = getXML(this._annos, i);
            if (obj3 instanceof XML) {
                replaceNode(xml2, (XML) obj3);
                replace(i, xml2);
            } else if (obj3 instanceof XMLList) {
                XMLList xMLList2 = (XMLList) obj3;
                if (xMLList2.length() > 0) {
                    replaceNode(xml2, xMLList2.item(0));
                    replace(i, xMLList2.item(0));
                    for (int i3 = 1; i3 < xMLList2.length(); i3++) {
                        insert(i + i3, xMLList2.item(i3));
                    }
                }
            }
        } else {
            addToList(obj3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public void putXMLProperty(XMLName xMLName, Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = "null";
        } else {
            obj2 = obj;
            if (obj instanceof Undefined) {
                obj2 = "undefined";
            }
        }
        if (length() > 1) {
            throw ScriptRuntime.typeError("Assignment to lists with more than one item is not supported");
        } else if (length() == 0) {
            if (this.targetObject == null || this.targetProperty == null || this.targetProperty.getLocalName() == null || this.targetProperty.getLocalName().length() <= 0) {
                throw ScriptRuntime.typeError("Assignment to empty XMLList without targets not supported");
            }
            addToList(newTextElementXML(null, this.targetProperty, null));
            if (xMLName.isAttributeName()) {
                setAttribute(xMLName, obj2);
            } else {
                item(0).putXMLProperty(xMLName, obj2);
                replace(0, item(0));
            }
            this.targetObject.putXMLProperty(XMLName.formProperty(this.targetProperty.getNamespace().getUri(), this.targetProperty.getLocalName()), this);
            replace(0, this.targetObject.getXML().getLastXmlChild());
        } else if (xMLName.isAttributeName()) {
            setAttribute(xMLName, obj2);
        } else {
            item(0).putXMLProperty(xMLName, obj2);
            replace(0, item(0));
        }
    }

    void remove() {
        for (int length = length() - 1; length >= 0; length--) {
            XML xmlFromAnnotation = getXmlFromAnnotation(length);
            if (xmlFromAnnotation != null) {
                xmlFromAnnotation.remove();
                internalRemoveFromList(length);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void replace(int i, XML xml) {
        if (i < length()) {
            XmlNode.InternalList internalList = new XmlNode.InternalList();
            internalList.add(this._annos, 0, i);
            internalList.add(xml);
            internalList.add(this._annos, i + 1, length());
            this._annos = internalList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTargets(XMLObjectImpl xMLObjectImpl, XmlNode.QName qName) {
        this.targetObject = xMLObjectImpl;
        this.targetProperty = qName;
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    XMLList text() {
        XMLList newXMLList = newXMLList();
        for (int i = 0; i < length(); i++) {
            newXMLList.addToList(getXmlFromAnnotation(i).text());
        }
        return newXMLList;
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    String toSource(int i) {
        return toXMLString();
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public String toString() {
        if (!hasSimpleContent()) {
            return toXMLString();
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length(); i++) {
            XML xmlFromAnnotation = getXmlFromAnnotation(i);
            if (!xmlFromAnnotation.isComment() && !xmlFromAnnotation.isProcessingInstruction()) {
                sb.append(xmlFromAnnotation.toString());
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    public String toXMLString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length(); i++) {
            if (getProcessor().isPrettyPrinting() && i != 0) {
                sb.append('\n');
            }
            sb.append(getXmlFromAnnotation(i).toXMLString());
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.xmlimpl.XMLObjectImpl
    Object valueOf() {
        return this;
    }
}
