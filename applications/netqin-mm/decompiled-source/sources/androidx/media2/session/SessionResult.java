package androidx.media2.session;

import android.os.Bundle;
import android.os.SystemClock;
import androidx.media2.common.MediaItem;
import androidx.versionedparcelable.CustomVersionedParcelable;
import p012b.p076s.p116d.AbstractC1800l;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionResult.class */
public class SessionResult extends CustomVersionedParcelable implements AbstractC1800l {

    /* renamed from: a */
    public int f2228a;

    /* renamed from: b */
    public long f2229b;

    /* renamed from: c */
    public Bundle f2230c;

    /* renamed from: d */
    public MediaItem f2231d;

    public SessionResult() {
    }

    public SessionResult(int i, Bundle bundle) {
        this(i, bundle, null, SystemClock.elapsedRealtime());
    }

    public SessionResult(int i, Bundle bundle, MediaItem mediaItem, long j) {
        this.f2228a = i;
        this.f2230c = bundle;
        this.f2229b = j;
    }

    @Override // p012b.p076s.p077a.AbstractC1154a
    /* renamed from: e */
    public int mo34562e() {
        return this.f2228a;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: f */
    public void mo32075f() {
        this.f2231d = null;
    }
}
