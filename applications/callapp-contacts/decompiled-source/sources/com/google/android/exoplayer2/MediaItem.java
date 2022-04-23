package com.google.android.exoplayer2;

import android.net.Uri;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.t;
import com.google.android.exoplayer2.util.af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/MediaItem.class */
public final class MediaItem {

    /* renamed from: a  reason: collision with root package name */
    public final String f20610a;

    /* renamed from: b  reason: collision with root package name */
    public final c f20611b;

    /* renamed from: c  reason: collision with root package name */
    public final LiveConfiguration f20612c;

    /* renamed from: d  reason: collision with root package name */
    public final t f20613d;
    public final b e;

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
            return this.adTagUri.equals(adsConfiguration.adTagUri) && af.a(this.adsId, adsConfiguration.adsId);
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
            com.google.android.exoplayer2.util.a.a(!z2 || uri != null);
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
            return this.uuid.equals(drmConfiguration.uuid) && af.a(this.licenseUri, drmConfiguration.licenseUri) && af.a(this.requestHeaders, drmConfiguration.requestHeaders) && this.multiSession == drmConfiguration.multiSession && this.forceDefaultLicenseUri == drmConfiguration.forceDefaultLicenseUri && this.playClearContentWithoutKey == drmConfiguration.playClearContentWithoutKey && this.sessionForClearTypes.equals(drmConfiguration.sessionForClearTypes) && Arrays.equals(this.keySetId, drmConfiguration.keySetId);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/MediaItem$a.class */
    public static final class a {
        private Object A;
        private t B;

        /* renamed from: a  reason: collision with root package name */
        public String f20614a;

        /* renamed from: b  reason: collision with root package name */
        public Uri f20615b;

        /* renamed from: c  reason: collision with root package name */
        public String f20616c;

        /* renamed from: d  reason: collision with root package name */
        public Uri f20617d;
        public Map<String, String> e;
        public UUID f;
        public boolean g;
        public boolean h;
        public boolean i;
        public List<Integer> j;
        public List<StreamKey> k;
        public String l;
        public List<d> m;
        public Object n;
        public long o;
        public long p;
        public long q;
        public float r;
        public float s;
        private long t;
        private long u;
        private boolean v;
        private boolean w;
        private boolean x;
        private byte[] y;
        private Uri z;

        public a() {
            this.u = Long.MIN_VALUE;
            this.j = Collections.emptyList();
            this.e = Collections.emptyMap();
            this.k = Collections.emptyList();
            this.m = Collections.emptyList();
            this.o = -9223372036854775807L;
            this.p = -9223372036854775807L;
            this.q = -9223372036854775807L;
            this.r = -3.4028235E38f;
            this.s = -3.4028235E38f;
        }

        private a(MediaItem mediaItem) {
            this();
            this.u = mediaItem.e.f20619b;
            this.v = mediaItem.e.f20620c;
            this.w = mediaItem.e.f20621d;
            this.t = mediaItem.e.f20618a;
            this.x = mediaItem.e.e;
            this.f20614a = mediaItem.f20610a;
            this.B = mediaItem.f20613d;
            this.o = mediaItem.f20612c.targetOffsetMs;
            this.p = mediaItem.f20612c.minOffsetMs;
            this.q = mediaItem.f20612c.maxOffsetMs;
            this.r = mediaItem.f20612c.minPlaybackSpeed;
            this.s = mediaItem.f20612c.maxPlaybackSpeed;
            c cVar = mediaItem.f20611b;
            if (cVar != null) {
                this.l = cVar.f;
                this.f20616c = cVar.f20623b;
                this.f20615b = cVar.f20622a;
                this.k = cVar.e;
                this.m = cVar.g;
                this.n = cVar.h;
                DrmConfiguration drmConfiguration = cVar.f20624c;
                if (drmConfiguration != null) {
                    this.f20617d = drmConfiguration.licenseUri;
                    this.e = drmConfiguration.requestHeaders;
                    this.g = drmConfiguration.multiSession;
                    this.i = drmConfiguration.forceDefaultLicenseUri;
                    this.h = drmConfiguration.playClearContentWithoutKey;
                    this.j = drmConfiguration.sessionForClearTypes;
                    this.f = drmConfiguration.uuid;
                    this.y = drmConfiguration.getKeySetId();
                }
                AdsConfiguration adsConfiguration = cVar.f20625d;
                if (adsConfiguration != null) {
                    this.z = adsConfiguration.adTagUri;
                    this.A = adsConfiguration.adsId;
                }
            }
        }

        public final a a(byte[] bArr) {
            this.y = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
            return this;
        }

