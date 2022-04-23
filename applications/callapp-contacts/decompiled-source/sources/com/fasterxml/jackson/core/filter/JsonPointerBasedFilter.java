package com.fasterxml.jackson.core.filter;

import com.fasterxml.jackson.core.JsonPointer;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/filter/JsonPointerBasedFilter.class */
public class JsonPointerBasedFilter extends TokenFilter {
    protected final JsonPointer _pathToMatch;

    public JsonPointerBasedFilter(JsonPointer jsonPointer) {
        this._pathToMatch = jsonPointer;
    }

    public JsonPointerBasedFilter(String str) {
        this(JsonPointer.compile(str));
    }

    @Override // com.fasterxml.jackson.core.filter.TokenFilter
    protected boolean _includeScalar() {
        return this._pathToMatch.matches();
    }

    @Override // com.fasterxml.jackson.core.filter.TokenFilter
    public TokenFilter filterStartArray() {
        return this;
    }

    @Override // com.fasterxml.jackson.core.filter.TokenFilter
    public TokenFilter filterStartObject() {
        return this;
    }

    @Override // com.fasterxml.jackson.core.filter.TokenFilter
    public TokenFilter includeElement(int i) {
        JsonPointer matchElement = this._pathToMatch.matchElement(i);
        if (matchElement == null) {
            return null;
        }
        return matchElement.matches() ? TokenFilter.INCLUDE_ALL : new JsonPointerBasedFilter(matchElement);
    }

    @Override // com.fasterxml.jackson.core.filter.TokenFilter
    public TokenFilter includeProperty(String str) {
        JsonPointer matchProperty = this._pathToMatch.matchProperty(str);
        if (matchProperty == null) {
            return null;
        }
        return matchProperty.matches() ? TokenFilter.INCLUDE_ALL : new JsonPointerBasedFilter(matchProperty);
    }

    @Override // com.fasterxml.jackson.core.filter.TokenFilter
    public String toString() {
        return "[JsonPointerFilter at: " + this._pathToMatch + "]";
    }
}
