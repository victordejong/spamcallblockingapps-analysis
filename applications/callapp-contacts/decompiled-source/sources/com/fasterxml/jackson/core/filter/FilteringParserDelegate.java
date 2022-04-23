package com.fasterxml.jackson.core.filter;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.filter.TokenFilter;
import com.fasterxml.jackson.core.util.JsonParserDelegate;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/filter/FilteringParserDelegate.class */
public class FilteringParserDelegate extends JsonParserDelegate {
    protected boolean _allowMultipleMatches;
    protected JsonToken _currToken;
    protected TokenFilterContext _exposedContext;
    protected TokenFilterContext _headContext;
    protected TokenFilter.Inclusion _inclusion;
    protected TokenFilter _itemFilter;
    protected JsonToken _lastClearedToken;
    protected int _matchCount;
    protected TokenFilter rootFilter;

    public FilteringParserDelegate(JsonParser jsonParser, TokenFilter tokenFilter, TokenFilter.Inclusion inclusion, boolean z) {
        super(jsonParser);
        this.rootFilter = tokenFilter;
        this._itemFilter = tokenFilter;
        this._headContext = TokenFilterContext.createRootContext(tokenFilter);
        this._inclusion = inclusion;
        this._allowMultipleMatches = z;
    }

    @Deprecated
    public FilteringParserDelegate(JsonParser jsonParser, TokenFilter tokenFilter, boolean z, boolean z2) {
        this(jsonParser, tokenFilter, z ? TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH : TokenFilter.Inclusion.ONLY_INCLUDE_ALL, z2);
    }

    private JsonToken _nextBuffered(TokenFilterContext tokenFilterContext) throws IOException {
        this._exposedContext = tokenFilterContext;
        JsonToken nextTokenToRead = tokenFilterContext.nextTokenToRead();
        if (nextTokenToRead != null) {
            return nextTokenToRead;
        }
        while (tokenFilterContext != this._headContext) {
            tokenFilterContext = this._exposedContext.findChildOf(tokenFilterContext);
            this._exposedContext = tokenFilterContext;
            if (tokenFilterContext != null) {
                JsonToken nextTokenToRead2 = tokenFilterContext.nextTokenToRead();
                if (nextTokenToRead2 != null) {
                    return nextTokenToRead2;
                }
            } else {
                throw _constructError("Unexpected problem: chain of filtered context broken");
            }
        }
        throw _constructError("Internal error: failed to locate expected buffered tokens");
    }

    private final boolean _verifyAllowedMatches() throws IOException {
        int i = this._matchCount;
        if (i != 0 && !this._allowMultipleMatches) {
            return false;
        }
        this._matchCount = i + 1;
        return true;
    }

    protected JsonStreamContext _filterContext() {
        TokenFilterContext tokenFilterContext = this._exposedContext;
        return tokenFilterContext != null ? tokenFilterContext : this._headContext;
    }

