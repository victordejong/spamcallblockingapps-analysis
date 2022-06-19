package androidx.media2.session;

import android.content.Context;
import android.os.Bundle;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.util.Log;
import android.view.Surface;
import androidx.core.p036e.C0827a;
import androidx.core.p036e.C0828b;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.SessionToken;
import androidx.versionedparcelable.AbstractC2922c;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController.class */
public class MediaController implements Closeable {

    /* renamed from: a */
    private final List<C0828b<AbstractC2200a, Executor>> f8703a;

    /* renamed from: b */
    final Object f8704b;

    /* renamed from: c */
    AbstractC2202c f8705c;

    /* renamed from: d */
    boolean f8706d;

    /* renamed from: e */
    final AbstractC2200a f8707e;

    /* renamed from: f */
    final Executor f8708f;

    /* renamed from: g */
    Long f8709g;

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$PlaybackInfo.class */
    public static final class PlaybackInfo implements AbstractC2922c {

        /* renamed from: a */
        int f8715a;

        /* renamed from: b */
        int f8716b;

        /* renamed from: c */
        int f8717c;

        /* renamed from: d */
        int f8718d;

        /* renamed from: e */
        AudioAttributesCompat f8719e;

        public PlaybackInfo() {
        }

        PlaybackInfo(int i, AudioAttributesCompat audioAttributesCompat, int i2, int i3, int i4) {
            this.f8715a = i;
            this.f8719e = audioAttributesCompat;
            this.f8716b = i2;
            this.f8717c = i3;
            this.f8718d = i4;
        }

