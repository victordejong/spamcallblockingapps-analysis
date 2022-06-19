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
import androidx.media2.session.AbstractC2223c;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaSession;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ConnectionResult.class */
class ConnectionResult extends CustomVersionedParcelable {

    /* renamed from: A */
    MediaMetadata f8666A;

    /* renamed from: B */
    int f8667B;

    /* renamed from: a */
    int f8668a;

    /* renamed from: b */
    AbstractC2223c f8669b;

    /* renamed from: c */
    IBinder f8670c;

    /* renamed from: d */
    PendingIntent f8671d;

    /* renamed from: e */
    int f8672e;

    /* renamed from: f */
    MediaItem f8673f;

    /* renamed from: g */
    MediaItem f8674g;

    /* renamed from: h */
    long f8675h;

    /* renamed from: i */
    long f8676i;

    /* renamed from: j */
    float f8677j;

    /* renamed from: k */
    long f8678k;

    /* renamed from: l */
    MediaController.PlaybackInfo f8679l;

    /* renamed from: m */
    int f8680m;

    /* renamed from: n */
    int f8681n;

    /* renamed from: o */
    ParcelImplListSlice f8682o;

    /* renamed from: p */
    SessionCommandGroup f8683p;

    /* renamed from: q */
    int f8684q;

    /* renamed from: r */
    int f8685r;

    /* renamed from: s */
    int f8686s;

    /* renamed from: t */
    Bundle f8687t;

    /* renamed from: u */
    VideoSize f8688u;

    /* renamed from: v */
    List<SessionPlayer.TrackInfo> f8689v;

    /* renamed from: w */
    SessionPlayer.TrackInfo f8690w;

    /* renamed from: x */
    SessionPlayer.TrackInfo f8691x;

    /* renamed from: y */
    SessionPlayer.TrackInfo f8692y;

    /* renamed from: z */
    SessionPlayer.TrackInfo f8693z;

    public ConnectionResult() {
    }

    public ConnectionResult(BinderC2436r binderC2436r, MediaSession.AbstractC2210c abstractC2210c, SessionCommandGroup sessionCommandGroup) {
        this.f8669b = binderC2436r;
        this.f8672e = abstractC2210c.mo40946d();
        this.f8673f = abstractC2210c.mo40935m();
        this.f8675h = SystemClock.elapsedRealtime();
        this.f8676i = abstractC2210c.mo40944e();
        this.f8677j = abstractC2210c.mo40940h();
        this.f8678k = abstractC2210c.mo40942f();
        this.f8679l = abstractC2210c.mo40972J();
        this.f8680m = abstractC2210c.mo40929s();
        this.f8681n = abstractC2210c.mo40928t();
        this.f8671d = abstractC2210c.mo40971K();
        this.f8684q = abstractC2210c.mo40934n();
        this.f8685r = abstractC2210c.mo40933o();
        this.f8686s = abstractC2210c.mo40932p();
        this.f8687t = abstractC2210c.mo40978D().m41109c();
        this.f8688u = abstractC2210c.mo40939i();
        this.f8689v = abstractC2210c.mo40938j();
        this.f8690w = abstractC2210c.mo40968a(1);
        this.f8691x = abstractC2210c.mo40968a(2);
        this.f8692y = abstractC2210c.mo40968a(4);
        this.f8693z = abstractC2210c.mo40968a(5);
        if (sessionCommandGroup.m41130a(10005)) {
            this.f8682o = C2481s.m40783f(abstractC2210c.mo40937k());
        } else {
            this.f8682o = null;
        }
        if (sessionCommandGroup.m41130a(10005) || sessionCommandGroup.m41130a(10012)) {
            this.f8666A = abstractC2210c.mo40936l();
        } else {
            this.f8666A = null;
        }
        this.f8667B = abstractC2210c.mo40941g();
        this.f8683p = sessionCommandGroup;
        this.f8668a = 0;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public final void mo39667a(boolean z) {
        synchronized (this.f8669b) {
            if (this.f8670c == null) {
                this.f8670c = (IBinder) this.f8669b;
                this.f8674g = C2481s.m40798a(this.f8673f);
            }
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: e */
    public final void mo39666e() {
        this.f8669b = AbstractC2223c.AbstractBinderC2224a.m41085a(this.f8670c);
        this.f8673f = this.f8674g;
    }
}
