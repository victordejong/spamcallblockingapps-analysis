package com.dropbox.core.v1;

import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonDateReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.a;
import com.dropbox.core.util.d;
import com.dropbox.core.v1.DbxEntry;
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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry.class */
public abstract class DbxEntry extends com.dropbox.core.util.c implements Serializable {
    public static final JsonReader<DbxEntry> e = new JsonReader<DbxEntry>() { // from class: com.dropbox.core.v1.DbxEntry.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final DbxEntry read(JsonParser jsonParser) throws IOException, JsonReadException {
            return DbxEntry.b(jsonParser, null).f17878a;
        }
    };
    public static final JsonReader<DbxEntry> f = new JsonReader<DbxEntry>() { // from class: com.dropbox.core.v1.DbxEntry.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final DbxEntry read(JsonParser jsonParser) throws IOException, JsonReadException {
            WithChildrenC a2 = DbxEntry.a(jsonParser, null);
            if (a2 == null) {
                return null;
            }
            return a2.f17878a;
        }
    };
    static final /* synthetic */ boolean g = true;
    private static final JsonReader.FieldMapping h;

    /* renamed from: a  reason: collision with root package name */
    public final String f17874a;

    /* renamed from: b  reason: collision with root package name */
    public final String f17875b;

    /* renamed from: c  reason: collision with root package name */
    public final String f17876c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f17877d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$PendingReader.class */
    public static final class PendingReader<T> extends JsonReader<T> {
        private final T pendingValue;
        private final JsonReader<T> reader;

        public PendingReader(JsonReader<T> jsonReader, T t) {
            this.reader = jsonReader;
            this.pendingValue = t;
        }

        public static <T> PendingReader<T> mk(JsonReader<T> jsonReader, T t) {
            return new PendingReader<>(jsonReader, t);
        }

        @Override // com.dropbox.core.json.JsonReader
        public final T read(JsonParser jsonParser) throws IOException, JsonReadException {
            if (jsonParser.getCurrentToken() != JsonToken.VALUE_STRING) {
                return this.reader.read(jsonParser);
            }
            if (jsonParser.getText().equals("pending")) {
                jsonParser.nextToken();
                return this.pendingValue;
            }
            throw new JsonReadException("got a string, but the value wasn't \"pending\"", jsonParser.getTokenLocation());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$WithChildrenC.class */
    public static final class WithChildrenC<C> extends com.dropbox.core.util.c implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        public final DbxEntry f17878a;

        /* renamed from: b  reason: collision with root package name */
        public final String f17879b;

        /* renamed from: c  reason: collision with root package name */
        public final C f17880c;

        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$WithChildrenC$Reader.class */
        public static class Reader<C> extends JsonReader<WithChildrenC<C>> {
            private final com.dropbox.core.util.a<DbxEntry, ? extends C> collector;

            public Reader(com.dropbox.core.util.a<DbxEntry, ? extends C> aVar) {
                this.collector = aVar;
            }

            @Override // com.dropbox.core.json.JsonReader
            public final WithChildrenC<C> read(JsonParser jsonParser) throws IOException, JsonReadException {
                return DbxEntry.b(jsonParser, this.collector);
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted.class */
        public static class ReaderMaybeDeleted<C> extends JsonReader<WithChildrenC<C>> {
            private final com.dropbox.core.util.a<DbxEntry, ? extends C> collector;

            public ReaderMaybeDeleted(com.dropbox.core.util.a<DbxEntry, ? extends C> aVar) {
                this.collector = aVar;
            }

            @Override // com.dropbox.core.json.JsonReader
            public final WithChildrenC<C> read(JsonParser jsonParser) throws IOException, JsonReadException {
                return DbxEntry.a(jsonParser, this.collector);
            }
        }

        public WithChildrenC(DbxEntry dbxEntry, String str, C c2) {
            this.f17878a = dbxEntry;
            this.f17879b = str;
            this.f17880c = c2;
        }

        @Override // com.dropbox.core.util.c
        public final void a(com.dropbox.core.util.b bVar) {
            bVar.a(this.f17878a);
            bVar.b("hash").d(this.f17879b);
            if (this.f17880c != null) {
                bVar.b(VerizonSSPWaterfallProvider.USER_DATA_CHILDREN_KEY).c(this.f17880c.toString());
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
                if (r0 == 0) goto L_0x0073
                r0 = r3
                java.lang.Class r0 = r0.getClass()
                r1 = r4
                java.lang.Class r1 = r1.getClass()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x0073
                r0 = r4
                com.dropbox.core.v1.DbxEntry$WithChildrenC r0 = (com.dropbox.core.v1.DbxEntry.WithChildrenC) r0
                r4 = r0
                r0 = r3
                C r0 = r0.f17880c
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x002e
                r0 = r5
                r1 = r4
                C r1 = r1.f17880c
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x003a
                goto L_0x0035
            L_0x002e:
                r0 = r4
                C r0 = r0.f17880c
                if (r0 == 0) goto L_0x003a
            L_0x0035:
                r0 = 0
                r6 = r0
                goto L_0x006d
            L_0x003a:
                r0 = r3
                com.dropbox.core.v1.DbxEntry r0 = r0.f17878a
                r1 = r4
                com.dropbox.core.v1.DbxEntry r1 = r1.f17878a
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x004b
                goto L_0x0035
            L_0x004b:
                r0 = r3
                java.lang.String r0 = r0.f17879b
                r5 = r0
                r0 = r4
                java.lang.String r0 = r0.f17879b
                r4 = r0
                r0 = r5
                if (r0 == 0) goto L_0x0064
                r0 = r5
                r1 = r4
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x006b
                goto L_0x0068
            L_0x0064:
                r0 = r4
                if (r0 == 0) goto L_0x006b
            L_0x0068:
                goto L_0x0035
            L_0x006b:
                r0 = 1
                r6 = r0
            L_0x006d:
                r0 = r6
                if (r0 == 0) goto L_0x0073
                r0 = 1
                return r0
            L_0x0073:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v1.DbxEntry.WithChildrenC.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            int hashCode = this.f17878a.hashCode();
            String str = this.f17879b;
            int i = 0;
            int hashCode2 = str != null ? str.hashCode() : 0;
            C c2 = this.f17880c;
            if (c2 != null) {
                i = c2.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$a.class */
    public static final class a extends DbxEntry {
        public static final JsonReader<a> o = new JsonReader<a>() { // from class: com.dropbox.core.v1.DbxEntry$File$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxEntry.a read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonLocation currentLocation = jsonParser.getCurrentLocation();
                DbxEntry dbxEntry = DbxEntry.b(jsonParser, null).f17878a;
                if (dbxEntry instanceof DbxEntry.a) {
                    return (DbxEntry.a) dbxEntry;
                }
                throw new JsonReadException("Expecting a file entry, got a folder entry", currentLocation);
            }
        };
        public static final JsonReader<a> p = new JsonReader<a>() { // from class: com.dropbox.core.v1.DbxEntry$File$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxEntry.a read(JsonParser jsonParser) throws IOException, JsonReadException {
                DbxEntry.WithChildrenC a2;
                JsonLocation currentLocation = jsonParser.getCurrentLocation();
                a2 = DbxEntry.a(jsonParser, null, true);
                if (a2 == null) {
                    return null;
                }
                DbxEntry dbxEntry = a2.f17878a;
                if (dbxEntry instanceof DbxEntry.a) {
                    return (DbxEntry.a) dbxEntry;
                }
                throw new JsonReadException("Expecting a file entry, got a folder entry", currentLocation);
            }
        };
        public final long h;
        public final String i;
        public final Date j;
        public final Date k;
        public final String l;
        public final b m;
        public final c n;

        /* renamed from: com.dropbox.core.v1.DbxEntry$a$a  reason: collision with other inner class name */
        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$a$a.class */
        public static final class C0358a extends com.dropbox.core.util.c {

            /* renamed from: c  reason: collision with root package name */
            public static JsonReader<C0358a> f17881c = new JsonReader<C0358a>() { // from class: com.dropbox.core.v1.DbxEntry$File$Location$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.dropbox.core.json.JsonReader
                public final DbxEntry.a.C0358a read(JsonParser jsonParser) throws IOException, JsonReadException {
                    DbxEntry.a.C0358a aVar;
                    if (JsonArrayReader.isArrayStart(jsonParser)) {
                        JsonReader.expectArrayStart(jsonParser);
                        aVar = new DbxEntry.a.C0358a(JsonReader.readDouble(jsonParser), JsonReader.readDouble(jsonParser));
                        JsonReader.expectArrayEnd(jsonParser);
                    } else {
                        JsonReader.skipValue(jsonParser);
                        aVar = null;
                    }
                    return aVar;
                }
            };

            /* renamed from: a  reason: collision with root package name */
            public final double f17882a;

            /* renamed from: b  reason: collision with root package name */
            public final double f17883b;

            public C0358a(double d2, double d3) {
                this.f17882a = d2;
                this.f17883b = d3;
            }

            @Override // com.dropbox.core.util.c
            public final void a(com.dropbox.core.util.b bVar) {
                bVar.b("latitude").a(this.f17882a);
                bVar.b("longitude").a(this.f17883b);
            }

            public final boolean equals(Object obj) {
                if (obj == null || !getClass().equals(obj.getClass())) {
                    return false;
                }
                C0358a aVar = (C0358a) obj;
                return (this.f17882a > aVar.f17882a ? 1 : (this.f17882a == aVar.f17882a ? 0 : -1)) == 0 && (this.f17883b > aVar.f17883b ? 1 : (this.f17883b == aVar.f17883b ? 0 : -1)) == 0;
            }

            public final int hashCode() {
                long doubleToLongBits = Double.doubleToLongBits(this.f17882a);
                long doubleToLongBits2 = Double.doubleToLongBits(this.f17883b);
                return ((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 527) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$a$b.class */
        public static final class b extends com.dropbox.core.util.c {

            /* renamed from: c  reason: collision with root package name */
            public static JsonReader<b> f17884c = new JsonReader<b>() { // from class: com.dropbox.core.v1.DbxEntry$File$PhotoInfo$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.dropbox.core.json.JsonReader
                public final DbxEntry.a.b read(JsonParser jsonParser) throws IOException, JsonReadException {
                    JsonReader.expectObjectStart(jsonParser);
                    Date date = null;
                    DbxEntry.a.C0358a aVar = null;
                    while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                        String currentName = jsonParser.getCurrentName();
                        JsonReader.nextToken(jsonParser);
                        if (currentName.equals("lat_long")) {
                            aVar = DbxEntry.a.C0358a.f17881c.read(jsonParser);
                        } else if (currentName.equals("time_taken")) {
                            date = JsonDateReader.Dropbox.readOptional(jsonParser);
                        } else {
                            JsonReader.skipValue(jsonParser);
                        }
                    }
                    JsonReader.expectObjectEnd(jsonParser);
                    return new DbxEntry.a.b(date, aVar);
                }
            };

            /* renamed from: d  reason: collision with root package name */
            public static final b f17885d = new b(null, null);

            /* renamed from: a  reason: collision with root package name */
            public final Date f17886a;

            /* renamed from: b  reason: collision with root package name */
            public final C0358a f17887b;

            public b(Date date, C0358a aVar) {
                this.f17886a = date;
                this.f17887b = aVar;
            }

            @Override // com.dropbox.core.util.c
            public final void a(com.dropbox.core.util.b bVar) {
                bVar.b("timeTaken").a(this.f17886a);
                bVar.b("location").a(this.f17887b);
            }

            public final boolean equals(Object obj) {
                if (obj == null || !getClass().equals(obj.getClass())) {
                    return false;
                }
                b bVar = (b) obj;
                b bVar2 = f17885d;
                return bVar == bVar2 || this == bVar2 ? bVar == this : d.a(this.f17886a, bVar.f17886a) && d.a(this.f17887b, bVar.f17887b);
            }

            public final int hashCode() {
                return ((d.a((Object) this.f17886a) + 0) * 31) + d.a(this.f17887b);
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$a$c.class */
        public static final class c extends com.dropbox.core.util.c {

            /* renamed from: d  reason: collision with root package name */
            public static JsonReader<c> f17888d = new JsonReader<c>() { // from class: com.dropbox.core.v1.DbxEntry$File$VideoInfo$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.dropbox.core.json.JsonReader
                public final DbxEntry.a.c read(JsonParser jsonParser) throws IOException, JsonReadException {
                    JsonReader.expectObjectStart(jsonParser);
                    Date date = null;
                    DbxEntry.a.C0358a aVar = null;
                    Long l = null;
                    while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                        String currentName = jsonParser.getCurrentName();
                        JsonReader.nextToken(jsonParser);
                        if (currentName.equals("lat_long")) {
                            aVar = DbxEntry.a.C0358a.f17881c.read(jsonParser);
                        } else if (currentName.equals("time_taken")) {
                            date = JsonDateReader.Dropbox.readOptional(jsonParser);
                        } else if (currentName.equals(VastIconXmlManager.DURATION)) {
                            l = JsonReader.UnsignedLongReader.readOptional(jsonParser);
                        } else {
                            JsonReader.skipValue(jsonParser);
                        }
                    }
                    JsonReader.expectObjectEnd(jsonParser);
                    return new DbxEntry.a.c(date, aVar, l);
                }
            };
            public static final c e = new c(null, null, null);

            /* renamed from: a  reason: collision with root package name */
            public final Date f17889a;

            /* renamed from: b  reason: collision with root package name */
            public final C0358a f17890b;

            /* renamed from: c  reason: collision with root package name */
            public final Long f17891c;

            public c(Date date, C0358a aVar, Long l) {
                this.f17889a = date;
                this.f17890b = aVar;
                this.f17891c = l;
            }

            @Override // com.dropbox.core.util.c
            public final void a(com.dropbox.core.util.b bVar) {
                bVar.b("timeTaken").a(this.f17889a);
                bVar.b("location").a(this.f17890b);
                com.dropbox.core.util.b b2 = bVar.b(VastIconXmlManager.DURATION);
                Long l = this.f17891c;
                b2.c(l == null ? JsonReaderKt.NULL : Long.toString(l.longValue()));
            }

            public final boolean equals(Object obj) {
                if (obj == null || !getClass().equals(obj.getClass())) {
                    return false;
                }
                c cVar = (c) obj;
                c cVar2 = e;
                return cVar == cVar2 || this == cVar2 ? cVar == this : d.a(this.f17889a, cVar.f17889a) && d.a(this.f17890b, cVar.f17890b) && d.a(this.f17891c, cVar.f17891c);
            }

            public final int hashCode() {
                return ((((d.a((Object) this.f17889a) + 0) * 31) + d.a(this.f17890b)) * 31) + d.a(this.f17891c);
            }
        }

        public a(String str, String str2, boolean z, long j, String str3, Date date, Date date2, String str4) {
            this(str, str2, z, j, str3, date, date2, str4, null, null);
        }

        public a(String str, String str2, boolean z, long j, String str3, Date date, Date date2, String str4, b bVar, c cVar) {
            super(str, str2, z);
            this.h = j;
            this.i = str3;
            this.j = date;
            this.k = date2;
            this.l = str4;
            this.m = bVar;
            this.n = cVar;
        }

        private static <T extends com.dropbox.core.util.c> void a(com.dropbox.core.util.b bVar, String str, T t, T t2) {
            if (t != null) {
                bVar.b(str);
                if (t == t2) {
                    bVar.c("pending");
                } else {
                    bVar.a(t);
                }
            }
        }

        @Override // com.dropbox.core.util.c
        public final String a() {
            return "File";
        }

        @Override // com.dropbox.core.v1.DbxEntry, com.dropbox.core.util.c
        public final void a(com.dropbox.core.util.b bVar) {
            DbxEntry.super.a(bVar);
            bVar.b("numBytes").a(this.h);
            bVar.b("humanSize").d(this.i);
            bVar.b("lastModified").a(this.j);
            bVar.b("clientMtime").a(this.k);
            bVar.b("rev").d(this.l);
            a(bVar, "photoInfo", this.m, b.f17885d);
            a(bVar, "videoInfo", this.n, c.e);
        }

        public final boolean equals(Object obj) {
            if (obj == null || !getClass().equals(obj.getClass())) {
                return false;
            }
            a aVar = (a) obj;
            return a(aVar) && (this.h > aVar.h ? 1 : (this.h == aVar.h ? 0 : -1)) == 0 && this.i.equals(aVar.i) && this.j.equals(aVar.j) && this.k.equals(aVar.k) && this.l.equals(aVar.l) && d.a(this.m, aVar.m) && d.a(this.n, aVar.n);
        }

        public final int hashCode() {
            return (((((((((((b() * 31) + ((int) this.h)) * 31) + this.j.hashCode()) * 31) + this.k.hashCode()) * 31) + this.l.hashCode()) * 31) + d.a(this.m)) * 31) + d.a(this.n);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$b.class */
    public static final class b extends DbxEntry {
        public static final JsonReader<b> h = new JsonReader<b>() { // from class: com.dropbox.core.v1.DbxEntry$Folder$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxEntry.b read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonLocation currentLocation = jsonParser.getCurrentLocation();
                DbxEntry dbxEntry = DbxEntry.b(jsonParser, null).f17878a;
                if (dbxEntry instanceof DbxEntry.b) {
                    return (DbxEntry.b) dbxEntry;
                }
                throw new JsonReadException("Expecting a file entry, got a folder entry", currentLocation);
            }
        };

        public b(String str, String str2, boolean z) {
            super(str, str2, z);
        }

        @Override // com.dropbox.core.util.c
        public final String a() {
            return "Folder";
        }

        public final boolean equals(Object obj) {
            return obj != null && getClass().equals(obj.getClass()) && a((b) obj);
        }

        public final int hashCode() {
            return b();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/DbxEntry$c.class */
    public static final class c extends com.dropbox.core.util.c implements Serializable {

        /* renamed from: d  reason: collision with root package name */
        public static final JsonReader<c> f17892d = new JsonReader<c>() { // from class: com.dropbox.core.v1.DbxEntry$WithChildren$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxEntry.c read(JsonParser jsonParser) throws IOException, JsonReadException {
                DbxEntry.WithChildrenC b2 = DbxEntry.b(jsonParser, new a.C0357a());
                return new DbxEntry.c(b2.f17878a, b2.f17879b, (List) b2.f17880c);
            }
        };
        public static final JsonReader<c> e = new JsonReader<c>() { // from class: com.dropbox.core.v1.DbxEntry$WithChildren$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxEntry.c read(JsonParser jsonParser) throws IOException, JsonReadException {
                DbxEntry.WithChildrenC a2 = DbxEntry.a(jsonParser, new a.C0357a());
                if (a2 == null) {
                    return null;
                }
                return new DbxEntry.c(a2.f17878a, a2.f17879b, (List) a2.f17880c);
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final DbxEntry f17893a;

        /* renamed from: b  reason: collision with root package name */
        public final String f17894b;

        /* renamed from: c  reason: collision with root package name */
        public final List<DbxEntry> f17895c;

        public c(DbxEntry dbxEntry, String str, List<DbxEntry> list) {
            this.f17893a = dbxEntry;
            this.f17894b = str;
            this.f17895c = list;
        }

        @Override // com.dropbox.core.util.c
        public final void a(com.dropbox.core.util.b bVar) {
            bVar.a(this.f17893a);
            bVar.b("hash").d(this.f17894b);
            bVar.b(VerizonSSPWaterfallProvider.USER_DATA_CHILDREN_KEY).a(this.f17895c);
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
                if (r0 == 0) goto L_0x0075
                r0 = r3
                java.lang.Class r0 = r0.getClass()
                r1 = r4
                java.lang.Class r1 = r1.getClass()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x0075
                r0 = r4
                com.dropbox.core.v1.DbxEntry$c r0 = (com.dropbox.core.v1.DbxEntry.c) r0
                r5 = r0
                r0 = r3
                java.util.List<com.dropbox.core.v1.DbxEntry> r0 = r0.f17895c
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L_0x0030
                r0 = r4
                r1 = r5
                java.util.List<com.dropbox.core.v1.DbxEntry> r1 = r1.f17895c
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x003c
                goto L_0x0037
            L_0x0030:
                r0 = r5
                java.util.List<com.dropbox.core.v1.DbxEntry> r0 = r0.f17895c
                if (r0 == 0) goto L_0x003c
            L_0x0037:
                r0 = 0
                r6 = r0
                goto L_0x006f
            L_0x003c:
                r0 = r3
                com.dropbox.core.v1.DbxEntry r0 = r0.f17893a
                r1 = r5
                com.dropbox.core.v1.DbxEntry r1 = r1.f17893a
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x004d
                goto L_0x0037
            L_0x004d:
                r0 = r3
                java.lang.String r0 = r0.f17894b
                r4 = r0
                r0 = r5
                java.lang.String r0 = r0.f17894b
                r5 = r0
                r0 = r4
                if (r0 == 0) goto L_0x0066
                r0 = r4
                r1 = r5
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x006d
                goto L_0x006a
            L_0x0066:
                r0 = r5
                if (r0 == 0) goto L_0x006d
            L_0x006a:
                goto L_0x0037
            L_0x006d:
                r0 = 1
                r6 = r0
            L_0x006f:
                r0 = r6
                if (r0 == 0) goto L_0x0075
                r0 = 1
                return r0
            L_0x0075:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v1.DbxEntry.c.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            int hashCode = this.f17893a.hashCode();
            String str = this.f17894b;
            int i = 0;
            int hashCode2 = str != null ? str.hashCode() : 0;
            List<DbxEntry> list = this.f17895c;
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
        h = builder.build();
    }

    private DbxEntry(String str, String str2, boolean z) {
        if (str == null) {
            throw new IllegalArgumentException("'path' can't be null");
        } else if (!str.startsWith("/")) {
            throw new IllegalArgumentException("Not a valid path.  Doesn't start with a \"/\": \"" + str + "\"");
        } else if (str.length() <= 1 || !str.endsWith("/")) {
            int length = str.length() - 1;
            while (str.charAt(length) != '/') {
                length--;
            }
            this.f17874a = str.substring(length + 1);
            this.f17875b = str;
            this.f17876c = str2;
            this.f17877d = z;
        } else {
            throw new IllegalArgumentException("Not a valid path.  Ends with a \"/\": \"" + str + "\"");
        }
    }

    public static <C> WithChildrenC<C> a(JsonParser jsonParser, com.dropbox.core.util.a<DbxEntry, ? extends C> aVar) throws IOException, JsonReadException {
        return a(jsonParser, aVar, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <C> WithChildrenC<C> a(JsonParser jsonParser, com.dropbox.core.util.a<DbxEntry, ? extends C> aVar, boolean z) throws IOException, JsonReadException {
        DbxEntry dbxEntry;
        com.dropbox.core.util.a<DbxEntry, ? extends C> aVar2 = aVar;
        JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
        String str = null;
        Boolean bool = null;
        Boolean bool2 = null;
        Boolean bool3 = null;
        a.c cVar = null;
        String str2 = null;
        String str3 = null;
        a.b bVar = null;
        Object obj = null;
        Date date = null;
        Date date2 = null;
        String str4 = null;
        String str5 = null;
        long j = -1;
        while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.getCurrentName();
            JsonReader.nextToken(jsonParser);
            int i = h.get(currentName);
            switch (i) {
                case -1:
                    JsonReader.skipValue(jsonParser);
                    aVar2 = aVar;
                    break;
                case 0:
                    str5 = JsonReader.StringReader.readField(jsonParser, currentName, str5);
                    aVar2 = aVar;
                    break;
                case 1:
                    j = JsonReader.readUnsignedLongField(jsonParser, currentName, j);
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
                    if (aVar2 != null) {
                        str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                        break;
                    } else {
                        throw new JsonReadException("not expecting \"hash\" field, since we didn't ask for children", jsonParser.getCurrentLocation());
                    }
                case 11:
                    if (aVar2 != null) {
                        obj = JsonArrayReader.mk(e, aVar2).readField(jsonParser, currentName, obj);
                        break;
                    } else {
                        throw new JsonReadException("not expecting \"contents\" field, since we didn't ask for children", jsonParser.getCurrentLocation());
                    }
                case 12:
                    bVar = (a.b) PendingReader.mk(a.b.f17884c, a.b.f17885d).readField(jsonParser, currentName, bVar);
                    break;
                case 13:
                    try {
                        cVar = (a.c) PendingReader.mk(a.c.f17888d, a.c.e).readField(jsonParser, currentName, cVar);
                        break;
                    } catch (JsonReadException e2) {
                        throw e2.addFieldContext(currentName);
                    }
                default:
                    throw new AssertionError("bad index: " + i + ", field = \"" + currentName + "\"");
            }
        }
        JsonReader.expectObjectEnd(jsonParser);
        if (str2 == null) {
            throw new JsonReadException("missing field \"path\"", expectObjectStart);
        } else if (str3 != null) {
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
            if (bool5.booleanValue() && !(obj == null && str == null)) {
                if (str == null) {
                    throw new JsonReadException("missing \"hash\", when we asked for children", expectObjectStart);
                } else if (obj == null) {
                    throw new JsonReadException("missing \"contents\", when we asked for children", expectObjectStart);
                }
            }
            if (bool5.booleanValue()) {
                dbxEntry = new b(str2, str3, bool6.booleanValue());
            } else if (str5 == null) {
                throw new JsonReadException("missing \"size\" for a file entry", expectObjectStart);
            } else if (j == -1) {
                throw new JsonReadException("missing \"bytes\" for a file entry", expectObjectStart);
            } else if (date == null) {
                throw new JsonReadException("missing \"modified\" for a file entry", expectObjectStart);
            } else if (date2 == null) {
                throw new JsonReadException("missing \"client_mtime\" for a file entry", expectObjectStart);
            } else if (str4 != null) {
                dbxEntry = new a(str2, str3, bool6.booleanValue(), j, str5, date, date2, str4, bVar, cVar);
            } else {
                throw new JsonReadException("missing \"rev\" for a file entry", expectObjectStart);
            }
            if (!bool4.booleanValue()) {
                return new WithChildrenC<>(dbxEntry, str, obj);
            }
            if (z) {
                return null;
            }
            throw new JsonReadException("not expecting \"is_deleted\" entry here", expectObjectStart);
        } else {
            throw new JsonReadException("missing field \"icon\"", expectObjectStart);
        }
    }

    public static <C> WithChildrenC<C> b(JsonParser jsonParser, com.dropbox.core.util.a<DbxEntry, ? extends C> aVar) throws IOException, JsonReadException {
        WithChildrenC<C> a2 = a(jsonParser, aVar, false);
        if (g || a2 != null) {
            return a2;
        }
        throw new AssertionError("@AssumeAssertion(nullness)");
    }

    @Override // com.dropbox.core.util.c
    public void a(com.dropbox.core.util.b bVar) {
        bVar.d(this.f17875b);
        bVar.b("iconName").d(this.f17876c);
        bVar.b("mightHaveThumbnail").a(this.f17877d);
    }

    protected final boolean a(DbxEntry dbxEntry) {
        return this.f17874a.equals(dbxEntry.f17874a) && this.f17875b.equals(dbxEntry.f17875b) && this.f17876c.equals(dbxEntry.f17876c) && this.f17877d == dbxEntry.f17877d;
    }

    protected final int b() {
        return (((((((this.f17874a.hashCode() * 31) + this.f17875b.hashCode()) * 31) + this.f17876c.hashCode()) * 31) + this.f17875b.hashCode()) * 31) + (this.f17877d ? 1 : 0);
    }
}