        /* renamed from: a */
        public static PlaybackInfo m41141a(int i, AudioAttributesCompat audioAttributesCompat, int i2, int i3, int i4) {
            return new PlaybackInfo(i, audioAttributesCompat, i2, i3, i4);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof PlaybackInfo)) {
                return false;
            }
            PlaybackInfo playbackInfo = (PlaybackInfo) obj;
            return this.f8715a == playbackInfo.f8715a && this.f8716b == playbackInfo.f8716b && this.f8717c == playbackInfo.f8717c && this.f8718d == playbackInfo.f8718d && C0827a.m44414a(this.f8719e, playbackInfo.f8719e);
        }

        public final int hashCode() {
            return C0827a.m44413a(Integer.valueOf(this.f8715a), Integer.valueOf(this.f8716b), Integer.valueOf(this.f8717c), Integer.valueOf(this.f8718d), this.f8719e);
        }
    }

    /* renamed from: androidx.media2.session.MediaController$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$a.class */
    public static abstract class AbstractC2200a {
        /* renamed from: b */
        public static SessionResult m41140b() {
            return new SessionResult(-6);
        }

        /* renamed from: a */
        public void mo40632a() {
        }

        /* renamed from: a */
        public void mo40631a(float f) {
        }

        /* renamed from: a */
        public void mo40630a(int i) {
        }

        /* renamed from: a */
        public void mo40629a(long j) {
        }

        /* renamed from: a */
        public void mo40628a(MediaItem mediaItem) {
        }

        /* renamed from: a */
        public void mo40627a(SessionPlayer.TrackInfo trackInfo) {
        }

        /* renamed from: a */
        public void mo40626a(SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        /* renamed from: a */
        public void mo40625a(VideoSize videoSize) {
        }

        /* renamed from: a */
        public void mo40624a(SessionCommandGroup sessionCommandGroup) {
        }

        /* renamed from: a */
        public void mo40623a(List<SessionPlayer.TrackInfo> list) {
        }

        /* renamed from: a */
        public void mo40622a(List<MediaItem> list, MediaMetadata mediaMetadata) {
        }

        /* renamed from: b */
        public void mo40621b(SessionPlayer.TrackInfo trackInfo) {
        }

        /* renamed from: c */
        public void mo40620c() {
        }
    }

    /* renamed from: androidx.media2.session.MediaController$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$b.class */
    public interface AbstractC2201b {
        void run(AbstractC2200a abstractC2200a);
    }

    /* renamed from: androidx.media2.session.MediaController$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$c.class */
    public interface AbstractC2202c extends Closeable {
        /* renamed from: a */
        SessionPlayer.TrackInfo mo41069a(int i);

        /* renamed from: a */
        AbstractFutureC15579a<SessionResult> mo41070a(float f);

        /* renamed from: a */
        AbstractFutureC15579a<SessionResult> mo41068a(long j);

        /* renamed from: a */
        AbstractFutureC15579a<SessionResult> mo41065a(Surface surface);

        /* renamed from: a */
        AbstractFutureC15579a<SessionResult> mo41064a(SessionPlayer.TrackInfo trackInfo);

        /* renamed from: a */
        boolean mo41071a();

        /* renamed from: b */
        AbstractFutureC15579a<SessionResult> mo41063b();

        /* renamed from: b */
        AbstractFutureC15579a<SessionResult> mo41061b(SessionPlayer.TrackInfo trackInfo);

        /* renamed from: c */
        AbstractFutureC15579a<SessionResult> mo41060c();

        /* renamed from: d */
        int mo41059d();

        /* renamed from: e */
        long mo41058e();

        /* renamed from: f */
        long mo41057f();

        /* renamed from: g */
        float mo41056g();

        /* renamed from: h */
        long mo41055h();

        /* renamed from: i */
        MediaItem mo41054i();

        /* renamed from: j */
        int mo41053j();

        /* renamed from: k */
        int mo41052k();

        /* renamed from: l */
        AbstractFutureC15579a<SessionResult> mo41051l();

        /* renamed from: m */
        AbstractFutureC15579a<SessionResult> mo41050m();

        /* renamed from: n */
        VideoSize mo41049n();

        /* renamed from: o */
        List<SessionPlayer.TrackInfo> mo41048o();

        /* renamed from: p */
        SessionCommandGroup mo41047p();
    }

    public MediaController(final Context context, MediaSessionCompat.Token token, final Bundle bundle, Executor executor, AbstractC2200a abstractC2200a) {
        this.f8704b = new Object();
        this.f8703a = new ArrayList();
        Objects.requireNonNull(context, "context shouldn't be null");
        Objects.requireNonNull(token, "token shouldn't be null");
        this.f8707e = abstractC2200a;
        this.f8708f = executor;
        SessionToken.m41114a(context, token, new SessionToken.AbstractC2216a() { // from class: androidx.media2.session._$$Lambda$MediaController$v61gmz4WmEkdr6ZHTFodXPcO2L8
            @Override // androidx.media2.session.SessionToken.AbstractC2216a
            public final void onSessionTokenCreated(MediaSessionCompat.Token token2, SessionToken sessionToken) {
                MediaController.this.m41162a(context, bundle, token2, sessionToken);
            }
        });
    }

    public MediaController(Context context, SessionToken sessionToken, Bundle bundle, Executor executor, AbstractC2200a abstractC2200a) {
        Object obj = new Object();
        this.f8704b = obj;
        this.f8703a = new ArrayList();
        Objects.requireNonNull(context, "context shouldn't be null");
        Objects.requireNonNull(sessionToken, "token shouldn't be null");
        this.f8707e = abstractC2200a;
        this.f8708f = executor;
        synchronized (obj) {
            this.f8705c = mo41080a(context, sessionToken, bundle);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m41162a(Context context, Bundle bundle, MediaSessionCompat.Token token, SessionToken sessionToken) {
        boolean z;
        synchronized (this.f8704b) {
            z = this.f8706d;
            if (!z) {
                this.f8705c = mo41080a(context, sessionToken, bundle);
            }
        }
        if (z) {
            m41155b(new AbstractC2201b() { // from class: androidx.media2.session._$$Lambda$MediaController$pmI3LxPWPMnxlQTUrm7yyqt9_Z0
                @Override // androidx.media2.session.MediaController.AbstractC2201b
                public final void run(MediaController.AbstractC2200a abstractC2200a) {
                    MediaController.this.m41156b(abstractC2200a);
                }
            });
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m41156b(AbstractC2200a abstractC2200a) {
    }

    /* renamed from: n */
    public static AbstractFutureC15579a<SessionResult> m41143n() {
        return SessionResult.m41117a(-100);
    }

    /* renamed from: o */
    private List<C0828b<AbstractC2200a, Executor>> m41142o() {
        ArrayList arrayList;
        synchronized (this.f8704b) {
            arrayList = new ArrayList(this.f8703a);
        }
        return arrayList;
    }

    /* renamed from: a */
    public final SessionPlayer.TrackInfo m41164a(int i) {
        if (m41157b()) {
            return mo41081a().mo41069a(i);
        }
        return null;
    }

    /* renamed from: a */
    public AbstractC2202c mo41081a() {
        AbstractC2202c abstractC2202c;
        synchronized (this.f8704b) {
            abstractC2202c = this.f8705c;
        }
        return abstractC2202c;
    }

    /* renamed from: a */
    AbstractC2202c mo41080a(Context context, SessionToken sessionToken, Bundle bundle) {
        return sessionToken.m41108d() ? new C2272i(context, this, sessionToken) : new C2238h(context, this, sessionToken, bundle);
    }

    /* renamed from: a */
    public final AbstractFutureC15579a<SessionResult> m41163a(long j) {
        return m41157b() ? mo41081a().mo41068a(j) : SessionResult.m41117a(-100);
    }

    /* renamed from: a */
    public final AbstractFutureC15579a<SessionResult> m41161a(SessionPlayer.TrackInfo trackInfo) {
        Objects.requireNonNull(trackInfo, "TrackInfo shouldn't be null");
        return m41157b() ? mo41081a().mo41064a(trackInfo) : SessionResult.m41117a(-100);
    }

    /* renamed from: a */
    public final void m41160a(AbstractC2200a abstractC2200a) {
        boolean z;
        Objects.requireNonNull(abstractC2200a, "callback shouldn't be null");
        synchronized (this.f8704b) {
            int size = this.f8703a.size() - 1;
            while (true) {
                z = false;
                if (size < 0) {
                    break;
                } else if (this.f8703a.get(size).f3556a == abstractC2200a) {
                    this.f8703a.remove(size);
                    z = true;
                    break;
                } else {
                    size--;
                }
            }
        }
        if (!z) {
            Log.w("MediaController", "unregisterExtraCallback: no such callback found");
        }
    }

    /* renamed from: a */
    public final void m41159a(final AbstractC2201b abstractC2201b) {
        Executor executor;
        if (this.f8707e == null || (executor = this.f8708f) == null) {
            return;
        }
        executor.execute(new Runnable() { // from class: androidx.media2.session.MediaController.1
            @Override // java.lang.Runnable
            public final void run() {
                abstractC2201b.run(MediaController.this.f8707e);
            }
        });
    }

    /* renamed from: a */
    public final void m41158a(Executor executor, AbstractC2200a abstractC2200a) {
        boolean z;
        Objects.requireNonNull(executor, "executor shouldn't be null");
        Objects.requireNonNull(abstractC2200a, "callback shouldn't be null");
        synchronized (this.f8704b) {
            Iterator<C0828b<AbstractC2200a, Executor>> it2 = this.f8703a.iterator();
            while (true) {
                z = false;
                if (it2.hasNext()) {
                    if (it2.next().f3556a == abstractC2200a) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (!z) {
                this.f8703a.add(new C0828b<>(abstractC2200a, executor));
            }
        }
        if (z) {
            Log.w("MediaController", "registerExtraCallback: the callback already exists");
        }
    }

    /* renamed from: b */
    public final void m41155b(final AbstractC2201b abstractC2201b) {
        m41159a(abstractC2201b);
        for (C0828b<AbstractC2200a, Executor> c0828b : m41142o()) {
            final AbstractC2200a abstractC2200a = c0828b.f3556a;
            Executor executor = c0828b.f3557b;
            if (abstractC2200a == null) {
                Log.e("MediaController", "notifyAllControllerCallbacks: mExtraControllerCallbacks contains a null ControllerCallback! Ignoring.");
            } else if (executor == null) {
                Log.e("MediaController", "notifyAllControllerCallbacks: mExtraControllerCallbacks contains a null Executor! Ignoring.");
            } else {
                executor.execute(new Runnable() { // from class: androidx.media2.session.MediaController.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        abstractC2201b.run(abstractC2200a);
                    }
                });
            }
        }
    }

    /* renamed from: b */
    public final boolean m41157b() {
        AbstractC2202c mo41081a = mo41081a();
        return mo41081a != null && mo41081a.mo41071a();
    }

    /* renamed from: c */
    public final AbstractFutureC15579a<SessionResult> m41154c() {
        return m41157b() ? mo41081a().mo41063b() : SessionResult.m41117a(-100);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            synchronized (this.f8704b) {
                if (this.f8706d) {
                    return;
                }
                this.f8706d = true;
                AbstractC2202c abstractC2202c = this.f8705c;
                if (abstractC2202c == null) {
                    return;
                }
                abstractC2202c.close();
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: d */
    public final AbstractFutureC15579a<SessionResult> m41153d() {
        return m41157b() ? mo41081a().mo41060c() : SessionResult.m41117a(-100);
    }

    /* renamed from: e */
    public final int m41152e() {
        if (m41157b()) {
            return mo41081a().mo41059d();
        }
        return 0;
    }

    /* renamed from: f */
    public final long m41151f() {
        if (m41157b()) {
            return mo41081a().mo41058e();
        }
        return Long.MIN_VALUE;
    }

    /* renamed from: g */
    public final long m41150g() {
        if (m41157b()) {
            return mo41081a().mo41057f();
        }
        return Long.MIN_VALUE;
    }

    /* renamed from: h */
    public final long m41149h() {
        if (m41157b()) {
            return mo41081a().mo41055h();
        }
        return Long.MIN_VALUE;
    }

    /* renamed from: i */
    public final MediaItem m41148i() {
        if (m41157b()) {
            return mo41081a().mo41054i();
        }
        return null;
    }

    /* renamed from: j */
    public final int m41147j() {
        if (m41157b()) {
            return mo41081a().mo41053j();
        }
        return -1;
    }

    /* renamed from: k */
    public final int m41146k() {
        if (m41157b()) {
            return mo41081a().mo41052k();
        }
        return -1;
    }

    /* renamed from: l */
    public final VideoSize m41145l() {
        return m41157b() ? mo41081a().mo41049n() : new VideoSize(0, 0);
    }

    /* renamed from: m */
    public final List<SessionPlayer.TrackInfo> m41144m() {
        return m41157b() ? mo41081a().mo41048o() : Collections.emptyList();
    }
}
