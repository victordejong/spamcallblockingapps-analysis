package com.dropbox.core.p264v1;

import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonDateReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.p264v1.DbxEntry;
import com.dropbox.core.util.AbstractC8631a;
import com.dropbox.core.util.AbstractC8633b;
import com.dropbox.core.util.AbstractC8635c;
import com.dropbox.core.util.C8636d;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.mopub.mobileads.VastIconXmlManager;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.IOException;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
import net.pubnative.lite.sdk.models.APIAsset;
/* renamed from: com.dropbox.core.v1.DbxEntry */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry.class */
public abstract class DbxEntry extends AbstractC8635c implements Serializable {

    /* renamed from: e */
    public static final JsonReader<DbxEntry> f30677e = new JsonReader<DbxEntry>() { // from class: com.dropbox.core.v1.DbxEntry.1
        @Override // com.dropbox.core.json.JsonReader
        public final DbxEntry read(JsonParser jsonParser) throws IOException, JsonReadException {
            return DbxEntry.m25205b(jsonParser, null).f30685a;
        }
    };

    /* renamed from: f */
    public static final JsonReader<DbxEntry> f30678f = new JsonReader<DbxEntry>() { // from class: com.dropbox.core.v1.DbxEntry.2
        @Override // com.dropbox.core.json.JsonReader
        public final DbxEntry read(JsonParser jsonParser) throws IOException, JsonReadException {
            WithChildrenC m25208a = DbxEntry.m25208a(jsonParser, null);
            if (m25208a == null) {
                return null;
            }
            return m25208a.f30685a;
        }
    };

    /* renamed from: g */
    static final /* synthetic */ boolean f30679g = true;

    /* renamed from: h */
    private static final JsonReader.FieldMapping f30680h;

    /* renamed from: a */
    public final String f30681a;

    /* renamed from: b */
    public final String f30682b;

    /* renamed from: c */
    public final String f30683c;

    /* renamed from: d */
    public final boolean f30684d;

    /* renamed from: com.dropbox.core.v1.DbxEntry$PendingReader */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$PendingReader.class */
    public static final class PendingReader<T> extends JsonReader<T> {
        private final T pendingValue;
        private final JsonReader<T> reader;

        public PendingReader(JsonReader<T> jsonReader, T t) {
            this.reader = jsonReader;
            this.pendingValue = t;
        }

        /* renamed from: mk */
        public static <T> PendingReader<T> m25204mk(JsonReader<T> jsonReader, T t) {
            return new PendingReader<>(jsonReader, t);
        }

        @Override // com.dropbox.core.json.JsonReader
        public final T read(JsonParser jsonParser) throws IOException, JsonReadException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                if (!jsonParser.getText().equals("pending")) {
                    throw new JsonReadException("got a string, but the value wasn't \"pending\"", jsonParser.getTokenLocation());
                }
                jsonParser.nextToken();
                return this.pendingValue;
            }
            return this.reader.read(jsonParser);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxEntry$WithChildrenC */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$WithChildrenC.class */
    public static final class WithChildrenC<C> extends AbstractC8635c implements Serializable {

        /* renamed from: a */
        public final DbxEntry f30685a;

        /* renamed from: b */
        public final String f30686b;

        /* renamed from: c */
        public final C f30687c;

        /* renamed from: com.dropbox.core.v1.DbxEntry$WithChildrenC$Reader */
        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$WithChildrenC$Reader.class */
        public static class Reader<C> extends JsonReader<WithChildrenC<C>> {
            private final AbstractC8631a<DbxEntry, ? extends C> collector;

            public Reader(AbstractC8631a<DbxEntry, ? extends C> abstractC8631a) {
                this.collector = abstractC8631a;
            }

            @Override // com.dropbox.core.json.JsonReader
            public final WithChildrenC<C> read(JsonParser jsonParser) throws IOException, JsonReadException {
                return DbxEntry.m25205b(jsonParser, this.collector);
            }
        }

        /* renamed from: com.dropbox.core.v1.DbxEntry$WithChildrenC$ReaderMaybeDeleted */
        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted.class */
        public static class ReaderMaybeDeleted<C> extends JsonReader<WithChildrenC<C>> {
            private final AbstractC8631a<DbxEntry, ? extends C> collector;

