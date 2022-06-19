package org.bson;

import java.io.Closeable;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/BsonReader.class */
public interface BsonReader extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    BsonType getCurrentBsonType();

    String getCurrentName();

    BsonReaderMark getMark();

    @Deprecated
    void mark();

    int peekBinarySize();

    byte peekBinarySubType();

    BsonBinary readBinaryData();

    BsonBinary readBinaryData(String str);

    boolean readBoolean();

    boolean readBoolean(String str);

    BsonType readBsonType();

    BsonDbPointer readDBPointer();

    BsonDbPointer readDBPointer(String str);

    long readDateTime();

    long readDateTime(String str);

    Decimal128 readDecimal128();

    Decimal128 readDecimal128(String str);

    double readDouble();

    double readDouble(String str);

    void readEndArray();

    void readEndDocument();

    int readInt32();

    int readInt32(String str);

    long readInt64();

    long readInt64(String str);

    String readJavaScript();

    String readJavaScript(String str);

    String readJavaScriptWithScope();

    String readJavaScriptWithScope(String str);

    void readMaxKey();

    void readMaxKey(String str);

    void readMinKey();

    void readMinKey(String str);

    String readName();

    void readName(String str);

    void readNull();

    void readNull(String str);

    ObjectId readObjectId();

    ObjectId readObjectId(String str);

    BsonRegularExpression readRegularExpression();

    BsonRegularExpression readRegularExpression(String str);

    void readStartArray();

    void readStartDocument();

    String readString();

    String readString(String str);

    String readSymbol();

    String readSymbol(String str);

    BsonTimestamp readTimestamp();

    BsonTimestamp readTimestamp(String str);

    void readUndefined();

    void readUndefined(String str);

    @Deprecated
    void reset();

    void skipName();

    void skipValue();
}
