package androidx.media2.session;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.SystemClock;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaSession;
import androidx.media2.session.c;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ConnectionResult.class */
class ConnectionResult extends CustomVersionedParcelable {
    MediaMetadata A;
    int B;

    /* renamed from: a  reason: collision with root package name */
    int f4492a;

    /* renamed from: b  reason: collision with root package name */
    c f4493b;

    /* renamed from: c  reason: collision with root package name */
    IBinder f4494c;

    /* renamed from: d  reason: collision with root package name */
    PendingIntent f4495d;
    int e;
    MediaItem f;
    MediaItem g;
    long h;
    long i;
    float j;
    long k;
    MediaController.PlaybackInfo l;
    int m;
    int n;
    ParcelImplListSlice o;
    SessionCommandGroup p;
    int q;
    int r;
    int s;
    Bundle t;
    VideoSize u;
    List<SessionPlayer.TrackInfo> v;
    SessionPlayer.TrackInfo w;
    SessionPlayer.TrackInfo x;
    SessionPlayer.TrackInfo y;
    SessionPlayer.TrackInfo z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConnectionResult() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConnectionResult(r rVar, MediaSession.c cVar, SessionCommandGroup sessionCommandGroup) {
        this.f4493b = rVar;
        this.e = cVar.d();
        this.f = cVar.m();
        this.h = SystemClock.elapsedRealtime();
        this.i = cVar.e();
        this.j = cVar.h();
        this.k = cVar.f();
        this.l = cVar.J();
        this.m = cVar.s();
        this.n = cVar.t();
        this.f4495d = cVar.K();
        this.q = cVar.n();
        this.r = cVar.o();
        this.s = cVar.p();
        this.t = cVar.D().c();
        this.u = cVar.i();
        this.v = cVar.j();
        this.w = cVar.a(1);
        this.x = cVar.a(2);
        this.y = cVar.a(4);
        this.z = cVar.a(5);
        if (sessionCommandGroup.a(10005)) {
            this.o = s.f(cVar.k());
        } else {
            this.o = null;
        }
        if (sessionCommandGroup.a(10005) || sessionCommandGroup.a(10012)) {
            this.A = cVar.l();
        } else {
            this.A = null;
        }
        this.B = cVar.g();
        this.p = sessionCommandGroup;
        this.f4492a = 0;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public final void a(boolean z) {
        synchronized (this.f4493b) {
            if (this.f4494c == null) {
                this.f4494c = (IBinder) this.f4493b;
                this.g = s.a(this.f);
            }
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public final void e() {
        this.f4493b = c.a.a(this.f4494c);
        this.f = this.g;
    }
}
