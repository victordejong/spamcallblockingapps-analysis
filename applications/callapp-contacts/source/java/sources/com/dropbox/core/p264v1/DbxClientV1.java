package com.dropbox.core.p264v1;

import com.dropbox.core.C8573e;
import com.dropbox.core.C8577h;
import com.dropbox.core.C8600i;
import com.dropbox.core.DbxException;
import com.dropbox.core.http.AbstractC8582a;
import com.dropbox.core.json.JsonDateReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.p264v1.DbxClientV1;
import com.dropbox.core.util.AbstractC8633b;
import com.dropbox.core.util.AbstractC8635c;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.IOException;
import java.util.Date;
/* renamed from: com.dropbox.core.v1.DbxClientV1 */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxClientV1.class */
public final class DbxClientV1 {

    /* renamed from: a */
    static final /* synthetic */ boolean f30650a = true;

    /* renamed from: e */
    private static JsonReader<String> f30651e = new JsonReader<String>() { // from class: com.dropbox.core.v1.DbxClientV1.11
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
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str != null) {
                return str;
            }
            throw new JsonReadException("missing field \"cursor\"", expectObjectStart);
        }
    };

    /* renamed from: b */
    private final C8577h f30652b;

    /* renamed from: c */
    private final String f30653c;

    /* renamed from: d */
    private final C8573e f30654d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v1.DbxClientV1$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxClientV1$1.class */
    public final class C86391 extends C8600i.AbstractC8603b<DbxEntry> {
        C86391() {
            DbxClientV1.this = r4;
        }

        @Override // com.dropbox.core.C8600i.AbstractC8603b
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ DbxEntry mo25211a(AbstractC8582a.C8584b c8584b) throws DbxException {
            if (c8584b.f30566a == 404) {
                return null;
            }
            if (c8584b.f30566a != 200) {
                throw C8600i.m25279a(c8584b);
            }
            return (DbxEntry) C8600i.m25276a(DbxEntry.f30678f, c8584b);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$IODbxException */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxClientV1$IODbxException.class */
    public static final class IODbxException extends IOException {

        /* renamed from: a */
        public final DbxException f30656a;

        public IODbxException(DbxException dbxException) {
            super(dbxException);
            this.f30656a = dbxException;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v1.DbxClientV1$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxClientV1$a.class */
    public static final class C8641a extends AbstractC8635c {

        /* renamed from: c */
        public static final JsonReader<C8641a> f30657c = new JsonReader<C8641a>() { // from class: com.dropbox.core.v1.DbxClientV1$ChunkedUploadState$1
            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v27, types: [long] */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxClientV1.C8641a read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
                String str = null;
                char c = 65535;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    try {
                        if (currentName.equals("upload_id")) {
                            str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                        } else if (currentName.equals(VastIconXmlManager.OFFSET)) {
                            c = JsonReader.readUnsignedLongField(jsonParser, currentName, c);
                        } else {
                            JsonReader.skipValue(jsonParser);
                        }
                    } catch (JsonReadException e) {
                        throw e.addFieldContext(currentName);
                    }
                }
                JsonReader.expectObjectEnd(jsonParser);
                if (str != null) {
                    if (c == -1) {
                        throw new JsonReadException("missing field \"offset\"", expectObjectStart);
                    }
                    return new DbxClientV1.C8641a(str, c);
                }
                throw new JsonReadException("missing field \"upload_id\"", expectObjectStart);
            }
        };

        /* renamed from: a */
        public final String f30658a;

        /* renamed from: b */
        public final long f30659b;

        public C8641a(String str, long j) {
            if (str != null) {
                if (str.length() == 0) {
                    throw new IllegalArgumentException("'uploadId' can't be empty");
                }
                if (j < 0) {
                    throw new IllegalArgumentException("'offset' can't be negative");
                }
                this.f30658a = str;
                this.f30659b = j;
                return;
            }
            throw new IllegalArgumentException("'uploadId' can't be null");
        }

        @Override // com.dropbox.core.util.AbstractC8635c
        /* renamed from: a */
        public final void mo25199a(AbstractC8633b abstractC8633b) {
            abstractC8633b.mo25228b("uploadId").m25233d(this.f30658a);
            abstractC8633b.mo25228b(VastIconXmlManager.OFFSET).m25238a(this.f30659b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v1.DbxClientV1$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxClientV1$b.class */
    public static final class C8642b {

        /* renamed from: c */
        public static final JsonReader<C8642b> f30660c = new JsonReader<C8642b>() { // from class: com.dropbox.core.v1.DbxClientV1$CopyRef$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxClientV1.C8642b read(JsonParser jsonParser) throws IOException, JsonReadException {
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
                if (str != null) {
                    if (date == null) {
                        throw new JsonReadException("missing field \"expires\"", expectObjectStart);
                    }
                    return new DbxClientV1.C8642b(str, date, null);
                }
                throw new JsonReadException("missing field \"copy_ref\"", expectObjectStart);
            }
        };

        /* renamed from: a */
        public final String f30661a;

        /* renamed from: b */
        public final Date f30662b;

        private C8642b(String str, Date date) {
            this.f30661a = str;
            this.f30662b = date;
        }

        public /* synthetic */ C8642b(String str, Date date, C86391 c86391) {
            this(str, date);
        }
    }

    public DbxClientV1(C8577h c8577h, String str) {
        this(c8577h, str, C8573e.f30530a);
    }

    public DbxClientV1(C8577h c8577h, String str, C8573e c8573e) {
        if (c8577h != null) {
            if (str == null) {
                throw new IllegalArgumentException("'accessToken' is null");
            }
            if (c8573e == null) {
                throw new IllegalArgumentException("'host' is null");
            }
            this.f30652b = c8577h;
            this.f30653c = str;
            this.f30654d = c8573e;
            return;
        }
        throw new IllegalArgumentException("'requestConfig' is null");
    }
}
