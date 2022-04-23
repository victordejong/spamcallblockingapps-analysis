package com.dropbox.core.v1;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.c;
import com.dropbox.core.v1.a;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/a.class */
public final class a extends c {
    public static final JsonReader<a> i = new JsonReader<a>() { // from class: com.dropbox.core.v1.DbxAccountInfo$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final a read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonReader.FieldMapping fieldMapping;
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            Boolean bool = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            a.b bVar = null;
            String str4 = null;
            a.C0359a aVar = null;
            long j2 = -1;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    fieldMapping = a.j;
                    int i2 = fieldMapping.get(currentName);
                    switch (i2) {
                        case -1:
                            JsonReader.skipValue(jsonParser);
                            break;
                        case 0:
                            j2 = JsonReader.readUnsignedLongField(jsonParser, currentName, j2);
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
                            bVar = a.b.f17904d.readField(jsonParser, currentName, bVar);
                            break;
                        case 5:
                            aVar = a.C0359a.f17900d.readField(jsonParser, currentName, aVar);
                            break;
                        case 6:
                            str4 = JsonReader.StringReader.readField(jsonParser, currentName, str4);
                            break;
                        case 7:
                            bool = JsonReader.BooleanReader.readField(jsonParser, currentName, bool);
                            break;
                        default:
                            throw new AssertionError("bad index: " + i2 + ", field = \"" + currentName + "\"");
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (j2 < 0) {
                throw new JsonReadException("missing field \"uid\"", expectObjectStart);
            } else if (str == null) {
                throw new JsonReadException("missing field \"display_name\"", expectObjectStart);
            } else if (str2 == null) {
                throw new JsonReadException("missing field \"country\"", expectObjectStart);
            } else if (str3 == null) {
                throw new JsonReadException("missing field \"referral_link\"", expectObjectStart);
            } else if (bVar == null) {
                throw new JsonReadException("missing field \"quota_info\"", expectObjectStart);
            } else if (str4 == null) {
                throw new JsonReadException("missing field \"email\"", expectObjectStart);
            } else if (aVar == null) {
                throw new JsonReadException("missing field \"nameDetails\"", expectObjectStart);
            } else if (bool != null) {
                return new a(j2, str, str2, str3, bVar, str4, aVar, bool.booleanValue());
            } else {
                throw new JsonReadException("missing field \"emailVerified\"", expectObjectStart);
            }
        }
    };
    private static final JsonReader.FieldMapping j;

    /* renamed from: a  reason: collision with root package name */
    public final long f17896a;

    /* renamed from: b  reason: collision with root package name */
    public final String f17897b;

    /* renamed from: c  reason: collision with root package name */
    public final String f17898c;

    /* renamed from: d  reason: collision with root package name */
    public final String f17899d;
    public final b e;
    public final String f;
    public final C0359a g;
    public final boolean h;

    /* renamed from: com.dropbox.core.v1.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/a$a.class */
    public static final class C0359a extends c {

