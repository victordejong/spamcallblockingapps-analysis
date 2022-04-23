package com.dropbox.core.v1;

import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.a;
import com.dropbox.core.util.b;
import com.dropbox.core.util.c;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDeltaC.class */
public final class DbxDeltaC<C> extends c {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f17868a;

    /* renamed from: b  reason: collision with root package name */
    public final C f17869b;

    /* renamed from: c  reason: collision with root package name */
    public final String f17870c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f17871d;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDeltaC$Entry.class */
    public static final class Entry<MD extends c> extends c {

        /* renamed from: a  reason: collision with root package name */
        public final String f17872a;

        /* renamed from: b  reason: collision with root package name */
        public final MD f17873b;

        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDeltaC$Entry$Reader.class */
        public static final class Reader<MD extends c> extends JsonReader<Entry<MD>> {
            public final JsonReader<MD> metadataReader;

            public Reader(JsonReader<MD> jsonReader) {
                this.metadataReader = jsonReader;
            }

            public static <MD extends c> Entry<MD> read(JsonParser jsonParser, JsonReader<MD> jsonReader) throws IOException, JsonReadException {
                JsonLocation expectArrayStart = JsonReader.expectArrayStart(jsonParser);
                if (!JsonReader.isArrayEnd(jsonParser)) {
                    try {
                        String read = JsonReader.StringReader.read(jsonParser);
                        if (!JsonReader.isArrayEnd(jsonParser)) {
                            try {
                                MD readOptional = jsonReader.readOptional(jsonParser);
                                if (JsonReader.isArrayEnd(jsonParser)) {
                                    jsonParser.nextToken();
                                    return new Entry<>(read, readOptional);
                                }
                                throw new JsonReadException("expecting a two-element array of [path, metadata], found more than two elements", expectArrayStart);
                            } catch (JsonReadException e) {
                                throw e.addArrayContext(1);
                            }
                        } else {
                            throw new JsonReadException("expecting a two-element array of [path, metadata], found a one-element array", expectArrayStart);
                        }
                    } catch (JsonReadException e2) {
                        throw e2.addArrayContext(0);
                    }
                } else {
                    throw new JsonReadException("expecting a two-element array of [path, metadata], found a zero-element array", expectArrayStart);
                }
            }

            @Override // com.dropbox.core.json.JsonReader
            public final Entry<MD> read(JsonParser jsonParser) throws IOException, JsonReadException {
                return read(jsonParser, this.metadataReader);
            }
        }

        public Entry(String str, MD md) {
            this.f17872a = str;
            this.f17873b = md;
        }

        @Override // com.dropbox.core.util.c
        public final void a(b bVar) {
            bVar.b("lcPath").d(this.f17872a);
            bVar.b("metadata").a(this.f17873b);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDeltaC$Reader.class */
    public static final class Reader<C, MD extends c> extends JsonReader<DbxDeltaC<C>> {
        private static final JsonReader.FieldMapping FM;
        private static final int FM_cursor = 2;
        private static final int FM_entries = 1;
        private static final int FM_has_more = 3;
        private static final int FM_reset = 0;
        public final a<Entry<MD>, C> entryCollector;
        public final JsonReader<MD> metadataReader;

        static {
            JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
            builder.add("reset", 0);
            builder.add("entries", 1);
            builder.add("cursor", 2);
            builder.add("has_more", 3);
            FM = builder.build();
        }

        public Reader(JsonReader<MD> jsonReader, a<Entry<MD>, C> aVar) {
            this.metadataReader = jsonReader;
            this.entryCollector = aVar;
        }

        public static <C, MD extends c> DbxDeltaC<C> read(JsonParser jsonParser, JsonReader<MD> jsonReader, a<Entry<MD>, C> aVar) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            Boolean bool = null;
            Object obj = null;
            String str = null;
            Boolean bool2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                JsonReader.nextToken(jsonParser);
                int i = FM.get(currentName);
                if (i == -1) {
                    try {
                        JsonReader.skipValue(jsonParser);
                    } catch (JsonReadException e) {
                        throw e.addFieldContext(currentName);
                    }
                } else if (i == 0) {
                    bool = JsonReader.BooleanReader.readField(jsonParser, currentName, bool);
                } else if (i == 1) {
                    obj = JsonArrayReader.mk(new Entry.Reader(jsonReader), aVar).readField(jsonParser, currentName, obj);
                } else if (i == 2) {
                    str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                } else if (i == 3) {
                    bool2 = JsonReader.BooleanReader.readField(jsonParser, currentName, bool2);
                } else {
                    throw new AssertionError("bad index: " + i + ", field = \"" + currentName + "\"");
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (bool == null) {
                throw new JsonReadException("missing field \"path\"", expectObjectStart);
            } else if (obj == null) {
                throw new JsonReadException("missing field \"entries\"", expectObjectStart);
            } else if (str == null) {
                throw new JsonReadException("missing field \"cursor\"", expectObjectStart);
            } else if (bool2 != null) {
                return new DbxDeltaC<>(bool.booleanValue(), obj, str, bool2.booleanValue());
            } else {
                throw new JsonReadException("missing field \"has_more\"", expectObjectStart);
            }
        }

        @Override // com.dropbox.core.json.JsonReader
        public final DbxDeltaC<C> read(JsonParser jsonParser) throws IOException, JsonReadException {
            return read(jsonParser, this.metadataReader, this.entryCollector);
        }
    }

    public DbxDeltaC(boolean z, C c2, String str, boolean z2) {
        this.f17868a = z;
        this.f17869b = c2;
        this.f17870c = str;
        this.f17871d = z2;
    }

    @Override // com.dropbox.core.util.c
    public final void a(b bVar) {
        bVar.b("reset").a(this.f17868a);
        bVar.b("cursor").d(this.f17870c);
        bVar.b("entries").a(this.f17871d);
    }
}