        public final MediaItem a() {
            c cVar;
            com.google.android.exoplayer2.util.a.b(this.f20617d == null || this.f != null);
            Uri uri = this.f20615b;
            if (uri != null) {
                String str = this.f20616c;
                UUID uuid = this.f;
                DrmConfiguration drmConfiguration = uuid != null ? new DrmConfiguration(uuid, this.f20617d, this.e, this.g, this.i, this.h, this.j, this.y) : null;
                Uri uri2 = this.z;
                cVar = new c(uri, str, drmConfiguration, uri2 != null ? new AdsConfiguration(uri2, this.A) : null, this.k, this.l, this.m, this.n);
                String str2 = this.f20614a;
                if (str2 == null) {
                    str2 = uri.toString();
                }
                this.f20614a = str2;
            } else {
                cVar = null;
            }
            String str3 = (String) com.google.android.exoplayer2.util.a.b(this.f20614a);
            b bVar = new b(this.t, this.u, this.v, this.w, this.x);
            LiveConfiguration liveConfiguration = new LiveConfiguration(this.o, this.p, this.q, this.r, this.s);
            t tVar = this.B;
            if (tVar == null) {
                tVar = new t(new t.a().f21696a);
            }
            return new MediaItem(str3, bVar, cVar, liveConfiguration, tVar);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/MediaItem$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final long f20618a;

        /* renamed from: b  reason: collision with root package name */
        public final long f20619b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f20620c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f20621d;
        public final boolean e;

        private b(long j, long j2, boolean z, boolean z2, boolean z3) {
            this.f20618a = j;
            this.f20619b = j2;
            this.f20620c = z;
            this.f20621d = z2;
            this.e = z3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f20618a == bVar.f20618a && this.f20619b == bVar.f20619b && this.f20620c == bVar.f20620c && this.f20621d == bVar.f20621d && this.e == bVar.e;
        }

        public final int hashCode() {
            long j = this.f20618a;
            int i = (int) (j ^ (j >>> 32));
            long j2 = this.f20619b;
            return (((((((i * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.f20620c ? 1 : 0)) * 31) + (this.f20621d ? 1 : 0)) * 31) + (this.e ? 1 : 0);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/MediaItem$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f20622a;

        /* renamed from: b  reason: collision with root package name */
        public final String f20623b;

        /* renamed from: c  reason: collision with root package name */
        public final DrmConfiguration f20624c;

        /* renamed from: d  reason: collision with root package name */
        public final AdsConfiguration f20625d;
        public final List<StreamKey> e;
        public final String f;
        public final List<d> g;
        public final Object h;

        private c(Uri uri, String str, DrmConfiguration drmConfiguration, AdsConfiguration adsConfiguration, List<StreamKey> list, String str2, List<d> list2, Object obj) {
            this.f20622a = uri;
            this.f20623b = str;
            this.f20624c = drmConfiguration;
            this.f20625d = adsConfiguration;
            this.e = list;
            this.f = str2;
            this.g = list2;
            this.h = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f20622a.equals(cVar.f20622a) && af.a((Object) this.f20623b, (Object) cVar.f20623b) && af.a(this.f20624c, cVar.f20624c) && af.a(this.f20625d, cVar.f20625d) && this.e.equals(cVar.e) && af.a((Object) this.f, (Object) cVar.f) && this.g.equals(cVar.g) && af.a(this.h, cVar.h);
        }

        public final int hashCode() {
            int hashCode = this.f20622a.hashCode();
            String str = this.f20623b;
            int i = 0;
            int hashCode2 = str == null ? 0 : str.hashCode();
            DrmConfiguration drmConfiguration = this.f20624c;
            int hashCode3 = drmConfiguration == null ? 0 : drmConfiguration.hashCode();
            AdsConfiguration adsConfiguration = this.f20625d;
            int hashCode4 = adsConfiguration == null ? 0 : adsConfiguration.hashCode();
            int hashCode5 = this.e.hashCode();
            String str2 = this.f;
            int hashCode6 = str2 == null ? 0 : str2.hashCode();
            int hashCode7 = this.g.hashCode();
            Object obj = this.h;
            if (obj != null) {
                i = obj.hashCode();
            }
            return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/MediaItem$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f20626a;

        /* renamed from: b  reason: collision with root package name */
        public final String f20627b;

        /* renamed from: c  reason: collision with root package name */
        public final String f20628c;

        /* renamed from: d  reason: collision with root package name */
        public final int f20629d;
        public final int e;
        public final String f;

        public d(Uri uri, String str, String str2) {
            this(uri, str, str2, 0);
        }

        public d(Uri uri, String str, String str2, int i) {
            this(uri, str, str2, i, 0, null);
        }

        public d(Uri uri, String str, String str2, int i, int i2, String str3) {
            this.f20626a = uri;
            this.f20627b = str;
            this.f20628c = str2;
            this.f20629d = i;
            this.e = i2;
            this.f = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f20626a.equals(dVar.f20626a) && this.f20627b.equals(dVar.f20627b) && af.a((Object) this.f20628c, (Object) dVar.f20628c) && this.f20629d == dVar.f20629d && this.e == dVar.e && af.a((Object) this.f, (Object) dVar.f);
        }

        public final int hashCode() {
            int hashCode = this.f20626a.hashCode();
            int hashCode2 = this.f20627b.hashCode();
            String str = this.f20628c;
            int i = 0;
            int hashCode3 = str == null ? 0 : str.hashCode();
            int i2 = this.f20629d;
            int i3 = this.e;
            String str2 = this.f;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + i3) * 31) + i;
        }
    }

    private MediaItem(String str, b bVar, c cVar, LiveConfiguration liveConfiguration, t tVar) {
        this.f20610a = str;
        this.f20611b = cVar;
        this.f20612c = liveConfiguration;
        this.f20613d = tVar;
        this.e = bVar;
    }

    public final a a() {
        return new a();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaItem)) {
            return false;
        }
        MediaItem mediaItem = (MediaItem) obj;
        return af.a((Object) this.f20610a, (Object) mediaItem.f20610a) && this.e.equals(mediaItem.e) && af.a(this.f20611b, mediaItem.f20611b) && af.a(this.f20612c, mediaItem.f20612c) && af.a(this.f20613d, mediaItem.f20613d);
    }

    public final int hashCode() {
        int hashCode = this.f20610a.hashCode();
        c cVar = this.f20611b;
        return (((((((hashCode * 31) + (cVar != null ? cVar.hashCode() : 0)) * 31) + this.f20612c.hashCode()) * 31) + this.e.hashCode()) * 31) + this.f20613d.hashCode();
    }
}
