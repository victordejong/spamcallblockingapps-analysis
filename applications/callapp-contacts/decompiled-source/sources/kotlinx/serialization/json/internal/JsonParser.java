package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\bH\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lkotlinx/serialization/json/internal/JsonParser;", "", "configuration", "Lkotlinx/serialization/json/JsonConfiguration;", "reader", "Lkotlinx/serialization/json/internal/JsonReader;", "(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/JsonReader;)V", "isLenient", "", "read", "Lkotlinx/serialization/json/JsonElement;", "readArray", "readObject", "readValue", "isString", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/JsonParser.class */
public final class JsonParser {
    private final boolean isLenient;
    private final JsonReader reader;

    public JsonParser(JsonConfiguration configuration, JsonReader reader) {
        p.c(configuration, "configuration");
        p.c(reader, "reader");
        this.reader = reader;
        this.isLenient = configuration.isLenient$kotlinx_serialization_runtime();
    }

    private final JsonElement readArray() {
        JsonReader jsonReader;
        JsonReader jsonReader2 = this.reader;
        if (jsonReader2.tokenClass == 8) {
            this.reader.nextToken();
            JsonReader jsonReader3 = this.reader;
            boolean z = jsonReader3.tokenClass != 4;
            int i = this.reader.currentPosition;
            if (z) {
                ArrayList arrayList = new ArrayList();
                do {
                    boolean z2 = false;
                    while (this.reader.getCanBeginValue()) {
                        arrayList.add(read());
                        if (this.reader.tokenClass != 4) {
                            jsonReader = this.reader;
                        } else {
                            this.reader.nextToken();
                            z2 = true;
                        }
                    }
                    JsonReader jsonReader4 = this.reader;
                    int i2 = jsonReader4.currentPosition;
                    if (!z2) {
                        this.reader.nextToken();
                        return new JsonArray(arrayList);
                    }
                    jsonReader4.fail("Unexpected trailing comma", i2);
                    throw null;
                } while (jsonReader.tokenClass == 9);
                jsonReader.fail("Expected end of the array or comma", jsonReader.tokenPosition);
                throw null;
            }
            jsonReader3.fail("Unexpected leading comma", i);
            throw null;
        }
        jsonReader2.fail("Expected start of the array", jsonReader2.tokenPosition);
        throw null;
    }

    private final JsonElement readObject() {
        JsonReader jsonReader;
        JsonReader jsonReader2 = this.reader;
        if (jsonReader2.tokenClass == 6) {
            this.reader.nextToken();
            JsonReader jsonReader3 = this.reader;
            boolean z = true;
            boolean z2 = jsonReader3.tokenClass != 4;
            int i = this.reader.currentPosition;
            if (z2) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                do {
                    boolean z3 = false;
                    while (this.reader.getCanBeginValue()) {
                        String takeString = this.isLenient ? this.reader.takeString() : this.reader.takeStringQuoted();
                        JsonReader jsonReader4 = this.reader;
                        if (jsonReader4.tokenClass == 5) {
                            this.reader.nextToken();
                            linkedHashMap.put(takeString, read());
                            if (this.reader.tokenClass != 4) {
                                jsonReader = this.reader;
                            } else {
                                this.reader.nextToken();
                                z3 = true;
                            }
                        } else {
                            jsonReader4.fail("Expected ':'", jsonReader4.tokenPosition);
                            throw null;
                        }
                    }
                    JsonReader jsonReader5 = this.reader;
                    if (z3 || jsonReader5.tokenClass != 7) {
                        z = false;
                    }
                    int i2 = this.reader.currentPosition;
                    if (z) {
                        this.reader.nextToken();
                        return new JsonObject(linkedHashMap);
                    }
                    jsonReader5.fail("Expected end of the object", i2);
                    throw null;
                } while (jsonReader.tokenClass == 7);
                jsonReader.fail("Expected end of the object or comma", jsonReader.tokenPosition);
                throw null;
            }
            jsonReader3.fail("Unexpected leading comma", i);
            throw null;
        }
        jsonReader2.fail("Expected start of the object", jsonReader2.tokenPosition);
        throw null;
    }

    private final JsonElement readValue(boolean z) {
        return new JsonLiteral((this.isLenient || !z) ? this.reader.takeString() : this.reader.takeStringQuoted(), z);
    }

    public final JsonElement read() {
        if (this.reader.getCanBeginValue()) {
            byte b2 = this.reader.tokenClass;
            if (b2 == 0) {
                return readValue(false);
            }
            if (b2 == 1) {
                return readValue(true);
            }
            if (b2 == 6) {
                return readObject();
            }
            if (b2 == 8) {
                return readArray();
            }
            if (b2 == 10) {
                JsonNull jsonNull = JsonNull.INSTANCE;
                this.reader.nextToken();
                return jsonNull;
            }
            JsonReader.fail$default(this.reader, "Can't begin reading element, unexpected token", 0, 2, null);
            throw null;
        }
        JsonReader.fail$default(this.reader, "Can't begin reading value from here", 0, 2, null);
        throw null;
    }
}
