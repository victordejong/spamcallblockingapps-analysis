package com.dropbox.core.p264v1;

import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.AbstractC8631a;
import com.dropbox.core.util.AbstractC8633b;
import com.dropbox.core.util.AbstractC8635c;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v1.DbxDeltaC */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDeltaC.class */
public final class DbxDeltaC<C> extends AbstractC8635c {

    /* renamed from: a */
    public final boolean f30670a;

    /* renamed from: b */
    public final C f30671b;

    /* renamed from: c */
    public final String f30672c;

    /* renamed from: d */
    public final boolean f30673d;

    /* renamed from: com.dropbox.core.v1.DbxDeltaC$Entry */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDeltaC$Entry.class */
    public static final class Entry<MD extends AbstractC8635c> extends AbstractC8635c {

        /* renamed from: a */
        public final String f30674a;

        /* renamed from: b */
        public final MD f30675b;

        /* renamed from: com.dropbox.core.v1.DbxDeltaC$Entry$Reader */
        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDeltaC$Entry$Reader.class */
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
                            throw new JsonReadException("expecting a two-element array of [path, metadata], found a one-element array", expectArrayStart);
                        }
                        try {
                            MD readOptional = jsonReader.readOptional(jsonParser);
                            if (!JsonReader.isArrayEnd(jsonParser)) {
                                throw new JsonReadException("expecting a two-element array of [path, metadata], found more than two elements", expectArrayStart);
                            }
                            jsonParser.nextToken();
                            return new Entry<>(read, readOptional);
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
            this.f30674a = str;
            this.f30675b = md;
        }

        @Override // com.dropbox.core.util.AbstractC8635c
        /* renamed from: a */
        public final void mo25199a(AbstractC8633b abstractC8633b) {
            abstractC8633b.mo25228b("lcPath").m25233d(this.f30674a);
            abstractC8633b.mo25228b("metadata").m25237a(this.f30675b);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxDeltaC$Reader */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxDeltaC$Reader.class */
    public static final class Reader<C, MD extends AbstractC8635c> extends JsonReader<DbxDeltaC<C>> {

        /* renamed from: FM */
        private static final JsonReader.FieldMapping f30676FM;
        private static final int FM_cursor = 2;
        private static final int FM_entries = 1;
        private static final int FM_has_more = 3;
        private static final int FM_reset = 0;
        public final AbstractC8631a<Entry<MD>, C> entryCollector;
        public final JsonReader<MD> metadataReader;

        static {
            JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
            builder.add("reset", 0);
            builder.add("entries", 1);
            builder.add("cursor", 2);
            builder.add("has_more", 3);
            f30676FM = builder.build();
        }

        public Reader(JsonReader<MD> jsonReader, AbstractC8631a<Entry<MD>, C> abstractC8631a) {
            this.metadataReader = jsonReader;
            this.entryCollector = abstractC8631a;
        }

        public static <C, MD extends AbstractC8635c> DbxDeltaC<C> read(JsonParser jsonParser, JsonReader<MD> jsonReader, AbstractC8631a<Entry<MD>, C> abstractC8631a) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            Boolean bool = null;
            Object obj = null;
            String str = null;
            Boolean bool2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                JsonReader.nextToken(jsonParser);
                int i = f30676FM.get(currentName);
                if (i == -1) {
                    try {
                        JsonReader.skipValue(jsonParser);
                    } catch (JsonReadException e) {
                        throw e.addFieldContext(currentName);
                    }
                } else if (i == 0) {
                    bool = JsonReader.BooleanReader.readField(jsonParser, currentName, bool);
                } else if (i == 1) {
                    obj = JsonArrayReader.m25256mk(new Entry.Reader(jsonReader), abstractC8631a).readField(jsonParser, currentName, obj);
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
                if (obj == null) {
                    throw new JsonReadException("missing field \"entries\"", expectObjectStart);
                }
                if (str == null) {
                    throw new JsonReadException("missing field \"cursor\"", expectObjectStart);
                }
                if (bool2 == null) {
                    throw new JsonReadException("missing field \"has_more\"", expectObjectStart);
                }
                return new DbxDeltaC<>(bool.booleanValue(), obj, str, bool2.booleanValue());
            }
            throw new JsonReadException("missing field \"path\"", expectObjectStart);
        }

        @Override // com.dropbox.core.json.JsonReader
        public final DbxDeltaC<C> read(JsonParser jsonParser) throws IOException, JsonReadException {
            return read(jsonParser, this.metadataReader, this.entryCollector);
        }
    }

    public DbxDeltaC(boolean z, C c, String str, boolean z2) {
        this.f30670a = z;
        this.f30671b = c;
        this.f30672c = str;
        this.f30673d = z2;
    }

    @Override // com.dropbox.core.util.AbstractC8635c
    /* renamed from: a */
    public final void mo25199a(AbstractC8633b abstractC8633b) {
        abstractC8633b.mo25228b("reset").m25234a(this.f30670a);
        abstractC8633b.mo25228b("cursor").m25233d(this.f30672c);
        abstractC8633b.mo25228b("entries").m25234a(this.f30673d);
    }
}
