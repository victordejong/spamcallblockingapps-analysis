package org.bson;

import java.util.Arrays;
import org.bson.assertions.Assertions;
/* loaded from: classes-dex2jar.jar:org/bson/BsonRegularExpression.class */
public final class BsonRegularExpression extends BsonValue {
    private final String options;
    private final String pattern;

    public BsonRegularExpression(String str) {
        this(str, null);
    }

    public BsonRegularExpression(String str, String str2) {
        this.pattern = (String) Assertions.notNull("pattern", str);
        this.options = str2 == null ? "" : sortOptionCharacters(str2);
    }

    private String sortOptionCharacters(String str) {
        char[] charArray = str.toCharArray();
        Arrays.sort(charArray);
        return new String(charArray);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BsonRegularExpression bsonRegularExpression = (BsonRegularExpression) obj;
        return this.options.equals(bsonRegularExpression.options) && this.pattern.equals(bsonRegularExpression.pattern);
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.REGULAR_EXPRESSION;
    }

    public String getOptions() {
        return this.options;
    }

    public String getPattern() {
        return this.pattern;
    }

    public int hashCode() {
        return (this.pattern.hashCode() * 31) + this.options.hashCode();
    }

    public String toString() {
        return "BsonRegularExpression{pattern='" + this.pattern + "', options='" + this.options + "'}";
    }
}
