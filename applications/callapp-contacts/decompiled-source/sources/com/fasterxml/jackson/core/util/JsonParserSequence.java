package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/util/JsonParserSequence.class */
public class JsonParserSequence extends JsonParserDelegate {
    protected final boolean _checkForExistingToken;
    protected boolean _hasToken;
    protected int _nextParserIndex;
    protected final JsonParser[] _parsers;

    protected JsonParserSequence(boolean z, JsonParser[] jsonParserArr) {
        super(jsonParserArr[0]);
        this._checkForExistingToken = z;
        boolean z2 = false;
        if (z) {
            z2 = false;
            if (this.delegate.hasCurrentToken()) {
                z2 = true;
            }
        }
        this._hasToken = z2;
        this._parsers = jsonParserArr;
        this._nextParserIndex = 1;
    }

    @Deprecated
    protected JsonParserSequence(JsonParser[] jsonParserArr) {
        this(false, jsonParserArr);
    }

    @Deprecated
    public static JsonParserSequence createFlattened(JsonParser jsonParser, JsonParser jsonParser2) {
        return createFlattened(false, jsonParser, jsonParser2);
    }

    public static JsonParserSequence createFlattened(boolean z, JsonParser jsonParser, JsonParser jsonParser2) {
        boolean z2 = jsonParser instanceof JsonParserSequence;
        if (!z2 && !(jsonParser2 instanceof JsonParserSequence)) {
            return new JsonParserSequence(z, new JsonParser[]{jsonParser, jsonParser2});
        }
        ArrayList arrayList = new ArrayList();
        if (z2) {
            ((JsonParserSequence) jsonParser).addFlattenedActiveParsers(arrayList);
        } else {
            arrayList.add(jsonParser);
        }
        if (jsonParser2 instanceof JsonParserSequence) {
            ((JsonParserSequence) jsonParser2).addFlattenedActiveParsers(arrayList);
        } else {
            arrayList.add(jsonParser2);
        }
        return new JsonParserSequence(z, (JsonParser[]) arrayList.toArray(new JsonParser[arrayList.size()]));
    }

    protected void addFlattenedActiveParsers(List<JsonParser> list) {
        int length = this._parsers.length;
        for (int i = this._nextParserIndex - 1; i < length; i++) {
            JsonParser jsonParser = this._parsers[i];
            if (jsonParser instanceof JsonParserSequence) {
                ((JsonParserSequence) jsonParser).addFlattenedActiveParsers(list);
            } else {
                list.add(jsonParser);
            }
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        do {
            this.delegate.close();
        } while (switchToNext());
    }

    public int containedParsersCount() {
        return this._parsers.length;
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public JsonToken nextToken() throws IOException {
        if (this.delegate == null) {
            return null;
        }
        if (this._hasToken) {
            this._hasToken = false;
            return this.delegate.currentToken();
        }
        JsonToken nextToken = this.delegate.nextToken();
        JsonToken jsonToken = nextToken;
        if (nextToken == null) {
            jsonToken = switchAndReturnNext();
        }
        return jsonToken;
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public JsonParser skipChildren() throws IOException {
        if (this.delegate.currentToken() != JsonToken.START_OBJECT && this.delegate.currentToken() != JsonToken.START_ARRAY) {
            return this;
        }
        int i = 1;
        while (true) {
            JsonToken nextToken = nextToken();
            if (nextToken == null) {
                return this;
            }
            if (nextToken.isStructStart()) {
                i++;
            } else if (nextToken.isStructEnd()) {
                int i2 = i - 1;
                i = i2;
                if (i2 == 0) {
                    return this;
                }
            } else {
                continue;
            }
        }
    }

    protected JsonToken switchAndReturnNext() throws IOException {
        JsonToken nextToken;
        do {
            int i = this._nextParserIndex;
            JsonParser[] jsonParserArr = this._parsers;
            if (i >= jsonParserArr.length) {
                return null;
            }
            this._nextParserIndex = i + 1;
            this.delegate = jsonParserArr[i];
            if (this._checkForExistingToken && this.delegate.hasCurrentToken()) {
                return this.delegate.getCurrentToken();
            }
            nextToken = this.delegate.nextToken();
        } while (nextToken == null);
        return nextToken;
    }

    protected boolean switchToNext() {
        int i = this._nextParserIndex;
        JsonParser[] jsonParserArr = this._parsers;
        if (i >= jsonParserArr.length) {
            return false;
        }
        this._nextParserIndex = i + 1;
        this.delegate = jsonParserArr[i];
        return true;
    }
}
