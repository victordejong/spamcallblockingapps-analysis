package androidx.media2.session;

import android.os.Bundle;
import android.os.SystemClock;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SessionPlayer;
import androidx.p024c.p025a.C0492b;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.google.common.util.concurrent.AbstractFutureC15579a;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionResult.class */
public class SessionResult extends CustomVersionedParcelable implements AbstractC2483t {

    /* renamed from: a */
    int f8758a;

    /* renamed from: b */
    long f8759b;

    /* renamed from: c */
    Bundle f8760c;

    /* renamed from: d */
    MediaItem f8761d;

    /* renamed from: e */
    MediaItem f8762e;

    public SessionResult() {
    }

    public SessionResult(int i) {
        this(i, null);
    }

    public SessionResult(int i, Bundle bundle) {
        this(i, bundle, null, SystemClock.elapsedRealtime());
    }

    public SessionResult(int i, Bundle bundle, MediaItem mediaItem) {
        this(i, bundle, mediaItem, SystemClock.elapsedRealtime());
    }

    SessionResult(int i, Bundle bundle, MediaItem mediaItem, long j) {
        this.f8758a = i;
        this.f8760c = bundle;
        this.f8761d = mediaItem;
        this.f8759b = j;
    }

    /* renamed from: a */
    public static SessionResult m41116a(SessionPlayer.C1352b c1352b) {
        if (c1352b == null) {
            return null;
        }
        return new SessionResult(c1352b.mo41118a(), null, c1352b.f5055b, c1352b.f5054a);
    }

    /* renamed from: a */
    public static AbstractFutureC15579a<SessionResult> m41117a(int i) {
        C0492b m45412a = C0492b.m45412a();
        m45412a.mo40774a((C0492b) new SessionResult(i));
        return m45412a;
    }

    @Override // androidx.media2.common.AbstractC1354a
    /* renamed from: a */
    public final int mo41118a() {
        return this.f8758a;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public final void mo39667a(boolean z) {
        MediaItem mediaItem = this.f8761d;
        if (mediaItem != null) {
            synchronized (mediaItem) {
                if (this.f8762e == null) {
                    this.f8762e = C2481s.m40798a(this.f8761d);
                }
            }
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: e */
    public final void mo39666e() {
        this.f8761d = this.f8762e;
    }
}
