package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonParser;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/node/NumericNode.class */
public abstract class NumericNode extends ValueNode {
    private static final long serialVersionUID = 1;

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final double asDouble() {
        return doubleValue();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final double asDouble(double d2) {
        return doubleValue();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final int asInt() {
        return intValue();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final int asInt(int i) {
        return intValue();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final long asLong() {
        return longValue();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final long asLong(long j) {
        return longValue();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public abstract String asText();

    @Override // com.fasterxml.jackson.databind.JsonNode
    public abstract BigInteger bigIntegerValue();

    @Override // com.fasterxml.jackson.databind.JsonNode
    public abstract boolean canConvertToInt();

    @Override // com.fasterxml.jackson.databind.JsonNode
    public abstract boolean canConvertToLong();

    @Override // com.fasterxml.jackson.databind.JsonNode
    public abstract BigDecimal decimalValue();

    @Override // com.fasterxml.jackson.databind.JsonNode
    public abstract double doubleValue();

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final JsonNodeType getNodeType() {
        return JsonNodeType.NUMBER;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public abstract int intValue();

    public boolean isNaN() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public abstract long longValue();

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.TreeNode
    public abstract JsonParser.NumberType numberType();

    @Override // com.fasterxml.jackson.databind.JsonNode
    public abstract Number numberValue();
}
