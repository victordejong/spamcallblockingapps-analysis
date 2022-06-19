package com.dropbox.core.p264v1;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.p264v1.C8651a;
import com.dropbox.core.util.AbstractC8633b;
import com.dropbox.core.util.AbstractC8635c;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v1.a */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/a.class */
public final class C8651a extends AbstractC8635c {

    /* renamed from: i */
    public static final JsonReader<C8651a> f30715i = new JsonReader<C8651a>() { // from class: com.dropbox.core.v1.DbxAccountInfo$1
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Type inference failed for: r0v45, types: [long] */
        @Override // com.dropbox.core.json.JsonReader
        public final C8651a read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonReader.FieldMapping fieldMapping;
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            Boolean bool = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            C8651a.C8653b c8653b = null;
            String str4 = null;
            C8651a.C8652a c8652a = null;
            char c = 65535;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    fieldMapping = C8651a.f30716j;
                    int i = fieldMapping.get(currentName);
                    switch (i) {
                        case -1:
                            JsonReader.skipValue(jsonParser);
                            break;
                        case 0:
                            c = JsonReader.readUnsignedLongField(jsonParser, currentName, c);
                            break;
                        case 1:
                            str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                            break;
                        case 2:
                            str2 = JsonReader.StringReader.readField(jsonParser, currentName, str2);
                            break;
                        case 3:
                            str3 = JsonReader.StringReader.readField(jsonParser, currentName, str3);
                            break;
                        case 4:
                            c8653b = C8651a.C8653b.f30730d.readField(jsonParser, currentName, c8653b);
                            break;
                        case 5:
                            c8652a = C8651a.C8652a.f30725d.readField(jsonParser, currentName, c8652a);
                            break;
                        case 6:
                            str4 = JsonReader.StringReader.readField(jsonParser, currentName, str4);
                            break;
                        case 7:
                            bool = JsonReader.BooleanReader.readField(jsonParser, currentName, bool);
                            break;
                        default:
                            throw new AssertionError("bad index: " + i + ", field = \"" + currentName + "\"");
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (c >= 0) {
                if (str == null) {
                    throw new JsonReadException("missing field \"display_name\"", expectObjectStart);
                }
                if (str2 == null) {
                    throw new JsonReadException("missing field \"country\"", expectObjectStart);
                }
                if (str3 == null) {
                    throw new JsonReadException("missing field \"referral_link\"", expectObjectStart);
                }
                if (c8653b == null) {
                    throw new JsonReadException("missing field \"quota_info\"", expectObjectStart);
                }
                if (str4 == null) {
                    throw new JsonReadException("missing field \"email\"", expectObjectStart);
                }
                if (c8652a == null) {
                    throw new JsonReadException("missing field \"nameDetails\"", expectObjectStart);
                }
                if (bool == null) {
                    throw new JsonReadException("missing field \"emailVerified\"", expectObjectStart);
                }
                return new C8651a(c, str, str2, str3, c8653b, str4, c8652a, bool.booleanValue());
            }
            throw new JsonReadException("missing field \"uid\"", expectObjectStart);
        }
    };

    /* renamed from: j */
    private static final JsonReader.FieldMapping f30716j;

    /* renamed from: a */
    public final long f30717a;

    /* renamed from: b */
    public final String f30718b;

    /* renamed from: c */
    public final String f30719c;

    /* renamed from: d */
    public final String f30720d;

    /* renamed from: e */
    public final C8653b f30721e;

    /* renamed from: f */
    public final String f30722f;

    /* renamed from: g */
    public final C8652a f30723g;

    /* renamed from: h */
    public final boolean f30724h;

    /* renamed from: com.dropbox.core.v1.a$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/a$a.class */
    public static final class C8652a extends AbstractC8635c {

