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
/* renamed from: com.google.android.exoplayer2.drm.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/i.class */
public interface AbstractC10964i {

    /* renamed from: com.google.android.exoplayer2.drm.i$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/i$a.class */
    public static final class C10965a implements AbstractC10968d {

        /* renamed from: a */
        private final AbstractC10964i f35474a;

        public C10965a(AbstractC10964i abstractC10964i) {
            this.f35474a = abstractC10964i;
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC10964i.AbstractC10968d
        public final AbstractC10964i acquireExoMediaDrm(UUID uuid) {
            this.f35474a.mo21825c();
            return this.f35474a;
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.i$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/i$b.class */
    public static final class C10966b {

        /* renamed from: a */
        final byte[] f35475a;

        /* renamed from: b */
        final String f35476b;

        /* renamed from: c */
        private final int f35477c;

        public C10966b(byte[] bArr, String str) {
            this(bArr, str, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        }

        public C10966b(byte[] bArr, String str, int i) {
            this.f35475a = bArr;
            this.f35476b = str;
            this.f35477c = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.i$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/i$c.class */
    public interface AbstractC10967c {
        /* renamed from: a */
        void mo21837a(byte[] bArr, int i);
    }

    /* renamed from: com.google.android.exoplayer2.drm.i$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/i$d.class */
    public interface AbstractC10968d {
        AbstractC10964i acquireExoMediaDrm(UUID uuid);
    }

    /* renamed from: com.google.android.exoplayer2.drm.i$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/i$e.class */
    public static final class C10969e {

        /* renamed from: a */
        final byte[] f35478a;

        /* renamed from: b */
        final String f35479b;

        public C10969e(byte[] bArr, String str) {
            this.f35478a = bArr;
            this.f35479b = str;
        }
    }

    /* renamed from: a */
    C10966b mo21831a(byte[] bArr, List<DrmInitData.SchemeData> list, int i, HashMap<String, String> hashMap) throws NotProvisionedException;

    /* renamed from: a */
    void mo21835a(AbstractC10967c abstractC10967c);

    /* renamed from: a */
    void mo21832a(byte[] bArr);

    /* renamed from: a */
    byte[] mo21836a() throws MediaDrmException;

    /* renamed from: a */
    byte[] mo21830a(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException;

    /* renamed from: b */
    C10969e mo21829b();

    /* renamed from: b */
    void mo21827b(byte[] bArr) throws DeniedByServerException;

    /* renamed from: b */
    void mo21826b(byte[] bArr, byte[] bArr2);

    /* renamed from: c */
    Map<String, String> mo21823c(byte[] bArr);

    /* renamed from: c */
    void mo21825c();

    /* renamed from: d */
    AbstractC10963h mo21821d(byte[] bArr) throws MediaCryptoException;

    /* renamed from: d */
    void mo21822d();

    /* renamed from: e */
    Class<? extends AbstractC10963h> mo21820e();
}
