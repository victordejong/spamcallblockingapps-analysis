package com.dropbox.core.p264v1;

import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.AbstractC8633b;
import com.dropbox.core.util.AbstractC8635c;
import com.dropbox.core.util.C8638f;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.List;
/* renamed from: com.dropbox.core.v1.DbxDelta */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDelta.class */
public final class DbxDelta<MD extends AbstractC8635c> extends AbstractC8635c {

    /* renamed from: a */
    public final boolean f30663a;

    /* renamed from: b */
    public final List<Entry<MD>> f30664b;

    /* renamed from: c */
    public final String f30665c;

    /* renamed from: d */
    public final boolean f30666d;

    /* renamed from: com.dropbox.core.v1.DbxDelta$Entry */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDelta$Entry.class */
    public static final class Entry<MD extends AbstractC8635c> extends AbstractC8635c {

        /* renamed from: a */
        public final String f30667a;

        /* renamed from: b */
        public final MD f30668b;

        /* renamed from: com.dropbox.core.v1.DbxDelta$Entry$Reader */
        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDelta$Entry$Reader.class */
        public static final class Reader<MD extends AbstractC8635c> extends JsonReader<Entry<MD>> {
            public final JsonReader<MD> metadataReader;

            public Reader(JsonReader<MD> jsonReader) {
                this.metadataReader = jsonReader;
            }

            public static <MD extends AbstractC8635c> Entry<MD> read(JsonParser jsonParser, JsonReader<MD> jsonReader) throws IOException, JsonReadException {
                JsonLocation expectArrayStart = JsonReader.expectArrayStart(jsonParser);
                if (!JsonReader.isArrayEnd(jsonParser)) {
                    try {
                        String read = JsonReader.StringReader.read(jsonParser);
                        if (JsonReader.isArrayEnd(jsonParser)) {
                            throw new JsonReadException("expecting a two-element array of [path, metadata], found a one-element array: " + C8638f.m25215b(read), expectArrayStart);
                        }
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
                    } catch (JsonReadException e2) {
                        throw e2.addArrayContext(0);
                    }
                }
                throw new JsonReadException("expecting a two-element array of [path, metadata], found a zero-element array", expectArrayStart);
            }

            @Override // com.dropbox.core.json.JsonReader
            public final Entry<MD> read(JsonParser jsonParser) throws IOException, JsonReadException {
                return read(jsonParser, this.metadataReader);
            }
        }

        public Entry(String str, MD md) {
            this.f30667a = str;
            this.f30668b = md;
        }

        @Override // com.dropbox.core.util.AbstractC8635c
        /* renamed from: a */
        public final void mo25199a(AbstractC8633b abstractC8633b) {
            abstractC8633b.mo25228b("lcPath").m25233d(this.f30667a);
            abstractC8633b.mo25228b("metadata").m25237a(this.f30668b);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxDelta$Reader */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDelta$Reader.class */
    public static final class Reader<MD extends AbstractC8635c> extends JsonReader<DbxDelta<MD>> {

        /* renamed from: FM */
        private static final JsonReader.FieldMapping f30669FM;
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
            f30669FM = builder.build();
        }

        public Reader(JsonReader<MD> jsonReader) {
            this.metadataReader = jsonReader;
        }

        public static <MD extends AbstractC8635c> DbxDelta<MD> read(JsonParser jsonParser, JsonReader<MD> jsonReader) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            Boolean bool = null;
            List list = null;
            String str = null;
            Boolean bool2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                JsonReader.nextToken(jsonParser);
                int i = f30669FM.get(currentName);
                if (i == -1) {
                    try {
                        JsonReader.skipValue(jsonParser);
                    } catch (JsonReadException e) {
                        throw e.addFieldContext(currentName);
                    }
                } else if (i == 0) {
                    bool = JsonReader.BooleanReader.readField(jsonParser, currentName, bool);
                } else if (i == 1) {
                    list = (List) JsonArrayReader.m25257mk(new Entry.Reader(jsonReader)).readField(jsonParser, currentName, list);
                } else if (i == 2) {
                    str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                } else if (i != 3) {
                    throw new AssertionError("bad index: " + i + ", field = \"" + currentName + "\"");
                } else {
                    bool2 = JsonReader.BooleanReader.readField(jsonParser, currentName, bool2);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (bool != null) {
                if (list == null) {
                    throw new JsonReadException("missing field \"entries\"", expectObjectStart);
                }
                if (str == null) {
                    throw new JsonReadException("missing field \"cursor\"", expectObjectStart);
                }
                if (bool2 == null) {
                    throw new JsonReadException("missing field \"has_more\"", expectObjectStart);
                }
                return new DbxDelta<>(bool.booleanValue(), list, str, bool2.booleanValue());
            }
            throw new JsonReadException("missing field \"path\"", expectObjectStart);
        }

        @Override // com.dropbox.core.json.JsonReader
        public final DbxDelta<MD> read(JsonParser jsonParser) throws IOException, JsonReadException {
            return read(jsonParser, this.metadataReader);
        }
    }

    public DbxDelta(boolean z, List<Entry<MD>> list, String str, boolean z2) {
        this.f30663a = z;
        this.f30664b = list;
        this.f30665c = str;
        this.f30666d = z2;
    }

    @Override // com.dropbox.core.util.AbstractC8635c
    /* renamed from: a */
    public final void mo25199a(AbstractC8633b abstractC8633b) {
        abstractC8633b.mo25228b("reset").m25234a(this.f30663a);
        abstractC8633b.mo25228b("hasMore").m25234a(this.f30666d);
        abstractC8633b.mo25228b("cursor").m25233d(this.f30665c);
        abstractC8633b.mo25228b("entries").m25236a(this.f30664b);
    }
}