        /* renamed from: d */
        public static final JsonReader<C8652a> f30725d = new JsonReader<C8652a>() { // from class: com.dropbox.core.v1.DbxAccountInfo$NameDetails$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final C8651a.C8652a read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonReader.FieldMapping fieldMapping;
                JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
                String str = null;
                String str2 = null;
                String str3 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    fieldMapping = C8651a.C8652a.f30726e;
                    int i = fieldMapping.get(currentName);
                    if (i == -1) {
                        JsonReader.skipValue(jsonParser);
                    } else if (i == 0) {
                        str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                    } else if (i != 1) {
                        if (i != 2) {
                            throw new AssertionError("bad index: " + i + ", field = \"" + currentName + "\"");
                        }
                        try {
                            str2 = JsonReader.StringReader.readField(jsonParser, currentName, str2);
                        } catch (JsonReadException e) {
                            throw e.addFieldContext(currentName);
                        }
                        throw e.addFieldContext(currentName);
                    } else {
                        str3 = JsonReader.StringReader.readField(jsonParser, currentName, str3);
                    }
                }
                JsonReader.expectObjectEnd(jsonParser);
                if (str != null) {
                    if (str2 == null) {
                        throw new JsonReadException("missing field \"surname\"", expectObjectStart);
                    }
                    if (str3 == null) {
                        throw new JsonReadException("missing field \"givenName\"", expectObjectStart);
                    }
                    return new C8651a.C8652a(str, str3, str2);
                }
                throw new JsonReadException("missing field \"familiarName\"", expectObjectStart);
            }
        };

        /* renamed from: e */
        private static final JsonReader.FieldMapping f30726e;

        /* renamed from: a */
        public final String f30727a;

        /* renamed from: b */
        public final String f30728b;

        /* renamed from: c */
        public final String f30729c;

        static {
            JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
            builder.add("familiar_name", 0);
            builder.add("given_name", 1);
            builder.add("surname", 2);
            f30726e = builder.build();
        }

        public C8652a(String str, String str2, String str3) {
            this.f30727a = str;
            this.f30728b = str2;
            this.f30729c = str3;
        }

        @Override // com.dropbox.core.util.AbstractC8635c
        /* renamed from: a */
        public final void mo25199a(AbstractC8633b abstractC8633b) {
            abstractC8633b.mo25228b("familiarName").m25233d(this.f30727a);
            abstractC8633b.mo25228b("givenName").m25233d(this.f30728b);
            abstractC8633b.mo25228b("surname").m25233d(this.f30729c);
        }
    }

    /* renamed from: com.dropbox.core.v1.a$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/a$b.class */
    public static final class C8653b extends AbstractC8635c {

        /* renamed from: d */
        public static final JsonReader<C8653b> f30730d = new JsonReader<C8653b>() { // from class: com.dropbox.core.v1.DbxAccountInfo$Quota$1
            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v42, types: [long] */
            /* JADX WARN: Type inference failed for: r0v46, types: [long] */
            /* JADX WARN: Type inference failed for: r0v48, types: [long] */
            @Override // com.dropbox.core.json.JsonReader
            public final C8651a.C8653b read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonReader.FieldMapping fieldMapping;
                JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
                char c = 65535;
                char c2 = 65535;
                char c3 = 65535;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    fieldMapping = C8651a.C8653b.f30731e;
                    int i = fieldMapping.get(currentName);
                    if (i == -1) {
                        JsonReader.skipValue(jsonParser);
                    } else if (i == 0) {
                        c = JsonReader.readUnsignedLongField(jsonParser, currentName, c);
                    } else if (i != 1) {
                        if (i != 2) {
                            throw new AssertionError("bad index: " + i + ", field = \"" + currentName + "\"");
                        }
                        try {
                            c3 = JsonReader.readUnsignedLongField(jsonParser, currentName, c3);
                        } catch (JsonReadException e) {
                            throw e.addFieldContext(currentName);
                        }
                        throw e.addFieldContext(currentName);
                    } else {
                        c2 = JsonReader.readUnsignedLongField(jsonParser, currentName, c2);
                    }
                }
                JsonReader.expectObjectEnd(jsonParser);
                if (c >= 0) {
                    if (c2 < 0) {
                        throw new JsonReadException("missing field \"normal\"", expectObjectStart);
                    }
                    if (c3 < 0) {
                        throw new JsonReadException("missing field \"shared\"", expectObjectStart);
                    }
                    return new C8651a.C8653b(c, c2, c3);
                }
                throw new JsonReadException("missing field \"quota\"", expectObjectStart);
            }
        };

        /* renamed from: e */
        private static final JsonReader.FieldMapping f30731e;

        /* renamed from: a */
        public final long f30732a;

        /* renamed from: b */
        public final long f30733b;

        /* renamed from: c */
        public final long f30734c;

        static {
            JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
            builder.add("quota", 0);
            builder.add("normal", 1);
            builder.add("shared", 2);
            f30731e = builder.build();
        }

        public C8653b(long j, long j2, long j3) {
            this.f30732a = j;
            this.f30733b = j2;
            this.f30734c = j3;
        }

        @Override // com.dropbox.core.util.AbstractC8635c
        /* renamed from: a */
        public final void mo25199a(AbstractC8633b abstractC8633b) {
            abstractC8633b.mo25228b("total").m25238a(this.f30732a);
            abstractC8633b.mo25228b("normal").m25238a(this.f30733b);
            abstractC8633b.mo25228b("shared").m25238a(this.f30734c);
        }
    }

    static {
        JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
        builder.add("uid", 0);
        builder.add("display_name", 1);
        builder.add("country", 2);
        builder.add("referral_link", 3);
        builder.add("quota_info", 4);
        builder.add("name_details", 5);
        builder.add("email", 6);
        builder.add("email_verified", 7);
        f30716j = builder.build();
    }

    public C8651a(long j, String str, String str2, String str3, C8653b c8653b, String str4, C8652a c8652a, boolean z) {
        this.f30717a = j;
        this.f30718b = str;
        this.f30719c = str2;
        this.f30720d = str3;
        this.f30721e = c8653b;
        this.f30722f = str4;
        this.f30723g = c8652a;
        this.f30724h = z;
    }

    @Override // com.dropbox.core.util.AbstractC8635c
    /* renamed from: a */
    public final void mo25199a(AbstractC8633b abstractC8633b) {
        abstractC8633b.mo25228b("userId").m25238a(this.f30717a);
        abstractC8633b.mo25228b("displayName").m25233d(this.f30718b);
        abstractC8633b.mo25228b("country").m25233d(this.f30719c);
        abstractC8633b.mo25228b("referralLink").m25233d(this.f30720d);
        abstractC8633b.mo25228b("quota").m25237a(this.f30721e);
        abstractC8633b.mo25228b("nameDetails").m25237a(this.f30723g);
        abstractC8633b.mo25228b("email").m25233d(this.f30722f);
        abstractC8633b.mo25228b("emailVerified").m25234a(this.f30724h);
    }
}
