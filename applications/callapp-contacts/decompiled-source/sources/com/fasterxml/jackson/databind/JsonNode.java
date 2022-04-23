package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonPointer;
import com.fasterxml.jackson.core.TreeNode;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.node.JsonNodeType;
import com.fasterxml.jackson.databind.node.MissingNode;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/JsonNode.class */
public abstract class JsonNode extends JsonSerializable.Base implements TreeNode, Iterable<JsonNode> {

    /* renamed from: com.fasterxml.jackson.databind.JsonNode$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/JsonNode$1.class */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonNodeType.values().length];
            $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType = iArr;
            try {
                iArr[JsonNodeType.ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[JsonNodeType.OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[JsonNodeType.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    protected abstract JsonNode _at(JsonPointer jsonPointer);

    /* JADX INFO: Access modifiers changed from: protected */
    public <T> T _reportRequiredViolation(String str, Object... objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected <T extends JsonNode> T _this() {
        return this;
    }

    public boolean asBoolean() {
        return asBoolean(false);
    }

    public boolean asBoolean(boolean z) {
        return z;
    }

    public double asDouble() {
        return asDouble(0.0d);
    }

    public double asDouble(double d2) {
        return d2;
    }

    public int asInt() {
        return asInt(0);
    }

    public int asInt(int i) {
        return i;
    }

    public long asLong() {
        return asLong(0L);
    }

    public long asLong(long j) {
        return j;
    }

    public abstract String asText();

    public String asText(String str) {
        String asText = asText();
        return asText == null ? str : asText;
    }

    public final JsonNode at(JsonPointer jsonPointer) {
        JsonNode jsonNode = this;
        while (!jsonPointer.matches()) {
            jsonNode = jsonNode._at(jsonPointer);
            if (jsonNode == null) {
                return MissingNode.getInstance();
            }
            jsonPointer = jsonPointer.tail();
        }
        return jsonNode;
    }

    public final JsonNode at(String str) {
        return at(JsonPointer.compile(str));
    }

    public BigInteger bigIntegerValue() {
        return BigInteger.ZERO;
    }

    public byte[] binaryValue() throws IOException {
        return null;
    }

    public boolean booleanValue() {
        return false;
    }

    public boolean canConvertToExactIntegral() {
        return isIntegralNumber();
    }

    public boolean canConvertToInt() {
        return false;
    }

    public boolean canConvertToLong() {
        return false;
    }

    public BigDecimal decimalValue() {
        return BigDecimal.ZERO;
    }

    public abstract <T extends JsonNode> T deepCopy();

    public double doubleValue() {
        return 0.0d;
    }

    public Iterator<JsonNode> elements() {
        return ClassUtil.emptyIterator();
    }

    public abstract boolean equals(Object obj);

    public boolean equals(Comparator<JsonNode> comparator, JsonNode jsonNode) {
        return comparator.compare(this, jsonNode) == 0;
    }

    public Iterator<String> fieldNames() {
        return ClassUtil.emptyIterator();
    }

    public Iterator<Map.Entry<String, JsonNode>> fields() {
        return ClassUtil.emptyIterator();
    }

    public abstract JsonNode findParent(String str);

    public final List<JsonNode> findParents(String str) {
        List<JsonNode> findParents = findParents(str, null);
        List<JsonNode> list = findParents;
        if (findParents == null) {
            list = Collections.emptyList();
        }
        return list;
    }

    public abstract List<JsonNode> findParents(String str, List<JsonNode> list);

    public abstract JsonNode findPath(String str);

    public abstract JsonNode findValue(String str);

    public final List<JsonNode> findValues(String str) {
        List<JsonNode> findValues = findValues(str, null);
        List<JsonNode> list = findValues;
        if (findValues == null) {
            list = Collections.emptyList();
        }
        return list;
    }

    public abstract List<JsonNode> findValues(String str, List<JsonNode> list);

    public final List<String> findValuesAsText(String str) {
        List<String> findValuesAsText = findValuesAsText(str, null);
        List<String> list = findValuesAsText;
        if (findValuesAsText == null) {
            list = Collections.emptyList();
        }
        return list;
    }

    public abstract List<String> findValuesAsText(String str, List<String> list);

    public float floatValue() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    public abstract JsonNode get(int i);

    public JsonNode get(String str) {
        return null;
    }

    public abstract JsonNodeType getNodeType();

    public boolean has(int i) {
        return get(i) != null;
    }

    public boolean has(String str) {
        return get(str) != null;
    }

    public boolean hasNonNull(int i) {
        JsonNode jsonNode = get(i);
        return jsonNode != null && !jsonNode.isNull();
    }

    public boolean hasNonNull(String str) {
        JsonNode jsonNode = get(str);
        return jsonNode != null && !jsonNode.isNull();
    }

    public int intValue() {
        return 0;
    }

    public boolean isArray() {
        return false;
    }

    public boolean isBigDecimal() {
        return false;
    }

    public boolean isBigInteger() {
        return false;
    }

    public final boolean isBinary() {
        return getNodeType() == JsonNodeType.BINARY;
    }

    public final boolean isBoolean() {
        return getNodeType() == JsonNodeType.BOOLEAN;
    }

    public final boolean isContainerNode() {
        JsonNodeType nodeType = getNodeType();
        return nodeType == JsonNodeType.OBJECT || nodeType == JsonNodeType.ARRAY;
    }

    public boolean isDouble() {
        return false;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public boolean isFloat() {
        return false;
    }

    public boolean isFloatingPointNumber() {
        return false;
    }

    public boolean isInt() {
        return false;
    }

    public boolean isIntegralNumber() {
        return false;
    }

    public boolean isLong() {
        return false;
    }

    public boolean isMissingNode() {
        return false;
    }

    public final boolean isNull() {
        return getNodeType() == JsonNodeType.NULL;
    }

    public final boolean isNumber() {
        return getNodeType() == JsonNodeType.NUMBER;
    }

    public boolean isObject() {
        return false;
    }

    public final boolean isPojo() {
        return getNodeType() == JsonNodeType.POJO;
    }

    public boolean isShort() {
        return false;
    }

    public final boolean isTextual() {
        return getNodeType() == JsonNodeType.STRING;
    }

    public final boolean isValueNode() {
        int i = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[getNodeType().ordinal()];
        return (i == 1 || i == 2 || i == 3) ? false : true;
    }

    @Override // java.lang.Iterable
    public final Iterator<JsonNode> iterator() {
        return elements();
    }

    public long longValue() {
        return 0L;
    }

    public Number numberValue() {
        return null;
    }

    public abstract JsonNode path(int i);

    public abstract JsonNode path(String str);

    public <T extends JsonNode> T require() throws IllegalArgumentException {
        return (T) _this();
    }

    public <T extends JsonNode> T requireNonNull() throws IllegalArgumentException {
        return (T) _this();
    }

    public JsonNode required(int i) throws IllegalArgumentException {
        return (JsonNode) _reportRequiredViolation("Node of type `%s` has no indexed values", getClass().getName());
    }

    public JsonNode required(String str) throws IllegalArgumentException {
        return (JsonNode) _reportRequiredViolation("Node of type `%s` has no fields", getClass().getName());
    }

    public final JsonNode requiredAt(JsonPointer jsonPointer) throws IllegalArgumentException {
        JsonNode jsonNode = this;
        for (JsonPointer jsonPointer2 = jsonPointer; !jsonPointer2.matches(); jsonPointer2 = jsonPointer2.tail()) {
            jsonNode = jsonNode._at(jsonPointer2);
            if (jsonNode == null) {
                _reportRequiredViolation("No node at '%s' (unmatched part: '%s')", jsonPointer, jsonPointer2);
            }
        }
        return jsonNode;
    }

    public JsonNode requiredAt(String str) throws IllegalArgumentException {
        return requiredAt(JsonPointer.compile(str));
    }

    public short shortValue() {
        return (short) 0;
    }

    public int size() {
        return 0;
    }

    public String textValue() {
        return null;
    }

    public String toPrettyString() {
        return toString();
    }

    public abstract String toString();

    public <T extends JsonNode> T with(String str) {
        throw new UnsupportedOperationException("JsonNode not of type ObjectNode (but " + getClass().getName() + "), cannot call with() on it");
    }

    public <T extends JsonNode> T withArray(String str) {
        throw new UnsupportedOperationException("JsonNode not of type ObjectNode (but " + getClass().getName() + "), cannot call withArray() on it");
    }
}