    protected final JsonToken _nextToken2() throws IOException {
        TokenFilter checkValue;
        JsonToken _nextTokenWithBuffering;
        JsonToken _nextTokenWithBuffering2;
        JsonToken _nextTokenWithBuffering3;
        while (true) {
            JsonToken nextToken = this.delegate.nextToken();
            if (nextToken == null) {
                this._currToken = nextToken;
                return nextToken;
            }
            int id = nextToken.id();
            if (id != 1) {
                if (id != 2) {
                    if (id == 3) {
                        TokenFilter tokenFilter = this._itemFilter;
                        if (tokenFilter == TokenFilter.INCLUDE_ALL) {
                            this._headContext = this._headContext.createChildArrayContext(tokenFilter, true);
                            this._currToken = nextToken;
                            return nextToken;
                        } else if (tokenFilter == null) {
                            this.delegate.skipChildren();
                        } else {
                            TokenFilter checkValue2 = this._headContext.checkValue(tokenFilter);
                            if (checkValue2 == null) {
                                this.delegate.skipChildren();
                            } else {
                                TokenFilter tokenFilter2 = checkValue2;
                                if (checkValue2 != TokenFilter.INCLUDE_ALL) {
                                    tokenFilter2 = checkValue2.filterStartArray();
                                }
                                this._itemFilter = tokenFilter2;
                                if (tokenFilter2 == TokenFilter.INCLUDE_ALL) {
                                    this._headContext = this._headContext.createChildArrayContext(tokenFilter2, true);
                                    this._currToken = nextToken;
                                    return nextToken;
                                } else if (tokenFilter2 == null || this._inclusion != TokenFilter.Inclusion.INCLUDE_NON_NULL) {
                                    this._headContext = this._headContext.createChildArrayContext(tokenFilter2, false);
                                    if (this._inclusion == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH && (_nextTokenWithBuffering2 = _nextTokenWithBuffering(this._headContext)) != null) {
                                        this._currToken = _nextTokenWithBuffering2;
                                        return _nextTokenWithBuffering2;
                                    }
                                } else {
                                    this._headContext = this._headContext.createChildArrayContext(tokenFilter2, true);
                                    this._currToken = nextToken;
                                    return nextToken;
                                }
                            }
                        }
                    } else if (id != 4) {
                        if (id != 5) {
                            TokenFilter tokenFilter3 = this._itemFilter;
                            if (tokenFilter3 == TokenFilter.INCLUDE_ALL) {
                                this._currToken = nextToken;
                                return nextToken;
                            } else if (tokenFilter3 != null && ((checkValue = this._headContext.checkValue(tokenFilter3)) == TokenFilter.INCLUDE_ALL || (checkValue != null && checkValue.includeValue(this.delegate)))) {
                                if (_verifyAllowedMatches()) {
                                    this._currToken = nextToken;
                                    return nextToken;
                                }
                            }
                        } else {
                            String currentName = this.delegate.getCurrentName();
                            TokenFilter fieldName = this._headContext.setFieldName(currentName);
                            if (fieldName == TokenFilter.INCLUDE_ALL) {
                                this._itemFilter = fieldName;
                                this._currToken = nextToken;
                                return nextToken;
                            } else if (fieldName == null) {
                                this.delegate.nextToken();
                                this.delegate.skipChildren();
                            } else {
                                TokenFilter includeProperty = fieldName.includeProperty(currentName);
                                if (includeProperty == null) {
                                    this.delegate.nextToken();
                                    this.delegate.skipChildren();
                                } else {
                                    this._itemFilter = includeProperty;
                                    if (includeProperty == TokenFilter.INCLUDE_ALL) {
                                        if (_verifyAllowedMatches() && this._inclusion == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH) {
                                            this._currToken = nextToken;
                                            return nextToken;
                                        }
                                    } else if (!(this._inclusion == TokenFilter.Inclusion.ONLY_INCLUDE_ALL || (_nextTokenWithBuffering = _nextTokenWithBuffering(this._headContext)) == null)) {
                                        this._currToken = _nextTokenWithBuffering;
                                        return _nextTokenWithBuffering;
                                    }
                                }
                            }
                        }
                    }
                }
                boolean isStartHandled = this._headContext.isStartHandled();
                TokenFilter filter = this._headContext.getFilter();
                if (!(filter == null || filter == TokenFilter.INCLUDE_ALL)) {
                    filter.filterFinishArray();
                }
                TokenFilterContext parent = this._headContext.getParent();
                this._headContext = parent;
                this._itemFilter = parent.getFilter();
                if (isStartHandled) {
                    this._currToken = nextToken;
                    return nextToken;
                }
            } else {
                TokenFilter tokenFilter4 = this._itemFilter;
                if (tokenFilter4 == TokenFilter.INCLUDE_ALL) {
                    this._headContext = this._headContext.createChildObjectContext(tokenFilter4, true);
                    this._currToken = nextToken;
                    return nextToken;
                } else if (tokenFilter4 == null) {
                    this.delegate.skipChildren();
                } else {
                    TokenFilter checkValue3 = this._headContext.checkValue(tokenFilter4);
                    if (checkValue3 == null) {
                        this.delegate.skipChildren();
                    } else {
                        TokenFilter tokenFilter5 = checkValue3;
                        if (checkValue3 != TokenFilter.INCLUDE_ALL) {
                            tokenFilter5 = checkValue3.filterStartObject();
                        }
                        this._itemFilter = tokenFilter5;
                        if (tokenFilter5 == TokenFilter.INCLUDE_ALL) {
                            this._headContext = this._headContext.createChildObjectContext(tokenFilter5, true);
                            this._currToken = nextToken;
                            return nextToken;
                        } else if (tokenFilter5 == null || this._inclusion != TokenFilter.Inclusion.INCLUDE_NON_NULL) {
                            this._headContext = this._headContext.createChildObjectContext(tokenFilter5, false);
                            if (this._inclusion == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH && (_nextTokenWithBuffering3 = _nextTokenWithBuffering(this._headContext)) != null) {
                                this._currToken = _nextTokenWithBuffering3;
                                return _nextTokenWithBuffering3;
                            }
                        } else {
                            this._headContext = this._headContext.createChildObjectContext(tokenFilter5, true);
                            this._currToken = nextToken;
                            return nextToken;
                        }
                    }
                }
            }
        }
    }