            public ReaderMaybeDeleted(AbstractC8631a<DbxEntry, ? extends C> abstractC8631a) {
                this.collector = abstractC8631a;
            }

            @Override // com.dropbox.core.json.JsonReader
            public final WithChildrenC<C> read(JsonParser jsonParser) throws IOException, JsonReadException {
                return DbxEntry.m25208a(jsonParser, this.collector);
            }
        }

        public WithChildrenC(DbxEntry dbxEntry, String str, C c) {
            this.f30685a = dbxEntry;
            this.f30686b = str;
            this.f30687c = c;
        }

        @Override // com.dropbox.core.util.AbstractC8635c
        /* renamed from: a */
        public final void mo25199a(AbstractC8633b abstractC8633b) {
            abstractC8633b.m25237a(this.f30685a);
            abstractC8633b.mo25228b("hash").m25233d(this.f30686b);
            if (this.f30687c != null) {
                abstractC8633b.mo25228b(VerizonSSPWaterfallProvider.USER_DATA_CHILDREN_KEY).mo25226c(this.f30687c.toString());
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0071 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                if (r0 == 0) goto L73
                r0 = r3
                java.lang.Class r0 = r0.getClass()
                r1 = r4
                java.lang.Class r1 = r1.getClass()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L73
                r0 = r4
                com.dropbox.core.v1.DbxEntry$WithChildrenC r0 = (com.dropbox.core.p264v1.DbxEntry.WithChildrenC) r0
                r4 = r0
                r0 = r3
                C r0 = r0.f30687c
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L2e
                r0 = r5
                r1 = r4
                C r1 = r1.f30687c
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L3a
                goto L35
            L2e:
                r0 = r4
                C r0 = r0.f30687c
                if (r0 == 0) goto L3a
            L35:
                r0 = 0
                r6 = r0
                goto L6d
            L3a:
                r0 = r3
                com.dropbox.core.v1.DbxEntry r0 = r0.f30685a
                r1 = r4
                com.dropbox.core.v1.DbxEntry r1 = r1.f30685a
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L4b
                goto L35
            L4b:
                r0 = r3
                java.lang.String r0 = r0.f30686b
                r5 = r0
                r0 = r4
                java.lang.String r0 = r0.f30686b
                r4 = r0
                r0 = r5
                if (r0 == 0) goto L64
                r0 = r5
                r1 = r4
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L6b
                goto L68
            L64:
                r0 = r4
                if (r0 == 0) goto L6b
            L68:
                goto L35
            L6b:
                r0 = 1
                r6 = r0
            L6d:
                r0 = r6
                if (r0 == 0) goto L73
                r0 = 1
                return r0
            L73:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p264v1.DbxEntry.WithChildrenC.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            int hashCode = this.f30685a.hashCode();
            String str = this.f30686b;
            int i = 0;
            int hashCode2 = str != null ? str.hashCode() : 0;
            C c = this.f30687c;
            if (c != null) {
                i = c.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxEntry$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$a.class */
    public static final class C8645a extends DbxEntry {

        /* renamed from: o */
        public static final JsonReader<C8645a> f30688o = new JsonReader<C8645a>() { // from class: com.dropbox.core.v1.DbxEntry$File$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxEntry.C8645a read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonLocation currentLocation = jsonParser.getCurrentLocation();
                DbxEntry dbxEntry = DbxEntry.m25205b(jsonParser, null).f30685a;
                if (dbxEntry instanceof DbxEntry.C8645a) {
                    return (DbxEntry.C8645a) dbxEntry;
                }
                throw new JsonReadException("Expecting a file entry, got a folder entry", currentLocation);
            }
        };

        /* renamed from: p */
        public static final JsonReader<C8645a> f30689p = new JsonReader<C8645a>() { // from class: com.dropbox.core.v1.DbxEntry$File$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxEntry.C8645a read(JsonParser jsonParser) throws IOException, JsonReadException {
                DbxEntry.WithChildrenC m25207a;
                JsonLocation currentLocation = jsonParser.getCurrentLocation();
                m25207a = DbxEntry.m25207a(jsonParser, null, true);
                if (m25207a == null) {
                    return null;
                }
                DbxEntry dbxEntry = m25207a.f30685a;
                if (!(dbxEntry instanceof DbxEntry.C8645a)) {
                    throw new JsonReadException("Expecting a file entry, got a folder entry", currentLocation);
                }
                return (DbxEntry.C8645a) dbxEntry;
            }
        };

        /* renamed from: h */
        public final long f30690h;

        /* renamed from: i */
        public final String f30691i;

        /* renamed from: j */
        public final Date f30692j;

        /* renamed from: k */
        public final Date f30693k;

        /* renamed from: l */
        public final String f30694l;

        /* renamed from: m */
        public final C8647b f30695m;

        /* renamed from: n */
        public final C8648c f30696n;

        /* renamed from: com.dropbox.core.v1.DbxEntry$a$a */
        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$a$a.class */
        public static final class C8646a extends AbstractC8635c {

            /* renamed from: c */
            public static JsonReader<C8646a> f30697c = new JsonReader<C8646a>() { // from class: com.dropbox.core.v1.DbxEntry$File$Location$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.dropbox.core.json.JsonReader
                public final DbxEntry.C8645a.C8646a read(JsonParser jsonParser) throws IOException, JsonReadException {
                    DbxEntry.C8645a.C8646a c8646a;
                    if (JsonArrayReader.isArrayStart(jsonParser)) {
                        JsonReader.expectArrayStart(jsonParser);
                        DbxEntry.C8645a.C8646a c8646a2 = new DbxEntry.C8645a.C8646a(JsonReader.readDouble(jsonParser), JsonReader.readDouble(jsonParser));
                        JsonReader.expectArrayEnd(jsonParser);
                        c8646a = c8646a2;
                    } else {
                        JsonReader.skipValue(jsonParser);
                        c8646a = null;
                    }
                    return c8646a;
                }
            };

            /* renamed from: a */
            public final double f30698a;

            /* renamed from: b */
            public final double f30699b;

            public C8646a(double d, double d2) {
                this.f30698a = d;
                this.f30699b = d2;
            }

            @Override // com.dropbox.core.util.AbstractC8635c
            /* renamed from: a */
            public final void mo25199a(AbstractC8633b abstractC8633b) {
                abstractC8633b.mo25228b("latitude").m25239a(this.f30698a);
                abstractC8633b.mo25228b("longitude").m25239a(this.f30699b);
            }

            public final boolean equals(Object obj) {
                if (obj == null || !getClass().equals(obj.getClass())) {
                    return false;
                }
                C8646a c8646a = (C8646a) obj;
                return (this.f30698a > c8646a.f30698a ? 1 : (this.f30698a == c8646a.f30698a ? 0 : -1)) == 0 && (this.f30699b > c8646a.f30699b ? 1 : (this.f30699b == c8646a.f30699b ? 0 : -1)) == 0;
            }

            public final int hashCode() {
                long doubleToLongBits = Double.doubleToLongBits(this.f30698a);
                long doubleToLongBits2 = Double.doubleToLongBits(this.f30699b);
                return ((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 527) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
            }
        }

        /* renamed from: com.dropbox.core.v1.DbxEntry$a$b */
        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$a$b.class */
        public static final class C8647b extends AbstractC8635c {

            /* renamed from: c */
            public static JsonReader<C8647b> f30700c = new JsonReader<C8647b>() { // from class: com.dropbox.core.v1.DbxEntry$File$PhotoInfo$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.dropbox.core.json.JsonReader
                public final DbxEntry.C8645a.C8647b read(JsonParser jsonParser) throws IOException, JsonReadException {
                    JsonReader.expectObjectStart(jsonParser);
                    Date date = null;
                    DbxEntry.C8645a.C8646a c8646a = null;
                    while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                        String currentName = jsonParser.getCurrentName();
                        JsonReader.nextToken(jsonParser);
                        if (currentName.equals("lat_long")) {
                            c8646a = DbxEntry.C8645a.C8646a.f30697c.read(jsonParser);
                        } else if (currentName.equals("time_taken")) {
                            date = JsonDateReader.Dropbox.readOptional(jsonParser);
                        } else {
                            JsonReader.skipValue(jsonParser);
                        }
                    }
                    JsonReader.expectObjectEnd(jsonParser);
                    return new DbxEntry.C8645a.C8647b(date, c8646a);
                }
            };

            /* renamed from: d */
            public static final C8647b f30701d = new C8647b(null, null);

            /* renamed from: a */
            public final Date f30702a;

            /* renamed from: b */
            public final C8646a f30703b;

            public C8647b(Date date, C8646a c8646a) {
                this.f30702a = date;
                this.f30703b = c8646a;
            }

            @Override // com.dropbox.core.util.AbstractC8635c
            /* renamed from: a */
            public final void mo25199a(AbstractC8633b abstractC8633b) {
                abstractC8633b.mo25228b("timeTaken").m25235a(this.f30702a);
                abstractC8633b.mo25228b("location").m25237a(this.f30703b);
            }

            public final boolean equals(Object obj) {
                if (obj == null || !getClass().equals(obj.getClass())) {
                    return false;
                }
                C8647b c8647b = (C8647b) obj;
                C8647b c8647b2 = f30701d;
                return c8647b == c8647b2 || this == c8647b2 ? c8647b == this : C8636d.m25223a(this.f30702a, c8647b.f30702a) && C8636d.m25223a(this.f30703b, c8647b.f30703b);
            }

            public final int hashCode() {
                return ((C8636d.m25224a((Object) this.f30702a) + 0) * 31) + C8636d.m25224a(this.f30703b);
            }
        }

        /* renamed from: com.dropbox.core.v1.DbxEntry$a$c */
        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$a$c.class */
        public static final class C8648c extends AbstractC8635c {

            /* renamed from: d */
            public static JsonReader<C8648c> f30704d = new JsonReader<C8648c>() { // from class: com.dropbox.core.v1.DbxEntry$File$VideoInfo$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.dropbox.core.json.JsonReader
                public final DbxEntry.C8645a.C8648c read(JsonParser jsonParser) throws IOException, JsonReadException {
                    JsonReader.expectObjectStart(jsonParser);
                    Date date = null;
                    DbxEntry.C8645a.C8646a c8646a = null;
                    Long l = null;
                    while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                        String currentName = jsonParser.getCurrentName();
                        JsonReader.nextToken(jsonParser);
                        if (currentName.equals("lat_long")) {
                            c8646a = DbxEntry.C8645a.C8646a.f30697c.read(jsonParser);
                        } else if (currentName.equals("time_taken")) {
                            date = JsonDateReader.Dropbox.readOptional(jsonParser);
                        } else if (currentName.equals(VastIconXmlManager.DURATION)) {
                            l = JsonReader.UnsignedLongReader.readOptional(jsonParser);
                        } else {
                            JsonReader.skipValue(jsonParser);
                        }
                    }
                    JsonReader.expectObjectEnd(jsonParser);
                    return new DbxEntry.C8645a.C8648c(date, c8646a, l);
                }
            };

            /* renamed from: e */
            public static final C8648c f30705e = new C8648c(null, null, null);

            /* renamed from: a */
            public final Date f30706a;

            /* renamed from: b */
            public final C8646a f30707b;

            /* renamed from: c */
            public final Long f30708c;

            public C8648c(Date date, C8646a c8646a, Long l) {
                this.f30706a = date;
                this.f30707b = c8646a;
                this.f30708c = l;
            }

            @Override // com.dropbox.core.util.AbstractC8635c
            /* renamed from: a */
            public final void mo25199a(AbstractC8633b abstractC8633b) {
                abstractC8633b.mo25228b("timeTaken").m25235a(this.f30706a);
                abstractC8633b.mo25228b("location").m25237a(this.f30707b);
                AbstractC8633b mo25228b = abstractC8633b.mo25228b(VastIconXmlManager.DURATION);
                Long l = this.f30708c;
                mo25228b.mo25226c(l == null ? JsonReaderKt.NULL : Long.toString(l.longValue()));
            }

            public final boolean equals(Object obj) {
                if (obj == null || !getClass().equals(obj.getClass())) {
                    return false;
                }
                C8648c c8648c = (C8648c) obj;
                C8648c c8648c2 = f30705e;
                return c8648c == c8648c2 || this == c8648c2 ? c8648c == this : C8636d.m25223a(this.f30706a, c8648c.f30706a) && C8636d.m25223a(this.f30707b, c8648c.f30707b) && C8636d.m25223a(this.f30708c, c8648c.f30708c);
            }

            public final int hashCode() {
                return ((((C8636d.m25224a((Object) this.f30706a) + 0) * 31) + C8636d.m25224a(this.f30707b)) * 31) + C8636d.m25224a(this.f30708c);
            }
        }

        public C8645a(String str, String str2, boolean z, long j, String str3, Date date, Date date2, String str4) {
            this(str, str2, z, j, str3, date, date2, str4, null, null);
        }

        public C8645a(String str, String str2, boolean z, long j, String str3, Date date, Date date2, String str4, C8647b c8647b, C8648c c8648c) {
            super(str, str2, z);
            this.f30690h = j;
            this.f30691i = str3;
            this.f30692j = date;
            this.f30693k = date2;
            this.f30694l = str4;
            this.f30695m = c8647b;
            this.f30696n = c8648c;
        }

        /* renamed from: a */
        private static <T extends AbstractC8635c> void m25203a(AbstractC8633b abstractC8633b, String str, T t, T t2) {
            if (t == null) {
                return;
            }
            abstractC8633b.mo25228b(str);
            if (t == t2) {
                abstractC8633b.mo25226c("pending");
            } else {
                abstractC8633b.m25237a(t);
            }
        }

        @Override // com.dropbox.core.util.AbstractC8635c
        /* renamed from: a */
        public final String mo25202a() {
            return "File";
        }

        @Override // com.dropbox.core.p264v1.DbxEntry, com.dropbox.core.util.AbstractC8635c
        /* renamed from: a */
        public final void mo25199a(AbstractC8633b abstractC8633b) {
            DbxEntry.super.mo25199a(abstractC8633b);
            abstractC8633b.mo25228b("numBytes").m25238a(this.f30690h);
            abstractC8633b.mo25228b("humanSize").m25233d(this.f30691i);
            abstractC8633b.mo25228b("lastModified").m25235a(this.f30692j);
            abstractC8633b.mo25228b("clientMtime").m25235a(this.f30693k);
            abstractC8633b.mo25228b("rev").m25233d(this.f30694l);
            m25203a(abstractC8633b, "photoInfo", this.f30695m, C8647b.f30701d);
            m25203a(abstractC8633b, "videoInfo", this.f30696n, C8648c.f30705e);
        }

        public final boolean equals(Object obj) {
            if (obj == null || !getClass().equals(obj.getClass())) {
                return false;
            }
            C8645a c8645a = (C8645a) obj;
            return m25210a(c8645a) && (this.f30690h > c8645a.f30690h ? 1 : (this.f30690h == c8645a.f30690h ? 0 : -1)) == 0 && this.f30691i.equals(c8645a.f30691i) && this.f30692j.equals(c8645a.f30692j) && this.f30693k.equals(c8645a.f30693k) && this.f30694l.equals(c8645a.f30694l) && C8636d.m25223a(this.f30695m, c8645a.f30695m) && C8636d.m25223a(this.f30696n, c8645a.f30696n);
        }

        public final int hashCode() {
            return (((((((((((m25206b() * 31) + ((int) this.f30690h)) * 31) + this.f30692j.hashCode()) * 31) + this.f30693k.hashCode()) * 31) + this.f30694l.hashCode()) * 31) + C8636d.m25224a(this.f30695m)) * 31) + C8636d.m25224a(this.f30696n);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxEntry$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$b.class */
    public static final class C8649b extends DbxEntry {

        /* renamed from: h */
        public static final JsonReader<C8649b> f30709h = new JsonReader<C8649b>() { // from class: com.dropbox.core.v1.DbxEntry$Folder$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxEntry.C8649b read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonLocation currentLocation = jsonParser.getCurrentLocation();
                DbxEntry dbxEntry = DbxEntry.m25205b(jsonParser, null).f30685a;
                if (dbxEntry instanceof DbxEntry.C8649b) {
                    return (DbxEntry.C8649b) dbxEntry;
                }
                throw new JsonReadException("Expecting a file entry, got a folder entry", currentLocation);
            }
        };

        public C8649b(String str, String str2, boolean z) {
            super(str, str2, z);
        }

        @Override // com.dropbox.core.util.AbstractC8635c
        /* renamed from: a */
        public final String mo25202a() {
            return "Folder";
        }

        public final boolean equals(Object obj) {
            return obj != null && getClass().equals(obj.getClass()) && m25210a((C8649b) obj);
        }

        public final int hashCode() {
            return m25206b();
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxEntry$c */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$c.class */
    public static final class C8650c extends AbstractC8635c implements Serializable {

        /* renamed from: d */
        public static final JsonReader<C8650c> f30710d = new JsonReader<C8650c>() { // from class: com.dropbox.core.v1.DbxEntry$WithChildren$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxEntry.C8650c read(JsonParser jsonParser) throws IOException, JsonReadException {
                DbxEntry.WithChildrenC m25205b = DbxEntry.m25205b(jsonParser, new AbstractC8631a.C8632a());
                return new DbxEntry.C8650c(m25205b.f30685a, m25205b.f30686b, (List) m25205b.f30687c);
            }
        };

        /* renamed from: e */
        public static final JsonReader<C8650c> f30711e = new JsonReader<C8650c>() { // from class: com.dropbox.core.v1.DbxEntry$WithChildren$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxEntry.C8650c read(JsonParser jsonParser) throws IOException, JsonReadException {
                DbxEntry.WithChildrenC m25208a = DbxEntry.m25208a(jsonParser, new AbstractC8631a.C8632a());
                if (m25208a == null) {
                    return null;
                }
                return new DbxEntry.C8650c(m25208a.f30685a, m25208a.f30686b, (List) m25208a.f30687c);
            }
        };

        /* renamed from: a */
        public final DbxEntry f30712a;

        /* renamed from: b */
        public final String f30713b;

        /* renamed from: c */
        public final List<DbxEntry> f30714c;

        public C8650c(DbxEntry dbxEntry, String str, List<DbxEntry> list) {
            this.f30712a = dbxEntry;
            this.f30713b = str;
            this.f30714c = list;
        }

        @Override // com.dropbox.core.util.AbstractC8635c
        /* renamed from: a */
        public final void mo25199a(AbstractC8633b abstractC8633b) {
            abstractC8633b.m25237a(this.f30712a);
            abstractC8633b.mo25228b("hash").m25233d(this.f30713b);
            abstractC8633b.mo25228b(VerizonSSPWaterfallProvider.USER_DATA_CHILDREN_KEY).m25236a(this.f30714c);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0073 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                if (r0 == 0) goto L75
                r0 = r3
                java.lang.Class r0 = r0.getClass()
                r1 = r4
                java.lang.Class r1 = r1.getClass()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L75
                r0 = r4
                com.dropbox.core.v1.DbxEntry$c r0 = (com.dropbox.core.p264v1.DbxEntry.C8650c) r0
                r5 = r0
                r0 = r3
                java.util.List<com.dropbox.core.v1.DbxEntry> r0 = r0.f30714c
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L30
                r0 = r4
                r1 = r5
                java.util.List<com.dropbox.core.v1.DbxEntry> r1 = r1.f30714c
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L3c
                goto L37
            L30:
                r0 = r5
                java.util.List<com.dropbox.core.v1.DbxEntry> r0 = r0.f30714c
                if (r0 == 0) goto L3c
            L37:
                r0 = 0
                r6 = r0
                goto L6f
            L3c:
                r0 = r3
                com.dropbox.core.v1.DbxEntry r0 = r0.f30712a
                r1 = r5
                com.dropbox.core.v1.DbxEntry r1 = r1.f30712a
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L4d
                goto L37
            L4d:
                r0 = r3
                java.lang.String r0 = r0.f30713b
                r4 = r0
                r0 = r5
                java.lang.String r0 = r0.f30713b
                r5 = r0
                r0 = r4
                if (r0 == 0) goto L66
                r0 = r4
                r1 = r5
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L6d
                goto L6a
            L66:
                r0 = r5
                if (r0 == 0) goto L6d
            L6a:
                goto L37
            L6d:
                r0 = 1
                r6 = r0
            L6f:
                r0 = r6
                if (r0 == 0) goto L75
                r0 = 1
                return r0
            L75:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p264v1.DbxEntry.C8650c.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            int hashCode = this.f30712a.hashCode();
            String str = this.f30713b;
            int i = 0;
            int hashCode2 = str != null ? str.hashCode() : 0;
            List<DbxEntry> list = this.f30714c;
            if (list != null) {
                i = list.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }
    }

    static {
        JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
        builder.add("size", 0);
        builder.add("bytes", 1);
        builder.add("path", 2);
        builder.add("is_dir", 3);
        builder.add("is_deleted", 4);
        builder.add("rev", 5);
        builder.add("thumb_exists", 6);
        builder.add(APIAsset.ICON, 7);
        builder.add("modified", 8);
        builder.add("client_mtime", 9);
        builder.add("hash", 10);
        builder.add("contents", 11);
        builder.add("photo_info", 12);
        builder.add("video_info", 13);
        f30680h = builder.build();
    }

    private DbxEntry(String str, String str2, boolean z) {
        if (str != null) {
            if (!str.startsWith("/")) {
                throw new IllegalArgumentException("Not a valid path.  Doesn't start with a \"/\": \"" + str + "\"");
            } else if (str.length() > 1 && str.endsWith("/")) {
                throw new IllegalArgumentException("Not a valid path.  Ends with a \"/\": \"" + str + "\"");
            } else {
                int length = str.length() - 1;
                while (str.charAt(length) != '/') {
                    length--;
                }
                this.f30681a = str.substring(length + 1);
                this.f30682b = str;
                this.f30683c = str2;
                this.f30684d = z;
                return;
            }
        }
        throw new IllegalArgumentException("'path' can't be null");
    }

    /* renamed from: a */
    public static <C> WithChildrenC<C> m25208a(JsonParser jsonParser, AbstractC8631a<DbxEntry, ? extends C> abstractC8631a) throws IOException, JsonReadException {
        return m25207a(jsonParser, abstractC8631a, true);
    }

    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* renamed from: a */
    public static <C> WithChildrenC<C> m25207a(JsonParser jsonParser, AbstractC8631a<DbxEntry, ? extends C> abstractC8631a, boolean z) throws IOException, JsonReadException {
        C8649b c8649b;
        AbstractC8631a<DbxEntry, ? extends C> abstractC8631a2 = abstractC8631a;
        JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
        String str = null;
        Boolean bool = null;
        Boolean bool2 = null;
        Boolean bool3 = null;
        C8645a.C8648c c8648c = null;
        String str2 = null;
        String str3 = null;
        C8645a.C8647b c8647b = null;
        Object obj = null;
        Date date = null;
        Date date2 = null;
        String str4 = null;
        String str5 = null;
        char c = 65535;
        while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.getCurrentName();
            JsonReader.nextToken(jsonParser);
            int i = f30680h.get(currentName);
            switch (i) {
                case -1:
                    JsonReader.skipValue(jsonParser);
                    abstractC8631a2 = abstractC8631a;
                    break;
                case 0:
                    str5 = JsonReader.StringReader.readField(jsonParser, currentName, str5);
                    abstractC8631a2 = abstractC8631a;
                    break;
                case 1:
                    c = JsonReader.readUnsignedLongField(jsonParser, currentName, c);
                    break;
                case 2:
                    str2 = JsonReader.StringReader.readField(jsonParser, currentName, str2);
                    break;
                case 3:
                    bool = JsonReader.BooleanReader.readField(jsonParser, currentName, bool);
                    break;
                case 4:
                    bool3 = JsonReader.BooleanReader.readField(jsonParser, currentName, bool3);
                    break;
                case 5:
                    str4 = JsonReader.StringReader.readField(jsonParser, currentName, str4);
                    break;
                case 6:
                    bool2 = JsonReader.BooleanReader.readField(jsonParser, currentName, bool2);
                    break;
                case 7:
                    str3 = JsonReader.StringReader.readField(jsonParser, currentName, str3);
                    break;
                case 8:
                    date = JsonDateReader.Dropbox.readField(jsonParser, currentName, date);
                    break;
                case 9:
                    date2 = JsonDateReader.Dropbox.readField(jsonParser, currentName, date2);
                    break;
                case 10:
                    if (abstractC8631a2 == null) {
                        throw new JsonReadException("not expecting \"hash\" field, since we didn't ask for children", jsonParser.getCurrentLocation());
                    }
                    str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                    break;
                case 11:
                    if (abstractC8631a2 == null) {
                        throw new JsonReadException("not expecting \"contents\" field, since we didn't ask for children", jsonParser.getCurrentLocation());
                    }
                    obj = JsonArrayReader.m25256mk(f30677e, abstractC8631a2).readField(jsonParser, currentName, obj);
                    break;
                case 12:
                    c8647b = (C8645a.C8647b) PendingReader.m25204mk(C8645a.C8647b.f30700c, C8645a.C8647b.f30701d).readField(jsonParser, currentName, c8647b);
                    break;
                case 13:
                    try {
                        c8648c = (C8645a.C8648c) PendingReader.m25204mk(C8645a.C8648c.f30704d, C8645a.C8648c.f30705e).readField(jsonParser, currentName, c8648c);
                        break;
                    } catch (JsonReadException e) {
                        throw e.addFieldContext(currentName);
                    }
                default:
                    throw new AssertionError("bad index: " + i + ", field = \"" + currentName + "\"");
            }
        }
        JsonReader.expectObjectEnd(jsonParser);
        if (str2 != null) {
            if (str3 == null) {
                throw new JsonReadException("missing field \"icon\"", expectObjectStart);
            }
            Boolean bool4 = bool3;
            if (bool3 == null) {
                bool4 = Boolean.FALSE;
            }
            Boolean bool5 = bool;
            if (bool == null) {
                bool5 = Boolean.FALSE;
            }
            Boolean bool6 = bool2;
            if (bool2 == null) {
                bool6 = Boolean.FALSE;
            }
            if (bool5.booleanValue() && (obj != null || str != null)) {
                if (str == null) {
                    throw new JsonReadException("missing \"hash\", when we asked for children", expectObjectStart);
                }
                if (obj == null) {
                    throw new JsonReadException("missing \"contents\", when we asked for children", expectObjectStart);
                }
            }
            if (bool5.booleanValue()) {
                c8649b = new C8649b(str2, str3, bool6.booleanValue());
            } else if (str5 == null) {
                throw new JsonReadException("missing \"size\" for a file entry", expectObjectStart);
            } else {
                if (c == -1) {
                    throw new JsonReadException("missing \"bytes\" for a file entry", expectObjectStart);
                }
                if (date == null) {
                    throw new JsonReadException("missing \"modified\" for a file entry", expectObjectStart);
                }
                if (date2 == null) {
                    throw new JsonReadException("missing \"client_mtime\" for a file entry", expectObjectStart);
                }
                if (str4 == null) {
                    throw new JsonReadException("missing \"rev\" for a file entry", expectObjectStart);
                }
                c8649b = new C8645a(str2, str3, bool6.booleanValue(), c, str5, date, date2, str4, c8647b, c8648c);
            }
            if (!bool4.booleanValue()) {
                return new WithChildrenC<>(c8649b, str, obj);
            }
            if (!z) {
                throw new JsonReadException("not expecting \"is_deleted\" entry here", expectObjectStart);
            }
            return null;
        }
        throw new JsonReadException("missing field \"path\"", expectObjectStart);
    }

    /* renamed from: b */
    public static <C> WithChildrenC<C> m25205b(JsonParser jsonParser, AbstractC8631a<DbxEntry, ? extends C> abstractC8631a) throws IOException, JsonReadException {
        WithChildrenC<C> m25207a = m25207a(jsonParser, abstractC8631a, false);
        if (f30679g || m25207a != null) {
            return m25207a;
        }
        throw new AssertionError("@AssumeAssertion(nullness)");
    }

    @Override // com.dropbox.core.util.AbstractC8635c
    /* renamed from: a */
    public void mo25199a(AbstractC8633b abstractC8633b) {
        abstractC8633b.m25233d(this.f30682b);
        abstractC8633b.mo25228b("iconName").m25233d(this.f30683c);
        abstractC8633b.mo25228b("mightHaveThumbnail").m25234a(this.f30684d);
    }

    /* renamed from: a */
    protected final boolean m25210a(DbxEntry dbxEntry) {
        return this.f30681a.equals(dbxEntry.f30681a) && this.f30682b.equals(dbxEntry.f30682b) && this.f30683c.equals(dbxEntry.f30683c) && this.f30684d == dbxEntry.f30684d;
    }

    /* renamed from: b */
    protected final int m25206b() {
        return (((((((this.f30681a.hashCode() * 31) + this.f30682b.hashCode()) * 31) + this.f30683c.hashCode()) * 31) + this.f30682b.hashCode()) * 31) + (this.f30684d ? 1 : 0);
    }
}
