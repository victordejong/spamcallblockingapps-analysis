package com.dropbox.core.v1;

import com.dropbox.core.DbxException;
import com.dropbox.core.e;
import com.dropbox.core.h;
import com.dropbox.core.http.a;
import com.dropbox.core.i;
import com.dropbox.core.json.JsonDateReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.c;
import com.dropbox.core.v1.DbxClientV1;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.IOException;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxClientV1.class */
public final class DbxClientV1 {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f17850a = true;
    private static JsonReader<String> e = new JsonReader<String>() { // from class: com.dropbox.core.v1.DbxClientV1.11
        @Override // com.dropbox.core.json.JsonReader
        public final String read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("cursor")) {
                        str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e2) {
                    throw e2.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str != null) {
                return str;
            }
            throw new JsonReadException("missing field \"cursor\"", expectObjectStart);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final h f17851b;

    /* renamed from: c  reason: collision with root package name */
    private final String f17852c;

    /* renamed from: d  reason: collision with root package name */
    private final e f17853d;

    /* renamed from: com.dropbox.core.v1.DbxClientV1$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxClientV1$1.class */
    final class AnonymousClass1 extends i.b<DbxEntry> {
        AnonymousClass1() {
        }

        @Override // com.dropbox.core.i.b
        public final /* bridge */ /* synthetic */ DbxEntry a(a.b bVar) throws DbxException {
            if (bVar.f17782a == 404) {
                return null;
            }
            if (bVar.f17782a == 200) {
                return (DbxEntry) i.a(DbxEntry.f, bVar);
            }
            throw i.a(bVar);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxClientV1$IODbxException.class */
    public static final class IODbxException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final DbxException f17855a;

        public IODbxException(DbxException dbxException) {
            super(dbxException);
            this.f17855a = dbxException;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxClientV1$a.class */
    static final class a extends c {

        /* renamed from: c  reason: collision with root package name */
        public static final JsonReader<a> f17856c = new JsonReader<a>() { // from class: com.dropbox.core.v1.DbxClientV1$ChunkedUploadState$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxClientV1.a read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
                String str = null;
                long j = -1;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    try {
                        if (currentName.equals("upload_id")) {
                            str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                        } else if (currentName.equals(VastIconXmlManager.OFFSET)) {
                            j = JsonReader.readUnsignedLongField(jsonParser, currentName, j);
                        } else {
                            JsonReader.skipValue(jsonParser);
                        }
                    } catch (JsonReadException e) {
                        throw e.addFieldContext(currentName);
                    }
                }
                JsonReader.expectObjectEnd(jsonParser);
                if (str == null) {
                    throw new JsonReadException("missing field \"upload_id\"", expectObjectStart);
                } else if (j != -1) {
                    return new DbxClientV1.a(str, j);
                } else {
                    throw new JsonReadException("missing field \"offset\"", expectObjectStart);
                }
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final String f17857a;

        /* renamed from: b  reason: collision with root package name */
        public final long f17858b;

        public a(String str, long j) {
            if (str == null) {
                throw new IllegalArgumentException("'uploadId' can't be null");
            } else if (str.length() == 0) {
                throw new IllegalArgumentException("'uploadId' can't be empty");
            } else if (j >= 0) {
                this.f17857a = str;
                this.f17858b = j;
            } else {
                throw new IllegalArgumentException("'offset' can't be negative");
            }
        }

        @Override // com.dropbox.core.util.c
        public final void a(com.dropbox.core.util.b bVar) {
            bVar.b("uploadId").d(this.f17857a);
            bVar.b(VastIconXmlManager.OFFSET).a(this.f17858b);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxClientV1$b.class */
    static final class b {

        /* renamed from: c  reason: collision with root package name */
        public static final JsonReader<b> f17859c = new JsonReader<b>() { // from class: com.dropbox.core.v1.DbxClientV1$CopyRef$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxClientV1.b read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
                String str = null;
                Date date = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    try {
                        if (currentName.equals("copy_ref")) {
                            str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                        } else if (currentName.equals("expires")) {
                            date = JsonDateReader.Dropbox.readField(jsonParser, currentName, date);
                        } else {
                            JsonReader.skipValue(jsonParser);
                        }
                    } catch (JsonReadException e) {
                        throw e.addFieldContext(currentName);
                    }
                }
                JsonReader.expectObjectEnd(jsonParser);
                if (str == null) {
                    throw new JsonReadException("missing field \"copy_ref\"", expectObjectStart);
                } else if (date != null) {
                    return new DbxClientV1.b(str, date, null);
                } else {
                    throw new JsonReadException("missing field \"expires\"", expectObjectStart);
                }
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final String f17860a;

        /* renamed from: b  reason: collision with root package name */
        public final Date f17861b;

        private b(String str, Date date) {
            this.f17860a = str;
            this.f17861b = date;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ b(String str, Date date, AnonymousClass1 r7) {
            this(str, date);
        }
    }

    public DbxClientV1(h hVar, String str) {
        this(hVar, str, e.f17752a);
    }

    public DbxClientV1(h hVar, String str, e eVar) {
        if (hVar == null) {
            throw new IllegalArgumentException("'requestConfig' is null");
        } else if (str == null) {
            throw new IllegalArgumentException("'accessToken' is null");
        } else if (eVar != null) {
            this.f17851b = hVar;
            this.f17852c = str;
            this.f17853d = eVar;
        } else {
            throw new IllegalArgumentException("'host' is null");
        }
    }
}
