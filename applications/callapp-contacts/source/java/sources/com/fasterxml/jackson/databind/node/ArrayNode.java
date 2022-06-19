package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonPointer;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.util.RawValue;
import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/node/ArrayNode.class */
public class ArrayNode extends ContainerNode<ArrayNode> implements Serializable {
    private static final long serialVersionUID = 1;
    private final List<JsonNode> _children;

    public ArrayNode(JsonNodeFactory jsonNodeFactory) {
        super(jsonNodeFactory);
        this._children = new ArrayList();
    }

    public ArrayNode(JsonNodeFactory jsonNodeFactory, int i) {
        super(jsonNodeFactory);
        this._children = new ArrayList(i);
    }

    public ArrayNode(JsonNodeFactory jsonNodeFactory, List<JsonNode> list) {
        super(jsonNodeFactory);
        this._children = list;
    }

    protected ArrayNode _add(JsonNode jsonNode) {
        this._children.add(jsonNode);
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNode _at(JsonPointer jsonPointer) {
        return get(jsonPointer.getMatchingIndex());
    }

    protected boolean _childrenEqual(ArrayNode arrayNode) {
        return this._children.equals(arrayNode._children);
    }

    protected ArrayNode _insert(int i, JsonNode jsonNode) {
        if (i < 0) {
            this._children.add(0, jsonNode);
        } else if (i >= this._children.size()) {
            this._children.add(jsonNode);
        } else {
            this._children.add(i, jsonNode);
        }
        return this;
    }

    public ArrayNode add(double d) {
        return _add(numberNode(d));
    }

    public ArrayNode add(float f) {
        return _add(numberNode(f));
    }

    public ArrayNode add(int i) {
        _add(numberNode(i));
        return this;
    }

    public ArrayNode add(long j) {
        return _add(numberNode(j));
    }

    public ArrayNode add(JsonNode jsonNode) {
        NullNode nullNode = jsonNode;
        if (jsonNode == null) {
            nullNode = nullNode();
        }
        _add(nullNode);
        return this;
    }

    public ArrayNode add(Boolean bool) {
        return bool == null ? addNull() : _add(booleanNode(bool.booleanValue()));
    }

    public ArrayNode add(Double d) {
        return d == null ? addNull() : _add(numberNode(d.doubleValue()));
    }

    public ArrayNode add(Float f) {
        return f == null ? addNull() : _add(numberNode(f.floatValue()));
    }

    public ArrayNode add(Integer num) {
        return num == null ? addNull() : _add(numberNode(num.intValue()));
    }

    public ArrayNode add(Long l) {
        return l == null ? addNull() : _add(numberNode(l.longValue()));
    }

    public ArrayNode add(String str) {
        return str == null ? addNull() : _add(textNode(str));
    }

    public ArrayNode add(BigDecimal bigDecimal) {
        return bigDecimal == null ? addNull() : _add(numberNode(bigDecimal));
    }

    public ArrayNode add(BigInteger bigInteger) {
        return bigInteger == null ? addNull() : _add(numberNode(bigInteger));
    }

    public ArrayNode add(boolean z) {
        return _add(booleanNode(z));
    }

    public ArrayNode add(byte[] bArr) {
        return bArr == null ? addNull() : _add(binaryNode(bArr));
    }

    public ArrayNode addAll(ArrayNode arrayNode) {
        this._children.addAll(arrayNode._children);
        return this;
    }

    public ArrayNode addAll(Collection<? extends JsonNode> collection) {
        for (JsonNode jsonNode : collection) {
            add(jsonNode);
        }
        return this;
    }

    public ArrayNode addArray() {
        ArrayNode arrayNode = arrayNode();
        _add(arrayNode);
        return arrayNode;
    }

    public ArrayNode addNull() {
        _add(nullNode());
        return this;
    }

    public ObjectNode addObject() {
        ObjectNode objectNode = objectNode();
        _add(objectNode);
        return objectNode;
    }

    public ArrayNode addPOJO(Object obj) {
        if (obj == null) {
            addNull();
        } else {
            _add(pojoNode(obj));
        }
        return this;
    }

    public ArrayNode addRawValue(RawValue rawValue) {
        if (rawValue == null) {
            addNull();
        } else {
            _add(rawValueNode(rawValue));
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.TreeNode
    public JsonToken asToken() {
        return JsonToken.START_ARRAY;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public ArrayNode deepCopy() {
        ArrayNode arrayNode = new ArrayNode(this._nodeFactory);
        for (JsonNode jsonNode : this._children) {
            arrayNode._children.add(jsonNode.deepCopy());
        }
        return arrayNode;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public Iterator<JsonNode> elements() {
        return this._children.iterator();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ArrayNode)) {
            return false;
        }
        return this._children.equals(((ArrayNode) obj)._children);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean equals(Comparator<JsonNode> comparator, JsonNode jsonNode) {
        if (!(jsonNode instanceof ArrayNode)) {
            return false;
        }
        ArrayNode arrayNode = (ArrayNode) jsonNode;
        int size = this._children.size();
        if (arrayNode.size() != size) {
            return false;
        }
        List<JsonNode> list = this._children;
        List<JsonNode> list2 = arrayNode._children;
        for (int i = 0; i < size; i++) {
            if (!list.get(i).equals(comparator, list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public ObjectNode findParent(String str) {
        for (JsonNode jsonNode : this._children) {
            JsonNode findParent = jsonNode.findParent(str);
            if (findParent != null) {
                return (ObjectNode) findParent;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public List<JsonNode> findParents(String str, List<JsonNode> list) {
        for (JsonNode jsonNode : this._children) {
            list = jsonNode.findParents(str, list);
        }
        return list;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNode findValue(String str) {
        for (JsonNode jsonNode : this._children) {
            JsonNode findValue = jsonNode.findValue(str);
            if (findValue != null) {
                return findValue;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public List<JsonNode> findValues(String str, List<JsonNode> list) {
        for (JsonNode jsonNode : this._children) {
            list = jsonNode.findValues(str, list);
        }
        return list;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public List<String> findValuesAsText(String str, List<String> list) {
        for (JsonNode jsonNode : this._children) {
            list = jsonNode.findValuesAsText(str, list);
        }
        return list;
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.JsonNode
    public JsonNode get(int i) {
        if (i < 0 || i >= this._children.size()) {
            return null;
        }
        return this._children.get(i);
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.JsonNode
    public JsonNode get(String str) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNodeType getNodeType() {
        return JsonNodeType.ARRAY;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return this._children.hashCode();
    }

    public ArrayNode insert(int i, double d) {
        return _insert(i, numberNode(d));
    }

    public ArrayNode insert(int i, float f) {
        return _insert(i, numberNode(f));
    }

    public ArrayNode insert(int i, int i2) {
        _insert(i, numberNode(i2));
        return this;
    }

    public ArrayNode insert(int i, long j) {
        return _insert(i, numberNode(j));
    }

    public ArrayNode insert(int i, JsonNode jsonNode) {
        NullNode nullNode = jsonNode;
        if (jsonNode == null) {
            nullNode = nullNode();
        }
        _insert(i, nullNode);
        return this;
    }

    public ArrayNode insert(int i, Boolean bool) {
        return bool == null ? insertNull(i) : _insert(i, booleanNode(bool.booleanValue()));
    }

    public ArrayNode insert(int i, Double d) {
        return d == null ? insertNull(i) : _insert(i, numberNode(d.doubleValue()));
    }

    public ArrayNode insert(int i, Float f) {
        return f == null ? insertNull(i) : _insert(i, numberNode(f.floatValue()));
    }

    public ArrayNode insert(int i, Integer num) {
        if (num == null) {
            insertNull(i);
        } else {
            _insert(i, numberNode(num.intValue()));
        }
        return this;
    }

    public ArrayNode insert(int i, Long l) {
        return l == null ? insertNull(i) : _insert(i, numberNode(l.longValue()));
    }

    public ArrayNode insert(int i, String str) {
        return str == null ? insertNull(i) : _insert(i, textNode(str));
    }

    public ArrayNode insert(int i, BigDecimal bigDecimal) {
        return bigDecimal == null ? insertNull(i) : _insert(i, numberNode(bigDecimal));
    }

    public ArrayNode insert(int i, BigInteger bigInteger) {
        return bigInteger == null ? insertNull(i) : _insert(i, numberNode(bigInteger));
    }

    public ArrayNode insert(int i, boolean z) {
        return _insert(i, booleanNode(z));
    }

    public ArrayNode insert(int i, byte[] bArr) {
        return bArr == null ? insertNull(i) : _insert(i, binaryNode(bArr));
    }

    public ArrayNode insertArray(int i) {
        ArrayNode arrayNode = arrayNode();
        _insert(i, arrayNode);
        return arrayNode;
    }

    public ArrayNode insertNull(int i) {
        _insert(i, nullNode());
        return this;
    }

    public ObjectNode insertObject(int i) {
        ObjectNode objectNode = objectNode();
        _insert(i, objectNode);
        return objectNode;
    }

    public ArrayNode insertPOJO(int i, Object obj) {
        return obj == null ? insertNull(i) : _insert(i, pojoNode(obj));
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean isArray() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean isEmpty() {
        return this._children.isEmpty();
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializable.Base
    public boolean isEmpty(SerializerProvider serializerProvider) {
        return this._children.isEmpty();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNode path(int i) {
        return (i < 0 || i >= this._children.size()) ? MissingNode.getInstance() : this._children.get(i);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNode path(String str) {
        return MissingNode.getInstance();
    }

    public JsonNode remove(int i) {
        if (i < 0 || i >= this._children.size()) {
            return null;
        }
        return this._children.remove(i);
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode
    public ArrayNode removeAll() {
        this._children.clear();
        return this;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonNode
    public JsonNode required(int i) {
        return (i < 0 || i >= this._children.size()) ? (JsonNode) _reportRequiredViolation("No value at index #%d [0, %d) of `ArrayNode`", Integer.valueOf(i), Integer.valueOf(this._children.size())) : this._children.get(i);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        List<JsonNode> list = this._children;
        int size = list.size();
        jsonGenerator.writeStartArray(this, size);
        for (int i = 0; i < size; i++) {
            ((BaseJsonNode) list.get(i)).serialize(jsonGenerator, serializerProvider);
        }
        jsonGenerator.writeEndArray();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public void serializeWithType(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(this, JsonToken.START_ARRAY));
        Iterator<JsonNode> it2 = this._children.iterator();
        while (it2.hasNext()) {
            ((BaseJsonNode) it2.next()).serialize(jsonGenerator, serializerProvider);
        }
        typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
    }

    public JsonNode set(int i, JsonNode jsonNode) {
        JsonNode jsonNode2 = jsonNode;
        if (jsonNode == null) {
            jsonNode2 = nullNode();
        }
        if (i < 0 || i >= this._children.size()) {
            throw new IndexOutOfBoundsException("Illegal index " + i + ", array size " + size());
        }
        return this._children.set(i, jsonNode2);
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.JsonNode
    public int size() {
        return this._children.size();
    }
}