        /* renamed from: d  reason: collision with root package name */
        public static final JsonReader<C0359a> f17900d = new JsonReader<C0359a>() { // from class: com.dropbox.core.v1.DbxAccountInfo$NameDetails$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final a.C0359a read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonReader.FieldMapping fieldMapping;
                JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
                String str = null;
                String str2 = null;
                String str3 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    fieldMapping = a.C0359a.e;
                    int i = fieldMapping.get(currentName);
                    if (i == -1) {
                        JsonReader.skipValue(jsonParser);
                    } else if (i == 0) {
                        str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                    } else if (i != 1) {
                        if (i == 2) {
                            try {
                                str2 = JsonReader.StringReader.readField(jsonParser, currentName, str2);
                            } catch (JsonReadException e2) {
                                throw e2.addFieldContext(currentName);
                            }
                        } else {
                            throw new AssertionError("bad index: " + i + ", field = \"" + currentName + "\"");
                        }
                        throw e2.addFieldContext(currentName);
                    } else {
                        str3 = JsonReader.StringReader.readField(jsonParser, currentName, str3);
                    }
                }
                JsonReader.expectObjectEnd(jsonParser);
                if (str == null) {
                    throw new JsonReadException("missing field \"familiarName\"", expectObjectStart);
                } else if (str2 == null) {
                    throw new JsonReadException("missing field \"surname\"", expectObjectStart);
                } else if (str3 != null) {
                    return new a.C0359a(str, str3, str2);
                } else {
                    throw new JsonReadException("missing field \"givenName\"", expectObjectStart);
                }
            }
        };
        private static final JsonReader.FieldMapping e;

        /* renamed from: a  reason: collision with root package name */
        public final String f17901a;

        /* renamed from: b  reason: collision with root package name */
        public final String f17902b;

        /* renamed from: c  reason: collision with root package name */
        public final String f17903c;

        static {
            JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
            builder.add("familiar_name", 0);
            builder.add("given_name", 1);
            builder.add("surname", 2);
            e = builder.build();
        }

        public C0359a(String str, String str2, String str3) {
            this.f17901a = str;
            this.f17902b = str2;
            this.f17903c = str3;
        }

        @Override // com.dropbox.core.util.c
        public final void a(com.dropbox.core.util.b bVar) {
            bVar.b("familiarName").d(this.f17901a);
            bVar.b("givenName").d(this.f17902b);
            bVar.b("surname").d(this.f17903c);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/a$b.class */
    public static final class b extends c {

        /* renamed from: d  reason: collision with root package name */
        public static final JsonReader<b> f17904d = new JsonReader<b>() { // from class: com.dropbox.core.v1.DbxAccountInfo$Quota$1
            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r14v0 */
            /* JADX WARN: Type inference failed for: r14v1, types: [long] */
            /* JADX WARN: Type inference failed for: r14v2 */
            /* JADX WARN: Type inference failed for: r14v3, types: [long] */
            /* JADX WARN: Type inference failed for: r16v0 */
            /* JADX WARN: Type inference failed for: r16v1, types: [long] */
            /* JADX WARN: Type inference failed for: r16v2 */
            /* JADX WARN: Type inference failed for: r16v3, types: [long] */
            /* JADX WARN: Unknown variable types count: 2 */
            @Override // com.dropbox.core.json.JsonReader
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final com.dropbox.core.v1.a.b read(com.fasterxml.jackson.core.JsonParser r10) throws java.io.IOException, com.dropbox.core.json.JsonReadException {
                /*
                    Method dump skipped, instructions count: 244
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v1.DbxAccountInfo$Quota$1.read(com.fasterxml.jackson.core.JsonParser):com.dropbox.core.v1.a$b");
            }
        };
        private static final JsonReader.FieldMapping e;

        /* renamed from: a  reason: collision with root package name */
        public final long f17905a;

        /* renamed from: b  reason: collision with root package name */
        public final long f17906b;

        /* renamed from: c  reason: collision with root package name */
        public final long f17907c;

        static {
            JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
            builder.add("quota", 0);
            builder.add("normal", 1);
            builder.add("shared", 2);
            e = builder.build();
        }

        public b(long j, long j2, long j3) {
            this.f17905a = j;
            this.f17906b = j2;
            this.f17907c = j3;
        }

        @Override // com.dropbox.core.util.c
        public final void a(com.dropbox.core.util.b bVar) {
            bVar.b("total").a(this.f17905a);
            bVar.b("normal").a(this.f17906b);
            bVar.b("shared").a(this.f17907c);
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
        j = builder.build();
    }

    public a(long j2, String str, String str2, String str3, b bVar, String str4, C0359a aVar, boolean z) {
        this.f17896a = j2;
        this.f17897b = str;
        this.f17898c = str2;
        this.f17899d = str3;
        this.e = bVar;
        this.f = str4;
        this.g = aVar;
        this.h = z;
    }

    @Override // com.dropbox.core.util.c
    public final void a(com.dropbox.core.util.b bVar) {
        bVar.b("userId").a(this.f17896a);
        bVar.b("displayName").d(this.f17897b);
        bVar.b("country").d(this.f17898c);
        bVar.b("referralLink").d(this.f17899d);
        bVar.b("quota").a(this.e);
        bVar.b("nameDetails").a(this.g);
        bVar.b("email").d(this.f);
        bVar.b("emailVerified").a(this.h);
    }
}
