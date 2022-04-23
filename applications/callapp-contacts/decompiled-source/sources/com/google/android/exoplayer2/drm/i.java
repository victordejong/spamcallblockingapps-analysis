package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/i.class */
public interface i {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/i$a.class */
    public static final class a implements d {

        /* renamed from: a  reason: collision with root package name */
        private final i f20887a;

        public a(i iVar) {
            this.f20887a = iVar;
        }

        @Override // com.google.android.exoplayer2.drm.i.d
        public final i acquireExoMediaDrm(UUID uuid) {
            this.f20887a.c();
            return this.f20887a;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/i$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final byte[] f20888a;

        /* renamed from: b  reason: collision with root package name */
        final String f20889b;

        /* renamed from: c  reason: collision with root package name */
        private final int f20890c;

        public b(byte[] bArr, String str) {
            this(bArr, str, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        }

        public b(byte[] bArr, String str, int i) {
            this.f20888a = bArr;
            this.f20889b = str;
            this.f20890c = i;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/i$c.class */
    public interface c {
        void a(byte[] bArr, int i);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/i$d.class */
    public interface d {
        i acquireExoMediaDrm(UUID uuid);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/i$e.class */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        final byte[] f20891a;

        /* renamed from: b  reason: collision with root package name */
        final String f20892b;

        public e(byte[] bArr, String str) {
            this.f20891a = bArr;
            this.f20892b = str;
        }
    }

    b a(byte[] bArr, List<DrmInitData.SchemeData> list, int i, HashMap<String, String> hashMap) throws NotProvisionedException;

    void a(c cVar);

    void a(byte[] bArr);

    byte[] a() throws MediaDrmException;

    byte[] a(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException;

    e b();

    void b(byte[] bArr) throws DeniedByServerException;

    void b(byte[] bArr, byte[] bArr2);

    Map<String, String> c(byte[] bArr);

    void c();

    h d(byte[] bArr) throws MediaCryptoException;

    void d();

    Class<? extends h> e();
}
