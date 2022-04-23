package com.dropbox.core.v1;

import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.b;
import com.dropbox.core.util.c;
import com.dropbox.core.util.f;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDelta.class */
public final class DbxDelta<MD extends c> extends c {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f17862a;

    /* renamed from: b  reason: collision with root package name */
    public final List<Entry<MD>> f17863b;

    /* renamed from: c  reason: collision with root package name */
    public final String f17864c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f17865d;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDelta$Entry.class */
    public static final class Entry<MD extends c> extends c {

        /* renamed from: a  reason: collision with root package name */
        public final String f17866a;

        /* renamed from: b  reason: collision with root package name */
        public final MD f17867b;

        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDelta$Entry$Reader.class */
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
                                throw new JsonReadException("expecting a two-element array of [path, metadata], found non \"]\" token after the two elements: " + jsonParser.getCurrentToken(), expectArrayStart);
                            } catch (JsonReadException e) {
                                throw e.addArrayContext(1);
                            }
                        } else {
                            throw new JsonReadException("expecting a two-element array of [path, metadata], found a one-element array: " + f.b(read), expectArrayStart);
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
            this.f17866a = str;
            this.f17867b = md;
        }

        @Override // com.dropbox.core.util.c
        public final void a(b bVar) {
            bVar.b("lcPath").d(this.f17866a);
            bVar.b("metadata").a(this.f17867b);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDelta$Reader.class */
    public static final class Reader<MD extends c> extends JsonReader<DbxDelta<MD>> {
        private static final JsonReader.FieldMapping FM;
        private static final int FM_cursor = 2;
        private static final int FM_entries = 1;
        private static final int FM_has_more = 3;
        private static final int FM_reset = 0;
        public final JsonReader<MD> metadataReader;

        static {
            JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
            builder.add("reset", 0);
            builder.add("entries", 1);
            builder.add("cursor", 2);
            builder.add("has_more", 3);
            FM = builder.build();
        }

        public Reader(JsonReader<MD> jsonReader) {
            this.metadataReader = jsonReader;
        }

        public static <MD extends c> DbxDelta<MD> read(JsonParser jsonParser, JsonReader<MD> jsonReader) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            Boolean bool = null;
            List list = null;
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
                    list = (List) JsonArrayReader.mk(new Entry.Reader(jsonReader)).readField(jsonParser, currentName, list);
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
            } else if (list == null) {
                throw new JsonReadException("missing field \"entries\"", expectObjectStart);
            } else if (str == null) {
                throw new JsonReadException("missing field \"cursor\"", expectObjectStart);
            } else if (bool2 != null) {
                return new DbxDelta<>(bool.booleanValue(), list, str, bool2.booleanValue());
            } else {
                throw new JsonReadException("missing field \"has_more\"", expectObjectStart);
            }
        }

        @Override // com.dropbox.core.json.JsonReader
        public final DbxDelta<MD> read(JsonParser jsonParser) throws IOException, JsonReadException {
            return read(jsonParser, this.metadataReader);
        }
    }

    public DbxDelta(boolean z, List<Entry<MD>> list, String str, boolean z2) {
        this.f17862a = z;
        this.f17863b = list;
        this.f17864c = str;
        this.f17865d = z2;
    }

    @Override // com.dropbox.core.util.c
    public final void a(b bVar) {
        bVar.b("reset").a(this.f17862a);
        bVar.b("hasMore").a(this.f17865d);
        bVar.b("cursor").d(this.f17864c);
        bVar.b("entries").a(this.f17863b);
    }
}
