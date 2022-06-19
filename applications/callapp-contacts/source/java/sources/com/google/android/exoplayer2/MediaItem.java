package com.google.android.exoplayer2;

import android.net.Uri;
import com.google.android.exoplayer2.C11340t;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/MediaItem.class */
public final class MediaItem {

    /* renamed from: a */
    public final String f34811a;

    /* renamed from: b */
    public final C10832c f34812b;

    /* renamed from: c */
    public final LiveConfiguration f34813c;

    /* renamed from: d */
    public final C11340t f34814d;

    /* renamed from: e */
    public final C10831b f34815e;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/MediaItem$AdsConfiguration.class */
    public static final class AdsConfiguration {
        public final Uri adTagUri;
        public final Object adsId;

        private AdsConfiguration(Uri uri, Object obj) {
            this.adTagUri = uri;
            this.adsId = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdsConfiguration)) {
                return false;
            }
            AdsConfiguration adsConfiguration = (AdsConfiguration) obj;
            return this.adTagUri.equals(adsConfiguration.adTagUri) && C11599af.m19973a(this.adsId, adsConfiguration.adsId);
        }

        public final int hashCode() {
            int hashCode = this.adTagUri.hashCode();
            Object obj = this.adsId;
            return (hashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/MediaItem$DrmConfiguration.class */
    public static final class DrmConfiguration {
        public final boolean forceDefaultLicenseUri;
        private final byte[] keySetId;
        public final Uri licenseUri;
        public final boolean multiSession;
        public final boolean playClearContentWithoutKey;
        public final Map<String, String> requestHeaders;
        public final List<Integer> sessionForClearTypes;
        public final UUID uuid;

        private DrmConfiguration(UUID uuid, Uri uri, Map<String, String> map, boolean z, boolean z2, boolean z3, List<Integer> list, byte[] bArr) {
            C11593a.m20022a(!z2 || uri != null);
            this.uuid = uuid;
            this.licenseUri = uri;
            this.requestHeaders = map;
            this.multiSession = z;
            this.forceDefaultLicenseUri = z2;
            this.playClearContentWithoutKey = z3;
            this.sessionForClearTypes = list;
            this.keySetId = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DrmConfiguration)) {
                return false;
            }
            DrmConfiguration drmConfiguration = (DrmConfiguration) obj;
            return this.uuid.equals(drmConfiguration.uuid) && C11599af.m19973a(this.licenseUri, drmConfiguration.licenseUri) && C11599af.m19973a(this.requestHeaders, drmConfiguration.requestHeaders) && this.multiSession == drmConfiguration.multiSession && this.forceDefaultLicenseUri == drmConfiguration.forceDefaultLicenseUri && this.playClearContentWithoutKey == drmConfiguration.playClearContentWithoutKey && this.sessionForClearTypes.equals(drmConfiguration.sessionForClearTypes) && Arrays.equals(this.keySetId, drmConfiguration.keySetId);
        }

        public final byte[] getKeySetId() {
            byte[] bArr = this.keySetId;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public final int hashCode() {
            int hashCode = this.uuid.hashCode();
            Uri uri = this.licenseUri;
            return (((((((((((((hashCode * 31) + (uri != null ? uri.hashCode() : 0)) * 31) + this.requestHeaders.hashCode()) * 31) + (this.multiSession ? 1 : 0)) * 31) + (this.forceDefaultLicenseUri ? 1 : 0)) * 31) + (this.playClearContentWithoutKey ? 1 : 0)) * 31) + this.sessionForClearTypes.hashCode()) * 31) + Arrays.hashCode(this.keySetId);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/MediaItem$LiveConfiguration.class */
    public static final class LiveConfiguration {
        public static final LiveConfiguration UNSET = new LiveConfiguration(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, -3.4028235E38f, -3.4028235E38f);
        public final long maxOffsetMs;
        public final float maxPlaybackSpeed;
        public final long minOffsetMs;
        public final float minPlaybackSpeed;
        public final long targetOffsetMs;

        public LiveConfiguration(long j, long j2, long j3, float f, float f2) {
            this.targetOffsetMs = j;
            this.minOffsetMs = j2;
            this.maxOffsetMs = j3;
            this.minPlaybackSpeed = f;
            this.maxPlaybackSpeed = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LiveConfiguration)) {
                return false;
            }
            LiveConfiguration liveConfiguration = (LiveConfiguration) obj;
            return this.targetOffsetMs == liveConfiguration.targetOffsetMs && this.minOffsetMs == liveConfiguration.minOffsetMs && this.maxOffsetMs == liveConfiguration.maxOffsetMs && this.minPlaybackSpeed == liveConfiguration.minPlaybackSpeed && this.maxPlaybackSpeed == liveConfiguration.maxPlaybackSpeed;
        }

        public final int hashCode() {
            long j = this.targetOffsetMs;
            int i = (int) (j ^ (j >>> 32));
            long j2 = this.minOffsetMs;
            int i2 = (int) (j2 ^ (j2 >>> 32));
            long j3 = this.maxOffsetMs;
            int i3 = (int) (j3 ^ (j3 >>> 32));
            float f = this.minPlaybackSpeed;
            int i4 = 0;
            int floatToIntBits = f != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f) : 0;
            float f2 = this.maxPlaybackSpeed;
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                i4 = Float.floatToIntBits(f2);
            }
            return (((((((i * 31) + i2) * 31) + i3) * 31) + floatToIntBits) * 31) + i4;
        }
    }

    /* renamed from: com.google.android.exoplayer2.MediaItem$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/MediaItem$a.class */
    public static final class C10830a {

        /* renamed from: A */
        private Object f34816A;

        /* renamed from: B */
        private C11340t f34817B;

        /* renamed from: a */
        public String f34818a;

        /* renamed from: b */
        public Uri f34819b;

        /* renamed from: c */
        public String f34820c;

        /* renamed from: d */
        public Uri f34821d;

        /* renamed from: e */
        public Map<String, String> f34822e;

        /* renamed from: f */
        public UUID f34823f;

        /* renamed from: g */
        public boolean f34824g;

        /* renamed from: h */
        public boolean f34825h;

        /* renamed from: i */
        public boolean f34826i;

        /* renamed from: j */
        public List<Integer> f34827j;

        /* renamed from: k */
        public List<StreamKey> f34828k;

        /* renamed from: l */
        public String f34829l;

        /* renamed from: m */
        public List<C10833d> f34830m;

        /* renamed from: n */
        public Object f34831n;

        /* renamed from: o */
        public long f34832o;

        /* renamed from: p */
        public long f34833p;

        /* renamed from: q */
        public long f34834q;

        /* renamed from: r */
        public float f34835r;

        /* renamed from: s */
        public float f34836s;

        /* renamed from: t */
        private long f34837t;

        /* renamed from: u */
        private long f34838u;

        /* renamed from: v */
        private boolean f34839v;

        /* renamed from: w */
        private boolean f34840w;

        /* renamed from: x */
        private boolean f34841x;

        /* renamed from: y */
        private byte[] f34842y;

        /* renamed from: z */
        private Uri f34843z;

        public C10830a() {
            this.f34838u = Long.MIN_VALUE;
            this.f34827j = Collections.emptyList();
            this.f34822e = Collections.emptyMap();
            this.f34828k = Collections.emptyList();
            this.f34830m = Collections.emptyList();
            this.f34832o = -9223372036854775807L;
            this.f34833p = -9223372036854775807L;
            this.f34834q = -9223372036854775807L;
            this.f34835r = -3.4028235E38f;
            this.f34836s = -3.4028235E38f;
        }

        private C10830a(MediaItem mediaItem) {
            this();
            this.f34838u = mediaItem.f34815e.f34845b;
            this.f34839v = mediaItem.f34815e.f34846c;
            this.f34840w = mediaItem.f34815e.f34847d;
            this.f34837t = mediaItem.f34815e.f34844a;
            this.f34841x = mediaItem.f34815e.f34848e;
            this.f34818a = mediaItem.f34811a;
            this.f34817B = mediaItem.f34814d;
            this.f34832o = mediaItem.f34813c.targetOffsetMs;
            this.f34833p = mediaItem.f34813c.minOffsetMs;
            this.f34834q = mediaItem.f34813c.maxOffsetMs;
            this.f34835r = mediaItem.f34813c.minPlaybackSpeed;
            this.f34836s = mediaItem.f34813c.maxPlaybackSpeed;
            C10832c c10832c = mediaItem.f34812b;
            if (c10832c != null) {
                this.f34829l = c10832c.f34854f;
                this.f34820c = c10832c.f34850b;
                this.f34819b = c10832c.f34849a;
                this.f34828k = c10832c.f34853e;
                this.f34830m = c10832c.f34855g;
                this.f34831n = c10832c.f34856h;
                DrmConfiguration drmConfiguration = c10832c.f34851c;
                if (drmConfiguration != null) {
                    this.f34821d = drmConfiguration.licenseUri;
                    this.f34822e = drmConfiguration.requestHeaders;
                    this.f34824g = drmConfiguration.multiSession;
                    this.f34826i = drmConfiguration.forceDefaultLicenseUri;
                    this.f34825h = drmConfiguration.playClearContentWithoutKey;
                    this.f34827j = drmConfiguration.sessionForClearTypes;
                    this.f34823f = drmConfiguration.uuid;
                    this.f34842y = drmConfiguration.getKeySetId();
                }
                AdsConfiguration adsConfiguration = c10832c.f34852d;
                if (adsConfiguration == null) {
                    return;
                }
                this.f34843z = adsConfiguration.adTagUri;
                this.f34816A = adsConfiguration.adsId;
            }
        }

        /* renamed from: a */
        public final C10830a m22317a(byte[] bArr) {
            this.f34842y = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
            return this;
        }

        /* renamed from: a */
        public final MediaItem m22318a() {
            C10832c c10832c;
            C11593a.m20019b(this.f34821d == null || this.f34823f != null);
            Uri uri = this.f34819b;
            if (uri != null) {
                String str = this.f34820c;
                UUID uuid = this.f34823f;
                DrmConfiguration drmConfiguration = uuid != null ? new DrmConfiguration(uuid, this.f34821d, this.f34822e, this.f34824g, this.f34826i, this.f34825h, this.f34827j, this.f34842y) : null;
                Uri uri2 = this.f34843z;
                C10832c c10832c2 = new C10832c(uri, str, drmConfiguration, uri2 != null ? new AdsConfiguration(uri2, this.f34816A) : null, this.f34828k, this.f34829l, this.f34830m, this.f34831n);
                String str2 = this.f34818a;
                if (str2 == null) {
                    str2 = uri.toString();
                }
                this.f34818a = str2;
                c10832c = c10832c2;
            } else {
                c10832c = null;
            }
            String str3 = (String) C11593a.m20020b(this.f34818a);
            C10831b c10831b = new C10831b(this.f34837t, this.f34838u, this.f34839v, this.f34840w, this.f34841x);
            LiveConfiguration liveConfiguration = new LiveConfiguration(this.f34832o, this.f34833p, this.f34834q, this.f34835r, this.f34836s);
            C11340t c11340t = this.f34817B;
            if (c11340t == null) {
                c11340t = new C11340t(new C11340t.C11342a().f37306a);
            }
            return new MediaItem(str3, c10831b, c10832c, liveConfiguration, c11340t);
        }
    }

    /* renamed from: com.google.android.exoplayer2.MediaItem$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/MediaItem$b.class */
    public static final class C10831b {

        /* renamed from: a */
        public final long f34844a;

        /* renamed from: b */
        public final long f34845b;

        /* renamed from: c */
        public final boolean f34846c;

        /* renamed from: d */
        public final boolean f34847d;

        /* renamed from: e */
        public final boolean f34848e;

        private C10831b(long j, long j2, boolean z, boolean z2, boolean z3) {
            this.f34844a = j;
            this.f34845b = j2;
            this.f34846c = z;
            this.f34847d = z2;
            this.f34848e = z3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C10831b)) {
                return false;
            }
            C10831b c10831b = (C10831b) obj;
            return this.f34844a == c10831b.f34844a && this.f34845b == c10831b.f34845b && this.f34846c == c10831b.f34846c && this.f34847d == c10831b.f34847d && this.f34848e == c10831b.f34848e;
        }

        public final int hashCode() {
            long j = this.f34844a;
            int i = (int) (j ^ (j >>> 32));
            long j2 = this.f34845b;
            return (((((((i * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.f34846c ? 1 : 0)) * 31) + (this.f34847d ? 1 : 0)) * 31) + (this.f34848e ? 1 : 0);
        }
    }

    /* renamed from: com.google.android.exoplayer2.MediaItem$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/MediaItem$c.class */
    public static final class C10832c {

        /* renamed from: a */
        public final Uri f34849a;

        /* renamed from: b */
        public final String f34850b;

        /* renamed from: c */
        public final DrmConfiguration f34851c;

        /* renamed from: d */
        public final AdsConfiguration f34852d;

        /* renamed from: e */
        public final List<StreamKey> f34853e;

        /* renamed from: f */
        public final String f34854f;

        /* renamed from: g */
        public final List<C10833d> f34855g;

        /* renamed from: h */
        public final Object f34856h;

        private C10832c(Uri uri, String str, DrmConfiguration drmConfiguration, AdsConfiguration adsConfiguration, List<StreamKey> list, String str2, List<C10833d> list2, Object obj) {
            this.f34849a = uri;
            this.f34850b = str;
            this.f34851c = drmConfiguration;
            this.f34852d = adsConfiguration;
            this.f34853e = list;
            this.f34854f = str2;
            this.f34855g = list2;
            this.f34856h = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C10832c)) {
                return false;
            }
            C10832c c10832c = (C10832c) obj;
            return this.f34849a.equals(c10832c.f34849a) && C11599af.m19973a((Object) this.f34850b, (Object) c10832c.f34850b) && C11599af.m19973a(this.f34851c, c10832c.f34851c) && C11599af.m19973a(this.f34852d, c10832c.f34852d) && this.f34853e.equals(c10832c.f34853e) && C11599af.m19973a((Object) this.f34854f, (Object) c10832c.f34854f) && this.f34855g.equals(c10832c.f34855g) && C11599af.m19973a(this.f34856h, c10832c.f34856h);
        }

        public final int hashCode() {
            int hashCode = this.f34849a.hashCode();
            String str = this.f34850b;
            int i = 0;
            int hashCode2 = str == null ? 0 : str.hashCode();
            DrmConfiguration drmConfiguration = this.f34851c;
            int hashCode3 = drmConfiguration == null ? 0 : drmConfiguration.hashCode();
            AdsConfiguration adsConfiguration = this.f34852d;
            int hashCode4 = adsConfiguration == null ? 0 : adsConfiguration.hashCode();
            int hashCode5 = this.f34853e.hashCode();
            String str2 = this.f34854f;
            int hashCode6 = str2 == null ? 0 : str2.hashCode();
            int hashCode7 = this.f34855g.hashCode();
            Object obj = this.f34856h;
            if (obj != null) {
                i = obj.hashCode();
            }
            return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.MediaItem$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/MediaItem$d.class */
    public static final class C10833d {

        /* renamed from: a */
        public final Uri f34857a;

        /* renamed from: b */
        public final String f34858b;

        /* renamed from: c */
        public final String f34859c;

        /* renamed from: d */
        public final int f34860d;

        /* renamed from: e */
        public final int f34861e;

        /* renamed from: f */
        public final String f34862f;

        public C10833d(Uri uri, String str, String str2) {
            this(uri, str, str2, 0);
        }

        public C10833d(Uri uri, String str, String str2, int i) {
            this(uri, str, str2, i, 0, null);
        }

        public C10833d(Uri uri, String str, String str2, int i, int i2, String str3) {
            this.f34857a = uri;
            this.f34858b = str;
            this.f34859c = str2;
            this.f34860d = i;
            this.f34861e = i2;
            this.f34862f = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C10833d)) {
                return false;
            }
            C10833d c10833d = (C10833d) obj;
            return this.f34857a.equals(c10833d.f34857a) && this.f34858b.equals(c10833d.f34858b) && C11599af.m19973a((Object) this.f34859c, (Object) c10833d.f34859c) && this.f34860d == c10833d.f34860d && this.f34861e == c10833d.f34861e && C11599af.m19973a((Object) this.f34862f, (Object) c10833d.f34862f);
        }

        public final int hashCode() {
            int hashCode = this.f34857a.hashCode();
            int hashCode2 = this.f34858b.hashCode();
            String str = this.f34859c;
            int i = 0;
            int hashCode3 = str == null ? 0 : str.hashCode();
            int i2 = this.f34860d;
            int i3 = this.f34861e;
            String str2 = this.f34862f;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + i3) * 31) + i;
        }
    }

    private MediaItem(String str, C10831b c10831b, C10832c c10832c, LiveConfiguration liveConfiguration, C11340t c11340t) {
        this.f34811a = str;
        this.f34812b = c10832c;
        this.f34813c = liveConfiguration;
        this.f34814d = c11340t;
        this.f34815e = c10831b;
    }

    /* renamed from: a */
    public final C10830a m22319a() {
        return new C10830a();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaItem)) {
            return false;
        }
        MediaItem mediaItem = (MediaItem) obj;
        return C11599af.m19973a((Object) this.f34811a, (Object) mediaItem.f34811a) && this.f34815e.equals(mediaItem.f34815e) && C11599af.m19973a(this.f34812b, mediaItem.f34812b) && C11599af.m19973a(this.f34813c, mediaItem.f34813c) && C11599af.m19973a(this.f34814d, mediaItem.f34814d);
    }

    public final int hashCode() {
        int hashCode = this.f34811a.hashCode();
        C10832c c10832c = this.f34812b;
        return (((((((hashCode * 31) + (c10832c != null ? c10832c.hashCode() : 0)) * 31) + this.f34813c.hashCode()) * 31) + this.f34815e.hashCode()) * 31) + this.f34814d.hashCode();
    }
}
