package com.truecaller.messaging.data.types;

import android.content.ContentValues;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.tenor.android.core.constant.ContentFormat;
import com.truecaller.log.AssertionUtil;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.f0.r;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/Entity.class */
public abstract class Entity implements Parcelable {

    /* renamed from: a */
    public final long f13306a;

    /* renamed from: b */
    public final String f13307b;

    /* renamed from: c */
    public final int f13308c;

    /* renamed from: h */
    public static final C4195a f13305h = new C4195a(null);

    /* renamed from: d */
    public static final String[] f13301d = {"text/x-vcard", "text/vcard", "text/directory", "text/directory; profile=vcard"};

    /* renamed from: e */
    public static final String[] f13302e = {ContentFormat.IMAGE_GIF, ContentFormat.IMAGE_JPEG, "image/jpg", ContentFormat.IMAGE_PNG};

    /* renamed from: f */
    public static final String[] f13303f = {"video/3gpp", ContentFormat.IMAGE_MP4};

    /* renamed from: g */
    public static final String[] f13304g = {"application/vnd.truecaller.linkpreview", "application/vnd.truecaller.linkpreview.media", "application/vnd.truecaller.linkpreview.playable"};

    /* renamed from: com.truecaller.messaging.data.types.Entity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/Entity$a.class */
    public static final class C4195a {
        public C4195a(f fVar) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r16v1 */
        /* JADX WARN: Type inference failed for: r16v2 */
        /* JADX WARN: Type inference failed for: r16v3 */
        /* JADX WARN: Type inference failed for: r25v1 */
        /* JADX WARN: Type inference failed for: r25v2 */
        /* JADX WARN: Type inference failed for: r25v3 */
        /* JADX WARN: Type inference failed for: r34v1 */
        /* JADX WARN: Type inference failed for: r34v2 */
        /* JADX WARN: Type inference failed for: r34v3 */
        /* JADX WARN: Type inference failed for: r36v1 */
        /* JADX WARN: Type inference failed for: r36v2 */
        /* JADX WARN: Type inference failed for: r36v3 */
        /* renamed from: a */
        public static Entity m35042a(C4195a c4195a, long j, String str, int i, String str2, boolean z, int i2, int i3, int i4, long j2, String str3, String str4, String str5, String str6, int i5, String str7, String str8, double d, double d2, int i6) {
            TextEntity textEntity;
            ?? r16 = j;
            if ((i6 & 1) != 0) {
                r16 = -1;
            }
            if ((i6 & 4) != 0) {
                i = 0;
            }
            if ((i6 & 16) != 0) {
                z = false;
            }
            if ((i6 & 32) != 0) {
                i2 = -1;
            }
            if ((i6 & 64) != 0) {
                i3 = -1;
            }
            if ((i6 & 128) != 0) {
                i4 = -1;
            }
            ?? r25 = j2;
            if ((i6 & 256) != 0) {
                r25 = -1;
            }
            if ((i6 & 512) != 0) {
                str3 = "";
            }
            if ((i6 & 1024) != 0) {
                str4 = "";
            }
            if ((i6 & 2048) != 0) {
                str5 = "";
            }
            if ((i6 & 4096) != 0) {
                str6 = "";
            }
            if ((i6 & 8192) != 0) {
                i5 = -1;
            }
            if ((i6 & 16384) != 0) {
                str7 = "";
            }
            if ((i6 & 32768) != 0) {
                str8 = null;
            }
            ?? r34 = d;
            if ((i6 & 65536) != 0) {
                r34 = 0;
            }
            ?? r36 = d2;
            if ((i6 & 131072) != 0) {
                r36 = 0;
            }
            l.e(str, "type");
            l.e(str2, "content");
            l.e(str3, "thumbnail");
            l.e(str4, "source");
            l.e(str5, "fileName");
            l.e(str6, "vCardName");
            l.e(str7, "description");
            if (c4195a.m35033j(str)) {
                textEntity = new TextEntity(r16, str, i, str2, z);
            } else if (c4195a.m35038e(str)) {
                Uri parse = Uri.parse(str3);
                l.d(parse, "Uri.parse(thumbnail)");
                textEntity = new GifEntity(r16, str, i, str2, i2, i3, false, r25, parse, str4);
            } else if (c4195a.m35037f(str)) {
                Uri parse2 = Uri.parse(str2);
                l.d(parse2, "Uri.parse(content)");
                Uri parse3 = Uri.parse(str3);
                l.d(parse3, "Uri.parse(thumbnail)");
                textEntity = new ImageEntity(r16, str, i, parse2, i2, i3, r25, false, parse3);
            } else if (c4195a.m35031l(str)) {
                Uri parse4 = Uri.parse(str2);
                l.d(parse4, "Uri.parse(content)");
                Uri parse5 = Uri.parse(str3);
                l.d(parse5, "Uri.parse(thumbnail)");
                textEntity = new VideoEntity(r16, str, i, parse4, false, r25, i2, i3, i4, parse5);
            } else if (c4195a.m35040c(str)) {
                Uri parse6 = Uri.parse(str2);
                l.d(parse6, "Uri.parse(content)");
                textEntity = new AudioEntity(r16, str, i, parse6, false, r25, i4);
            } else {
                l.e(str, "contentType");
                if (l.a(str, "history")) {
                    textEntity = new HistoryEntity();
                } else if (c4195a.m35039d(str)) {
                    Uri parse7 = Uri.parse(str2);
                    l.d(parse7, "Uri.parse(content)");
                    textEntity = new DocumentEntity(r16, str, i, parse7, false, r25, str5);
                } else if (c4195a.m35032k(str)) {
                    textEntity = new VCardEntity(r16, str, i, str2, false, r25, str6, i5, Uri.parse(str3));
                } else if (c4195a.m35036g(str)) {
                    textEntity = new LinkPreviewEntity(r16, str, i, i2, i3, r25, Uri.parse(str3), str5, str7, str4);
                } else if (c4195a.m35035h(str)) {
                    Uri parse8 = Uri.parse(str2);
                    l.d(parse8, "Uri.parse(content)");
                    textEntity = new LocationEntity(r16, str, i, parse8, r25, str8, r34, r36);
                } else {
                    Uri parse9 = Uri.parse(str2);
                    l.d(parse9, "Uri.parse(content)");
                    textEntity = new BinaryEntity(r16, str, i, parse9, r25, false, 0, 64);
                }
            }
            return textEntity;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r16v1 */
        /* JADX WARN: Type inference failed for: r16v2 */
        /* JADX WARN: Type inference failed for: r16v3 */
        /* JADX WARN: Type inference failed for: r24v1 */
        /* JADX WARN: Type inference failed for: r24v2 */
        /* JADX WARN: Type inference failed for: r24v3 */
        /* JADX WARN: Type inference failed for: r34v1 */
        /* JADX WARN: Type inference failed for: r34v2 */
        /* JADX WARN: Type inference failed for: r34v3 */
        /* JADX WARN: Type inference failed for: r36v1 */
        /* JADX WARN: Type inference failed for: r36v2 */
        /* JADX WARN: Type inference failed for: r36v3 */
        /* renamed from: b */
        public static BinaryEntity m35041b(C4195a c4195a, long j, String str, int i, Uri uri, int i2, int i3, int i4, long j2, boolean z, Uri uri2, String str2, String str3, String str4, int i5, String str5, String str6, double d, double d2, int i6) {
            GifEntity gifEntity;
            ?? r16 = j;
            if ((i6 & 1) != 0) {
                r16 = -1;
            }
            if ((i6 & 4) != 0) {
                i = 0;
            }
            if ((i6 & 16) != 0) {
                i2 = -1;
            }
            if ((i6 & 32) != 0) {
                i3 = -1;
            }
            if ((i6 & 64) != 0) {
                i4 = -1;
            }
            ?? r24 = j2;
            if ((i6 & 128) != 0) {
                r24 = -1;
            }
            if ((i6 & 256) != 0) {
                z = false;
            }
            if ((i6 & 512) != 0) {
                uri2 = Uri.EMPTY;
                l.d(uri2, "Uri.EMPTY");
            }
            if ((i6 & 1024) != 0) {
                str2 = "";
            }
            if ((i6 & 2048) != 0) {
                str3 = "";
            }
            if ((i6 & 4096) != 0) {
                str4 = "";
            }
            if ((i6 & 8192) != 0) {
                i5 = -1;
            }
            String str7 = (i6 & 16384) != 0 ? "" : null;
            if ((i6 & 32768) != 0) {
                str6 = null;
            }
            ?? r34 = d;
            if ((i6 & 65536) != 0) {
                r34 = 0;
            }
            ?? r36 = d2;
            if ((i6 & 131072) != 0) {
                r36 = 0;
            }
            Objects.requireNonNull(c4195a);
            l.e(str, "type");
            l.e(uri, "content");
            l.e(uri2, "thumbnail");
            l.e(str2, "source");
            l.e(str3, "fileName");
            l.e(str4, "vCardName");
            l.e(str7, "description");
            if (c4195a.m35033j(str)) {
                AssertionUtil.reportWeirdnessButNeverCrash("Creating a BinaryEntity with type text, should never happen");
            }
            if (c4195a.m35038e(str)) {
                String uri3 = uri.toString();
                l.d(uri3, "content.toString()");
                gifEntity = new GifEntity(r16, str, i, uri3, i2, i3, z, r24, uri2, str2);
            } else if (c4195a.m35037f(str)) {
                gifEntity = new ImageEntity(r16, str, i, uri, i2, i3, r24, z, uri2);
            } else if (c4195a.m35031l(str)) {
                gifEntity = new VideoEntity(r16, str, i, uri, z, r24, i2, i3, i4, uri2);
            } else if (c4195a.m35040c(str)) {
                gifEntity = new AudioEntity(r16, str, i, uri, false, r24, i4);
            } else if (c4195a.m35039d(str)) {
                gifEntity = new DocumentEntity(r16, str, i, uri, false, r24, str3);
            } else if (c4195a.m35032k(str)) {
                String uri4 = uri.toString();
                l.d(uri4, "content.toString()");
                gifEntity = new VCardEntity(r16, str, i, uri4, false, r24, str4, i5, uri2);
            } else {
                gifEntity = c4195a.m35036g(str) ? new LinkPreviewEntity(r16, str, i, i2, i3, r24, uri2, str3, str7, str2) : c4195a.m35035h(str) ? new LocationEntity(r16, str, i, uri, r24, str6, r34, r36) : new BinaryEntity(r16, str, i, uri, r24, z, 0, 64);
            }
            return gifEntity;
        }

        /* renamed from: c */
        public final boolean m35040c(String str) {
            l.e(str, "contentType");
            return r.w(str, "audio/", true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
            if (s1.f0.r.y(r6, "application/vnd.truecaller", false, 2) != false) goto L6;
         */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean m35039d(java.lang.String r6) {
            /*
                r5 = this;
                r0 = r6
                java.lang.String r1 = "contentType"
                s1.z.c.l.e(r0, r1)
                r0 = 1
                r7 = r0
                r0 = r6
                java.lang.String r1 = "application/"
                r2 = 1
                boolean r0 = s1.f0.r.w(r0, r1, r2)
                if (r0 == 0) goto L1f
                r0 = r7
                r8 = r0
                r0 = r6
                java.lang.String r1 = "application/vnd.truecaller"
                r2 = 0
                r3 = 2
                boolean r0 = s1.f0.r.y(r0, r1, r2, r3)
                if (r0 == 0) goto L2f
            L1f:
                r0 = r6
                java.lang.String r1 = "text/vnd.plain-file"
                boolean r0 = s1.z.c.l.a(r0, r1)
                if (r0 == 0) goto L2d
                r0 = r7
                r8 = r0
                goto L2f
            L2d:
                r0 = 0
                r8 = r0
            L2f:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.data.types.Entity.C4195a.m35039d(java.lang.String):boolean");
        }

        /* renamed from: e */
        public final boolean m35038e(String str) {
            l.e(str, "contentType");
            boolean z = true;
            if (!r.n("tenor/gif", str, true)) {
                z = r.n(ContentFormat.IMAGE_GIF, str, true);
            }
            return z;
        }

        /* renamed from: f */
        public final boolean m35037f(String str) {
            l.e(str, "contentType");
            return r.w(str, "image/", true);
        }

        /* renamed from: g */
        public final boolean m35036g(String str) {
            l.e(str, "contentType");
            for (String str2 : Entity.f13304g) {
                if (r.n(str, str2, true)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: h */
        public final boolean m35035h(String str) {
            l.e(str, "contentType");
            return r.n("application/vnd.truecaller.location", str, true);
        }

        /* renamed from: i */
        public final boolean m35034i(String str) {
            l.e(str, "contentType");
            return r.n("tenor/gif", str, true);
        }

        /* renamed from: j */
        public final boolean m35033j(String str) {
            l.e(str, "contentType");
            boolean z = true;
            if (!r.n("text/plain", str, true)) {
                z = r.n("text/html", str, true);
            }
            return z;
        }

        /* renamed from: k */
        public final boolean m35032k(String str) {
            l.e(str, "contentType");
            for (String str2 : Entity.f13301d) {
                if (r.n(str, str2, true)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: l */
        public final boolean m35031l(String str) {
            l.e(str, "contentType");
            return r.w(str, "video/", true);
        }
    }

    public Entity(long j, String str, int i) {
        l.e(str, "type");
        this.f13306a = j;
        this.f13307b = str;
        this.f13308c = i;
    }

    public Entity(Parcel parcel) {
        l.e(parcel, "source");
        this.f13306a = parcel.readLong();
        String readString = parcel.readString();
        this.f13307b = readString == null ? "" : readString;
        this.f13308c = parcel.readInt();
    }

    /* renamed from: a */
    public static final Entity m35050a(long j, String str, int i, String str2) {
        return C4195a.m35042a(f13305h, j, str, i, str2, false, 0, 0, 0, 0L, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 262128);
    }

    /* renamed from: b */
    public static final Entity m35049b(String str, String str2) {
        return C4195a.m35042a(f13305h, 0L, str, 0, str2, false, 0, 0, 0, 0L, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 262133);
    }

    /* renamed from: i */
    public static final boolean m35048i(String str) {
        l.e(str, "contentType");
        boolean z = true;
        if (!r.n("tenor/gif", str, true)) {
            z = r.n(ContentFormat.IMAGE_GIF, str, true);
        }
        return z;
    }

    /* renamed from: m */
    public static final boolean m35047m(String str) {
        l.e(str, "contentType");
        return r.w(str, "image/", true);
    }

    /* renamed from: p */
    public static final boolean m35046p(String str) {
        l.e(str, "contentType");
        return r.n("tenor/gif", str, true);
    }

    /* renamed from: s */
    public static final boolean m35045s(String str) {
        l.e(str, "contentType");
        boolean z = true;
        if (!r.n("text/plain", str, true)) {
            z = r.n("text/html", str, true);
        }
        return z;
    }

    /* renamed from: v */
    public static final boolean m35044v(String str) {
        boolean z;
        l.e(str, "contentType");
        String[] strArr = f13301d;
        int length = strArr.length;
        int i = 0;
        while (true) {
            z = false;
            if (i >= length) {
                break;
            } else if (r.n(str, strArr[i], true)) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: x */
    public static final boolean m35043x(String str) {
        l.e(str, "contentType");
        return r.w(str, "video/", true);
    }

    /* renamed from: c */
    public abstract void mo34994c(ContentValues contentValues);

    /* renamed from: d */
    public abstract int mo34993d();

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public abstract boolean mo34896e();

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
        if (r5.f13308c == r0.f13308c) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r6
            boolean r0 = r0 instanceof com.truecaller.messaging.data.types.Entity
            if (r0 == 0) goto L3f
            r0 = r5
            long r0 = r0.f13306a
            r8 = r0
            r0 = r6
            com.truecaller.messaging.data.types.Entity r0 = (com.truecaller.messaging.data.types.Entity) r0
            r6 = r0
            r0 = r8
            r1 = r6
            long r1 = r1.f13306a
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3f
            r0 = r5
            java.lang.String r0 = r0.f13307b
            r1 = r6
            java.lang.String r1 = r1.f13307b
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 == 0) goto L3f
            r0 = r5
            int r0 = r0.f13308c
            r1 = r6
            int r1 = r1.f13308c
            if (r0 != r1) goto L3f
            goto L41
        L3f:
            r0 = 0
            r7 = r0
        L41:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.data.types.Entity.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public abstract boolean mo35001f();

    /* renamed from: g */
    public abstract boolean mo35000g();

    /* renamed from: h */
    public abstract boolean mo34999h();

    public int hashCode() {
        return this.f13307b.hashCode() + (((int) this.f13306a) * 31) + this.f13308c;
    }

    /* renamed from: k */
    public abstract boolean mo34998k();

    /* renamed from: l */
    public abstract boolean mo34895l();

    /* renamed from: n */
    public abstract boolean mo34997n();

    /* renamed from: o */
    public abstract boolean mo34996o();

    /* renamed from: r */
    public abstract boolean mo34894r();

    /* renamed from: t */
    public abstract boolean mo34893t();

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("{ id : ");
        m8728C.append(this.f13306a);
        m8728C.append(", type: ");
        m8728C.append(this.f13307b);
        m8728C.append(", status : ");
        return C22128a.m8697J2(m8728C, this.f13308c, " }");
    }

    /* renamed from: w */
    public abstract boolean mo34892w();

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeLong(this.f13306a);
        parcel.writeString(this.f13307b);
        parcel.writeInt(this.f13308c);
    }
}
