package androidx.media2.session;

import android.os.Bundle;
import android.os.SystemClock;
import androidx.c.a.b;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SessionPlayer;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.google.common.util.concurrent.a;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionResult.class */
public class SessionResult extends CustomVersionedParcelable implements t {

    /* renamed from: a  reason: collision with root package name */
    int f4546a;

    /* renamed from: b  reason: collision with root package name */
    long f4547b;

    /* renamed from: c  reason: collision with root package name */
    Bundle f4548c;

    /* renamed from: d  reason: collision with root package name */
    MediaItem f4549d;
    MediaItem e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionResult() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionResult(int i) {
        this(i, null);
    }

    public SessionResult(int i, Bundle bundle) {
        this(i, bundle, null, SystemClock.elapsedRealtime());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionResult(int i, Bundle bundle, MediaItem mediaItem) {
        this(i, bundle, mediaItem, SystemClock.elapsedRealtime());
    }

    SessionResult(int i, Bundle bundle, MediaItem mediaItem, long j) {
        this.f4546a = i;
        this.f4548c = bundle;
        this.f4549d = mediaItem;
        this.f4547b = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SessionResult a(SessionPlayer.b bVar) {
        if (bVar == null) {
            return null;
        }
        return new SessionResult(bVar.a(), null, bVar.f2759b, bVar.f2758a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a<SessionResult> a(int i) {
        b a2 = b.a();
        a2.a((b) new SessionResult(i));
        return a2;
    }

    @Override // androidx.media2.common.a
    public final int a() {
        return this.f4546a;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public final void a(boolean z) {
        MediaItem mediaItem = this.f4549d;
        if (mediaItem != null) {
            synchronized (mediaItem) {
                if (this.e == null) {
                    this.e = s.a(this.f4549d);
                }
            }
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public final void e() {
        this.f4549d = this.e;
    }
}
