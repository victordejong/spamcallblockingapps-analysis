package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.format.InputAccessor;
import com.fasterxml.jackson.core.format.MatchStrength;
import com.fasterxml.jackson.core.p309io.MergedStream;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/DataFormatReaders.class */
public class DataFormatReaders {
    protected final int _maxInputLookahead;
    protected final MatchStrength _minimalMatch;
    protected final MatchStrength _optimalMatch;
    protected final ObjectReader[] _readers;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader.class */
    public static class AccessorForReader extends InputAccessor.Std {
        public AccessorForReader(InputStream inputStream, byte[] bArr) {
            super(inputStream, bArr);
        }

        public AccessorForReader(byte[] bArr) {
            super(bArr);
        }

        public AccessorForReader(byte[] bArr, int i, int i2) {
            super(bArr, i, i2);
        }

        public Match createMatcher(ObjectReader objectReader, MatchStrength matchStrength) {
            return new Match(this._in, this._buffer, this._bufferedStart, this._bufferedEnd - this._bufferedStart, objectReader, matchStrength);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/DataFormatReaders$Match.class */
    public static class Match {
        protected final byte[] _bufferedData;
        protected final int _bufferedLength;
        protected final int _bufferedStart;
        protected final ObjectReader _match;
        protected final MatchStrength _matchStrength;
        protected final InputStream _originalStream;

        protected Match(InputStream inputStream, byte[] bArr, int i, int i2, ObjectReader objectReader, MatchStrength matchStrength) {
            this._originalStream = inputStream;
            this._bufferedData = bArr;
            this._bufferedStart = i;
            this._bufferedLength = i2;
            this._match = objectReader;
            this._matchStrength = matchStrength;
        }

        public JsonParser createParserWithMatch() throws IOException {
            ObjectReader objectReader = this._match;
            if (objectReader == null) {
                return null;
            }
            JsonFactory factory = objectReader.getFactory();
            return this._originalStream == null ? factory.createParser(this._bufferedData, this._bufferedStart, this._bufferedLength) : factory.createParser(getDataStream());
        }

        public InputStream getDataStream() {
            return this._originalStream == null ? new ByteArrayInputStream(this._bufferedData, this._bufferedStart, this._bufferedLength) : new MergedStream(null, this._originalStream, this._bufferedData, this._bufferedStart, this._bufferedLength);
        }

        public ObjectReader getReader() {
            return this._match;
        }

        public boolean hasMatch() {
            return this._match != null;
        }
    }

    public DataFormatReaders(Collection<ObjectReader> collection) {
        this((ObjectReader[]) collection.toArray(new ObjectReader[collection.size()]));
    }

    public DataFormatReaders(ObjectReader... objectReaderArr) {
        this(objectReaderArr, MatchStrength.SOLID_MATCH, MatchStrength.WEAK_MATCH, 64);
    }

    private DataFormatReaders(ObjectReader[] objectReaderArr, MatchStrength matchStrength, MatchStrength matchStrength2, int i) {
        this._readers = objectReaderArr;
        this._optimalMatch = matchStrength;
        this._minimalMatch = matchStrength2;
        this._maxInputLookahead = i;
    }

    private Match _findFormat(AccessorForReader accessorForReader) throws IOException {
        ObjectReader objectReader;
        MatchStrength matchStrength;
        ObjectReader[] objectReaderArr = this._readers;
        int length = objectReaderArr.length;
        ObjectReader objectReader2 = null;
        MatchStrength matchStrength2 = null;
        int i = 0;
        while (true) {
            objectReader = objectReader2;
            matchStrength = matchStrength2;
            if (i >= length) {
                break;
            }
            ObjectReader objectReader3 = objectReaderArr[i];
            accessorForReader.reset();
            MatchStrength hasFormat = objectReader3.getFactory().hasFormat(accessorForReader);
            ObjectReader objectReader4 = objectReader2;
            MatchStrength matchStrength3 = matchStrength2;
            if (hasFormat != null) {
                objectReader4 = objectReader2;
                matchStrength3 = matchStrength2;
                if (hasFormat.ordinal() >= this._minimalMatch.ordinal()) {
                    if (objectReader2 != null) {
                        objectReader4 = objectReader2;
                        matchStrength3 = matchStrength2;
                        if (matchStrength2.ordinal() >= hasFormat.ordinal()) {
                            continue;
                        }
                    }
                    if (hasFormat.ordinal() >= this._optimalMatch.ordinal()) {
                        matchStrength = hasFormat;
                        objectReader = objectReader3;
                        break;
                    }
                    objectReader4 = objectReader3;
                    matchStrength3 = hasFormat;
                } else {
                    continue;
                }
            }
            i++;
            objectReader2 = objectReader4;
            matchStrength2 = matchStrength3;
        }
        return accessorForReader.createMatcher(objectReader, matchStrength);
    }

    public Match findFormat(byte[] bArr, int i, int i2) throws IOException {
        return _findFormat(new AccessorForReader(bArr, i, i2));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        ObjectReader[] objectReaderArr = this._readers;
        int length = objectReaderArr.length;
        if (length > 0) {
            sb.append(objectReaderArr[0].getFactory().getFormatName());
            for (int i = 1; i < length; i++) {
                sb.append(", ");
                sb.append(this._readers[i].getFactory().getFormatName());
            }
        }
        sb.append(']');
        return sb.toString();
    }

    public DataFormatReaders with(DeserializationConfig deserializationConfig) {
        int length = this._readers.length;
        ObjectReader[] objectReaderArr = new ObjectReader[length];
        for (int i = 0; i < length; i++) {
            objectReaderArr[i] = this._readers[i].with(deserializationConfig);
        }
        return new DataFormatReaders(objectReaderArr, this._optimalMatch, this._minimalMatch, this._maxInputLookahead);
    }

    public DataFormatReaders withType(JavaType javaType) {
        int length = this._readers.length;
        ObjectReader[] objectReaderArr = new ObjectReader[length];
        for (int i = 0; i < length; i++) {
            objectReaderArr[i] = this._readers[i].forType(javaType);
        }
        return new DataFormatReaders(objectReaderArr, this._optimalMatch, this._minimalMatch, this._maxInputLookahead);
    }
}