    protected final JsonToken _nextTokenWithBuffering(TokenFilterContext tokenFilterContext) throws IOException {
        TokenFilter checkValue;
        while (true) {
            JsonToken nextToken = this.delegate.nextToken();
            if (nextToken == null) {
                return nextToken;
            }
            int id = nextToken.id();
            if (id != 1) {
                if (id != 2) {
                    if (id == 3) {
                        TokenFilter checkValue2 = this._headContext.checkValue(this._itemFilter);
                        if (checkValue2 == null) {
                            this.delegate.skipChildren();
                        } else {
                            TokenFilter tokenFilter = checkValue2;
                            if (checkValue2 != TokenFilter.INCLUDE_ALL) {
                                tokenFilter = checkValue2.filterStartArray();
                            }
                            this._itemFilter = tokenFilter;
                            if (tokenFilter == TokenFilter.INCLUDE_ALL) {
                                this._headContext = this._headContext.createChildArrayContext(tokenFilter, true);
                                return _nextBuffered(tokenFilterContext);
                            } else if (tokenFilter == null || this._inclusion != TokenFilter.Inclusion.INCLUDE_NON_NULL) {
                                this._headContext = this._headContext.createChildArrayContext(tokenFilter, false);
                            } else {
                                this._headContext = this._headContext.createChildArrayContext(tokenFilter, true);
                                return _nextBuffered(tokenFilterContext);
                            }
                        }
                    } else if (id != 4) {
                        if (id != 5) {
                            TokenFilter tokenFilter2 = this._itemFilter;
                            if (tokenFilter2 == TokenFilter.INCLUDE_ALL) {
                                return _nextBuffered(tokenFilterContext);
                            }
                            if (tokenFilter2 != null && ((checkValue = this._headContext.checkValue(tokenFilter2)) == TokenFilter.INCLUDE_ALL || (checkValue != null && checkValue.includeValue(this.delegate)))) {
                                if (_verifyAllowedMatches()) {
                                    return _nextBuffered(tokenFilterContext);
                                }
                            }
                        } else {
                            String currentName = this.delegate.getCurrentName();
                            TokenFilter fieldName = this._headContext.setFieldName(currentName);
                            if (fieldName == TokenFilter.INCLUDE_ALL) {
                                this._itemFilter = fieldName;
                                return _nextBuffered(tokenFilterContext);
                            } else if (fieldName == null) {
                                this.delegate.nextToken();
                                this.delegate.skipChildren();
                            } else {
                                TokenFilter includeProperty = fieldName.includeProperty(currentName);
                                if (includeProperty == null) {
                                    this.delegate.nextToken();
                                    this.delegate.skipChildren();
                                } else {
                                    this._itemFilter = includeProperty;
                                    if (includeProperty != TokenFilter.INCLUDE_ALL) {
                                        continue;
                                    } else if (_verifyAllowedMatches()) {
                                        return _nextBuffered(tokenFilterContext);
                                    } else {
                                        this._itemFilter = this._headContext.setFieldName(currentName);
                                    }
                                }
                            }
                        }
                    }
                }
                TokenFilter filter = this._headContext.getFilter();
                if (!(filter == null || filter == TokenFilter.INCLUDE_ALL)) {
                    filter.filterFinishArray();
                }
                TokenFilterContext tokenFilterContext2 = this._headContext;
                boolean z = false;
                if (tokenFilterContext2 == tokenFilterContext) {
                    z = false;
                    if (tokenFilterContext2.isStartHandled()) {
                        z = true;
                    }
                }
                TokenFilterContext parent = this._headContext.getParent();
                this._headContext = parent;
                this._itemFilter = parent.getFilter();
                if (z) {
                    return nextToken;
                }
            } else {
                TokenFilter tokenFilter3 = this._itemFilter;
                if (tokenFilter3 == TokenFilter.INCLUDE_ALL) {
                    this._headContext = this._headContext.createChildObjectContext(tokenFilter3, true);
                    return nextToken;
                } else if (tokenFilter3 == null) {
                    this.delegate.skipChildren();
                } else {
                    TokenFilter checkValue3 = this._headContext.checkValue(tokenFilter3);
                    if (checkValue3 == null) {
                        this.delegate.skipChildren();
                    } else {
                        TokenFilter tokenFilter4 = checkValue3;
                        if (checkValue3 != TokenFilter.INCLUDE_ALL) {
                            tokenFilter4 = checkValue3.filterStartObject();
                        }
                        this._itemFilter = tokenFilter4;
                        if (tokenFilter4 == TokenFilter.INCLUDE_ALL) {
                            this._headContext = this._headContext.createChildObjectContext(tokenFilter4, true);
                            return _nextBuffered(tokenFilterContext);
                        } else if (tokenFilter4 == null || this._inclusion != TokenFilter.Inclusion.INCLUDE_NON_NULL) {
                            this._headContext = this._headContext.createChildObjectContext(tokenFilter4, false);
                        } else {
                            this._headContext = this._headContext.createChildArrayContext(tokenFilter4, true);
                            return _nextBuffered(tokenFilterContext);
                        }
                    }
                }
            }
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public void clearCurrentToken() {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != null) {
            this._lastClearedToken = jsonToken;
            this._currToken = null;
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public JsonToken currentToken() {
        return this._currToken;
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public final int currentTokenId() {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == null) {
            return 0;
        }
        return jsonToken.id();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public BigInteger getBigIntegerValue() throws IOException {
        return this.delegate.getBigIntegerValue();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException {
        return this.delegate.getBinaryValue(base64Variant);
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public boolean getBooleanValue() throws IOException {
        return this.delegate.getBooleanValue();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public byte getByteValue() throws IOException {
        return this.delegate.getByteValue();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getCurrentLocation() {
        return this.delegate.getCurrentLocation();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public String getCurrentName() throws IOException {
        JsonStreamContext _filterContext = _filterContext();
        if (this._currToken != JsonToken.START_OBJECT && this._currToken != JsonToken.START_ARRAY) {
            return _filterContext.getCurrentName();
        }
        JsonStreamContext parent = _filterContext.getParent();
        if (parent == null) {
            return null;
        }
        return parent.getCurrentName();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public JsonToken getCurrentToken() {
        return this._currToken;
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    @Deprecated
    public final int getCurrentTokenId() {
        return currentTokenId();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public BigDecimal getDecimalValue() throws IOException {
        return this.delegate.getDecimalValue();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public double getDoubleValue() throws IOException {
        return this.delegate.getDoubleValue();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public Object getEmbeddedObject() throws IOException {
        return this.delegate.getEmbeddedObject();
    }

    public TokenFilter getFilter() {
        return this.rootFilter;
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public float getFloatValue() throws IOException {
        return this.delegate.getFloatValue();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public int getIntValue() throws IOException {
        return this.delegate.getIntValue();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public JsonToken getLastClearedToken() {
        return this._lastClearedToken;
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public long getLongValue() throws IOException {
        return this.delegate.getLongValue();
    }

    public int getMatchCount() {
        return this._matchCount;
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public JsonParser.NumberType getNumberType() throws IOException {
        return this.delegate.getNumberType();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public Number getNumberValue() throws IOException {
        return this.delegate.getNumberValue();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public JsonStreamContext getParsingContext() {
        return _filterContext();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public short getShortValue() throws IOException {
        return this.delegate.getShortValue();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public String getText() throws IOException {
        return this.delegate.getText();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public char[] getTextCharacters() throws IOException {
        return this.delegate.getTextCharacters();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public int getTextLength() throws IOException {
        return this.delegate.getTextLength();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public int getTextOffset() throws IOException {
        return this.delegate.getTextOffset();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getTokenLocation() {
        return this.delegate.getTokenLocation();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public boolean getValueAsBoolean() throws IOException {
        return this.delegate.getValueAsBoolean();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public boolean getValueAsBoolean(boolean z) throws IOException {
        return this.delegate.getValueAsBoolean(z);
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public double getValueAsDouble() throws IOException {
        return this.delegate.getValueAsDouble();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public double getValueAsDouble(double d2) throws IOException {
        return this.delegate.getValueAsDouble(d2);
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public int getValueAsInt() throws IOException {
        return this.delegate.getValueAsInt();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public int getValueAsInt(int i) throws IOException {
        return this.delegate.getValueAsInt(i);
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public long getValueAsLong() throws IOException {
        return this.delegate.getValueAsLong();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public long getValueAsLong(long j) throws IOException {
        return this.delegate.getValueAsLong(j);
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public String getValueAsString() throws IOException {
        return this.delegate.getValueAsString();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public String getValueAsString(String str) throws IOException {
        return this.delegate.getValueAsString(str);
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public boolean hasCurrentToken() {
        return this._currToken != null;
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public boolean hasTextCharacters() {
        return this.delegate.hasTextCharacters();
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public final boolean hasToken(JsonToken jsonToken) {
        return this._currToken == jsonToken;
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public boolean hasTokenId(int i) {
        JsonToken jsonToken = this._currToken;
        return jsonToken == null ? i == 0 : jsonToken.id() == i;
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public boolean isExpectedStartArrayToken() {
        return this._currToken == JsonToken.START_ARRAY;
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public boolean isExpectedStartObjectToken() {
        return this._currToken == JsonToken.START_OBJECT;
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public JsonToken nextToken() throws IOException {
        JsonToken _nextTokenWithBuffering;
        JsonToken _nextTokenWithBuffering2;
        JsonToken _nextTokenWithBuffering3;
        TokenFilter checkValue;
        JsonToken jsonToken;
        if (this._allowMultipleMatches || (jsonToken = this._currToken) == null || this._exposedContext != null || !jsonToken.isScalarValue() || this._headContext.isStartHandled() || this._inclusion != TokenFilter.Inclusion.ONLY_INCLUDE_ALL || this._itemFilter != TokenFilter.INCLUDE_ALL) {
            TokenFilterContext tokenFilterContext = this._exposedContext;
            if (tokenFilterContext != null) {
                do {
                    JsonToken nextTokenToRead = tokenFilterContext.nextTokenToRead();
                    if (nextTokenToRead != null) {
                        this._currToken = nextTokenToRead;
                        return nextTokenToRead;
                    }
                    TokenFilterContext tokenFilterContext2 = this._headContext;
                    if (tokenFilterContext == tokenFilterContext2) {
                        this._exposedContext = null;
                        if (tokenFilterContext.inArray()) {
                            JsonToken currentToken = this.delegate.getCurrentToken();
                            this._currToken = currentToken;
                            return currentToken;
                        }
                    } else {
                        tokenFilterContext = tokenFilterContext2.findChildOf(tokenFilterContext);
                        this._exposedContext = tokenFilterContext;
                    }
                } while (tokenFilterContext != null);
                throw _constructError("Unexpected problem: chain of filtered context broken");
            }
            JsonToken nextToken = this.delegate.nextToken();
            if (nextToken == null) {
                this._currToken = nextToken;
                return nextToken;
            }
            int id = nextToken.id();
            if (id != 1) {
                if (id != 2) {
                    if (id == 3) {
                        TokenFilter tokenFilter = this._itemFilter;
                        if (tokenFilter == TokenFilter.INCLUDE_ALL) {
                            this._headContext = this._headContext.createChildArrayContext(tokenFilter, true);
                            this._currToken = nextToken;
                            return nextToken;
                        } else if (tokenFilter == null) {
                            this.delegate.skipChildren();
                        } else {
                            TokenFilter checkValue2 = this._headContext.checkValue(tokenFilter);
                            if (checkValue2 == null) {
                                this.delegate.skipChildren();
                            } else {
                                TokenFilter tokenFilter2 = checkValue2;
                                if (checkValue2 != TokenFilter.INCLUDE_ALL) {
                                    tokenFilter2 = checkValue2.filterStartArray();
                                }
                                this._itemFilter = tokenFilter2;
                                if (tokenFilter2 == TokenFilter.INCLUDE_ALL) {
                                    this._headContext = this._headContext.createChildArrayContext(tokenFilter2, true);
                                    this._currToken = nextToken;
                                    return nextToken;
                                } else if (tokenFilter2 == null || this._inclusion != TokenFilter.Inclusion.INCLUDE_NON_NULL) {
                                    this._headContext = this._headContext.createChildArrayContext(tokenFilter2, false);
                                    if (this._inclusion == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH && (_nextTokenWithBuffering2 = _nextTokenWithBuffering(this._headContext)) != null) {
                                        this._currToken = _nextTokenWithBuffering2;
                                        return _nextTokenWithBuffering2;
                                    }
                                } else {
                                    this._headContext = this._headContext.createChildArrayContext(tokenFilter2, true);
                                    this._currToken = nextToken;
                                    return nextToken;
                                }
                            }
                        }
                    } else if (id != 4) {
                        if (id != 5) {
                            TokenFilter tokenFilter3 = this._itemFilter;
                            if (tokenFilter3 == TokenFilter.INCLUDE_ALL) {
                                this._currToken = nextToken;
                                return nextToken;
                            } else if (tokenFilter3 != null && (((checkValue = this._headContext.checkValue(tokenFilter3)) == TokenFilter.INCLUDE_ALL || (checkValue != null && checkValue.includeValue(this.delegate))) && _verifyAllowedMatches())) {
                                this._currToken = nextToken;
                                return nextToken;
                            }
                        } else {
                            String currentName = this.delegate.getCurrentName();
                            TokenFilter fieldName = this._headContext.setFieldName(currentName);
                            if (fieldName == TokenFilter.INCLUDE_ALL) {
                                this._itemFilter = fieldName;
                                this._currToken = nextToken;
                                return nextToken;
                            } else if (fieldName == null) {
                                this.delegate.nextToken();
                                this.delegate.skipChildren();
                            } else {
                                TokenFilter includeProperty = fieldName.includeProperty(currentName);
                                if (includeProperty == null) {
                                    this.delegate.nextToken();
                                    this.delegate.skipChildren();
                                } else {
                                    this._itemFilter = includeProperty;
                                    if (includeProperty == TokenFilter.INCLUDE_ALL) {
                                        if (!_verifyAllowedMatches()) {
                                            this.delegate.nextToken();
                                            this.delegate.skipChildren();
                                        } else if (this._inclusion == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH) {
                                            this._currToken = nextToken;
                                            return nextToken;
                                        }
                                    }
                                    if (!(this._inclusion == TokenFilter.Inclusion.ONLY_INCLUDE_ALL || (_nextTokenWithBuffering3 = _nextTokenWithBuffering(this._headContext)) == null)) {
                                        this._currToken = _nextTokenWithBuffering3;
                                        return _nextTokenWithBuffering3;
                                    }
                                }
                            }
                        }
                    }
                }
                boolean isStartHandled = this._headContext.isStartHandled();
                TokenFilter filter = this._headContext.getFilter();
                if (!(filter == null || filter == TokenFilter.INCLUDE_ALL)) {
                    filter.filterFinishArray();
                }
                TokenFilterContext parent = this._headContext.getParent();
                this._headContext = parent;
                this._itemFilter = parent.getFilter();
                if (isStartHandled) {
                    this._currToken = nextToken;
                    return nextToken;
                }
            } else {
                TokenFilter tokenFilter4 = this._itemFilter;
                if (tokenFilter4 == TokenFilter.INCLUDE_ALL) {
                    this._headContext = this._headContext.createChildObjectContext(tokenFilter4, true);
                    this._currToken = nextToken;
                    return nextToken;
                } else if (tokenFilter4 == null) {
                    this.delegate.skipChildren();
                } else {
                    TokenFilter checkValue3 = this._headContext.checkValue(tokenFilter4);
                    if (checkValue3 == null) {
                        this.delegate.skipChildren();
                    } else {
                        TokenFilter tokenFilter5 = checkValue3;
                        if (checkValue3 != TokenFilter.INCLUDE_ALL) {
                            tokenFilter5 = checkValue3.filterStartObject();
                        }
                        this._itemFilter = tokenFilter5;
                        if (tokenFilter5 == TokenFilter.INCLUDE_ALL) {
                            this._headContext = this._headContext.createChildObjectContext(tokenFilter5, true);
                            this._currToken = nextToken;
                            return nextToken;
                        } else if (tokenFilter5 == null || this._inclusion != TokenFilter.Inclusion.INCLUDE_NON_NULL) {
                            this._headContext = this._headContext.createChildObjectContext(tokenFilter5, false);
                            if (this._inclusion == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH && (_nextTokenWithBuffering = _nextTokenWithBuffering(this._headContext)) != null) {
                                this._currToken = _nextTokenWithBuffering;
                                return _nextTokenWithBuffering;
                            }
                        } else {
                            this._headContext = this._headContext.createChildObjectContext(tokenFilter5, true);
                            this._currToken = nextToken;
                            return nextToken;
                        }
                    }
                }
            }
            return _nextToken2();
        }
        this._currToken = null;
        return null;
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public JsonToken nextValue() throws IOException {
        JsonToken nextToken = nextToken();
        JsonToken jsonToken = nextToken;
        if (nextToken == JsonToken.FIELD_NAME) {
            jsonToken = nextToken();
        }
        return jsonToken;
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public void overrideCurrentName(String str) {
        throw new UnsupportedOperationException("Can not currently override name during filtering read");
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        return this.delegate.readBinaryValue(base64Variant, outputStream);
    }

    @Override // com.fasterxml.jackson.core.util.JsonParserDelegate, com.fasterxml.jackson.core.JsonParser
    public JsonParser skipChildren() throws IOException {
        if (this._currToken != JsonToken.START_OBJECT && this._currToken != JsonToken.START_ARRAY) {
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
}
