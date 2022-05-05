package p459j.p460a.p474c0.p491g;

import android.media.MediaPlayer;
import android.net.Uri;
import android.os.SystemClock;
import android.view.View;
import androidx.transition.Transition;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.p078ui.AudioAttachmentPlayPauseButton;
import gogolook.callgogolook2.messaging.p078ui.AudioPlaybackProgressBar;
import gogolook.callgogolook2.messaging.p078ui.mediapicker.PausableChronometer;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12212s0;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� (2\u00020\u0001:\u0001(B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J(\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u000e\u0010\u001b\u001a\n\u0018\u00010\u001cj\u0004\u0018\u0001`\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0006\u0010\u001f\u001a\u00020\u0004J\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010!\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\"\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010#\u001a\u00020$J\u000e\u0010%\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010&\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0006\u0010'\u001a\u00020\u0004¨\u0006)"}, m815d2 = {"Lgogolook/callgogolook2/messaging/ui/AudioController;", "", "()V", "bindAudioPlayer", "", "dataSourceUri", "Landroid/net/Uri;", "chronometer", "Lgogolook/callgogolook2/messaging/ui/mediapicker/PausableChronometer;", "progressBar", "Lgogolook/callgogolook2/messaging/ui/AudioPlaybackProgressBar;", "playPauseButton", "Lgogolook/callgogolook2/messaging/ui/AudioAttachmentPlayPauseButton;", "initMediaPlayer", "audioPlayer", "Lgogolook/callgogolook2/messaging/ui/AudioPlayer;", "isAudioPlaying", "", "(Landroid/net/Uri;)Ljava/lang/Boolean;", "notifyOnCompletion", "notifyOnPrepared", "notifyPlayPauseOnClick", "notifyStartPlayAfterPrepareChanged", "onAudioReplayError", "what", "", "extra", "exception", "Ljava/lang/Exception;", "Lkotlin/Exception;", "playAudio", "releaseAll", "releaseMediaPlayer", "removeAudioPlayerStateListener", "setAudioPlayerStateListener", "listener", "Lgogolook/callgogolook2/messaging/ui/AudioPlayerStateListener;", "setupMediaPlayer", "stopAudio", "stopPlayingAudio", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.g.b */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/b.class */
public final class C11922b {

    /* renamed from: c */
    public static final C11925c f26721c = new C11925c(null);

    /* renamed from: a */
    public static final AbstractC14974f f26719a = C14975g.m662a(C11924b.f26723a);

    /* renamed from: b */
    public static final AbstractC14974f f26720b = C14975g.m662a(C11923a.f26722a);

    /* renamed from: j.a.c0.g.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/b$a.class */
    public static final class C11923a extends AbstractC15150l implements AbstractC15107a<HashMap<Uri, C11982c>> {

        /* renamed from: a */
        public static final C11923a f26722a = new C11923a();

        public C11923a() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final HashMap<Uri, C11982c> invoke() {
            return new HashMap<>();
        }
    }

    /* renamed from: j.a.c0.g.b$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/b$b.class */
    public static final class C11924b extends AbstractC15150l implements AbstractC15107a<C11922b> {

        /* renamed from: a */
        public static final C11924b f26723a = new C11924b();

        public C11924b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C11922b invoke() {
            return new C11922b(null);
        }
    }

    /* renamed from: j.a.c0.g.b$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/b$c.class */
    public static final class C11925c {

        /* renamed from: a */
        public static final /* synthetic */ AbstractC14906i[] f26724a;

        static {
            C15157s sVar = new C15157s(C15131a0.m419a(C11925c.class), Transition.MATCH_INSTANCE_STR, "getInstance()Lgogolook/callgogolook2/messaging/ui/AudioController;");
            C15131a0.m412a(sVar);
            C15157s sVar2 = new C15157s(C15131a0.m419a(C11925c.class), "audioPlayerMap", "getAudioPlayerMap()Ljava/util/HashMap;");
            C15131a0.m412a(sVar2);
            f26724a = new AbstractC14906i[]{sVar, sVar2};
        }

        public C11925c() {
        }

        public /* synthetic */ C11925c(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final HashMap<Uri, C11982c> m7893a() {
            AbstractC14974f fVar = C11922b.f26720b;
            AbstractC14906i iVar = f26724a[1];
            return (HashMap) fVar.getValue();
        }

        /* renamed from: b */
        public final C11922b m7891b() {
            AbstractC14974f fVar = C11922b.f26719a;
            AbstractC14906i iVar = f26724a[0];
            return (C11922b) fVar.getValue();
        }
    }

    /* renamed from: j.a.c0.g.b$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/b$d.class */
    public static final class View$OnClickListenerC11926d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C11982c f26725a;

        /* renamed from: b */
        public final /* synthetic */ C11922b f26726b;

        /* renamed from: c */
        public final /* synthetic */ Uri f26727c;

        public View$OnClickListenerC11926d(C11982c cVar, C11922b bVar, PausableChronometer pausableChronometer, AudioPlaybackProgressBar audioPlaybackProgressBar, AudioAttachmentPlayPauseButton audioAttachmentPlayPauseButton, Uri uri) {
            this.f26725a = cVar;
            this.f26726b = bVar;
            this.f26727c = uri;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (this.f26725a.m7656c() == null || !this.f26725a.m7652f()) {
                if (this.f26725a.m7650h()) {
                    this.f26725a.m7655c(false);
                } else {
                    this.f26725a.m7655c(true);
                    this.f26726b.m7915a(this.f26727c, this.f26725a);
                }
                this.f26726b.m7898d(this.f26725a);
            } else {
                MediaPlayer c = this.f26725a.m7656c();
                Boolean valueOf = c != null ? Boolean.valueOf(c.isPlaying()) : null;
                if (valueOf == null) {
                    C15149k.m378b();
                    throw null;
                } else if (valueOf.booleanValue()) {
                    this.f26726b.m7894f(this.f26725a);
                } else {
                    this.f26726b.m7896e(this.f26725a);
                }
            }
            this.f26726b.m7902c(this.f26725a);
        }
    }

    /* renamed from: j.a.c0.g.b$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/b$e.class */
    public static final class C11927e implements MediaPlayer.OnCompletionListener {

        /* renamed from: a */
        public final /* synthetic */ MediaPlayer f26728a;

        /* renamed from: b */
        public final /* synthetic */ C11922b f26729b;

        /* renamed from: c */
        public final /* synthetic */ C11982c f26730c;

        public C11927e(MediaPlayer mediaPlayer, C11922b bVar, Uri uri, C11982c cVar) {
            this.f26728a = mediaPlayer;
            this.f26729b = bVar;
            this.f26730c = cVar;
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public final void onCompletion(MediaPlayer mediaPlayer) {
            PausableChronometer b = this.f26730c.m7658b();
            if (b != null) {
                b.m26955b();
            }
            PausableChronometer b2 = this.f26730c.m7658b();
            if (b2 != null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                MediaPlayer mediaPlayer2 = this.f26728a;
                b2.setBase(elapsedRealtime - (mediaPlayer2 != null ? Integer.valueOf(mediaPlayer2.getDuration()) : null).intValue());
            }
            AudioPlaybackProgressBar g = this.f26730c.m7651g();
            if (g != null) {
                g.m27404b();
            }
            this.f26730c.m7659a(true);
            this.f26729b.m7910a(this.f26730c);
        }
    }

    /* renamed from: j.a.c0.g.b$f */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/b$f.class */
    public static final class C11928f implements MediaPlayer.OnPreparedListener {

        /* renamed from: a */
        public final /* synthetic */ MediaPlayer f26731a;

        /* renamed from: b */
        public final /* synthetic */ C11922b f26732b;

        /* renamed from: c */
        public final /* synthetic */ C11982c f26733c;

        public C11928f(MediaPlayer mediaPlayer, C11922b bVar, Uri uri, C11982c cVar) {
            this.f26731a = mediaPlayer;
            this.f26732b = bVar;
            this.f26733c = cVar;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public final void onPrepared(MediaPlayer mediaPlayer) {
            PausableChronometer b = this.f26733c.m7658b();
            Integer num = null;
            if (b != null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                MediaPlayer mediaPlayer2 = this.f26731a;
                b.setBase(elapsedRealtime - (mediaPlayer2 != null ? Integer.valueOf(mediaPlayer2.getDuration()) : null).intValue());
            }
            AudioPlaybackProgressBar g = this.f26733c.m7651g();
            if (g != null) {
                MediaPlayer mediaPlayer3 = this.f26731a;
                if (mediaPlayer3 != null) {
                    num = Integer.valueOf(mediaPlayer3.getDuration());
                }
                g.m27407a(num.intValue());
            }
            MediaPlayer c = this.f26733c.m7656c();
            if (c != null) {
                c.seekTo(0);
            }
            this.f26733c.m7657b(true);
            if (this.f26733c.m7650h()) {
                this.f26733c.m7655c(false);
                this.f26732b.m7896e(this.f26733c);
                this.f26732b.m7898d(this.f26733c);
            }
            this.f26732b.m7906b(this.f26733c);
        }
    }

    /* renamed from: j.a.c0.g.b$g */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/b$g.class */
    public static final class C11929g implements MediaPlayer.OnErrorListener {

        /* renamed from: b */
        public final /* synthetic */ Uri f26735b;

        /* renamed from: c */
        public final /* synthetic */ C11982c f26736c;

        public C11929g(Uri uri, C11982c cVar) {
            this.f26735b = uri;
            this.f26736c = cVar;
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            this.f26736c.m7655c(false);
            C11922b.this.m7898d(this.f26736c);
            C11922b.this.m7918a(i, i2, (Exception) null);
            C11922b.this.m7908b(this.f26735b);
            return true;
        }
    }

    public C11922b() {
    }

    public /* synthetic */ C11922b(C15145g gVar) {
        this();
    }

    /* renamed from: a */
    public final Boolean m7917a(Uri uri) {
        C15149k.m377b(uri, "dataSourceUri");
        C11982c cVar = (C11982c) f26721c.m7893a().get(uri);
        if (cVar != null) {
            C15149k.m383a((Object) cVar, "audioPlayerMap[dataSourceUri] ?: return false");
            MediaPlayer c = cVar.m7656c();
            if (c != null) {
                return Boolean.valueOf(c.isPlaying());
            }
        }
        return false;
    }

    /* renamed from: a */
    public final void m7919a() {
        for (Map.Entry entry : f26721c.m7893a().entrySet()) {
            Uri uri = (Uri) entry.getKey();
            MediaPlayer c = ((C11982c) entry.getValue()).m7656c();
            if (c != null) {
                c.release();
            }
        }
        f26721c.m7893a().clear();
    }

    /* renamed from: a */
    public final void m7918a(int i, int i2, Exception exc) {
        if (exc == null) {
            C12153d0.m6987b("MessagingApp", "audio replay failed, what=" + i + ", extra=" + i2);
        } else {
            C12153d0.m6987b("MessagingApp", "audio replay failed, exception=" + exc);
        }
        C12212s0.m6796a((int) R$string.audio_recording_replay_failed);
    }

    /* renamed from: a */
    public final void m7916a(Uri uri, PausableChronometer pausableChronometer, AudioPlaybackProgressBar audioPlaybackProgressBar, AudioAttachmentPlayPauseButton audioAttachmentPlayPauseButton) {
        C15149k.m377b(uri, "dataSourceUri");
        C11982c cVar = f26721c.m7893a().containsKey(uri) ? (C11982c) f26721c.m7893a().get(uri) : new C11982c();
        if (cVar != null) {
            cVar.m7661a(pausableChronometer);
            cVar.m7662a(audioPlaybackProgressBar);
            cVar.m7663a(audioAttachmentPlayPauseButton);
            MediaPlayer c = cVar.m7656c();
            if (c != null) {
                c.release();
            }
            AudioAttachmentPlayPauseButton d = cVar.m7654d();
            if (d != null) {
                d.setOnClickListener(new View$OnClickListenerC11926d(cVar, this, pausableChronometer, audioPlaybackProgressBar, audioAttachmentPlayPauseButton, uri));
            }
            f26721c.m7893a().put(uri, cVar);
        }
    }

    /* renamed from: a */
    public final void m7915a(Uri uri, C11982c cVar) {
        MediaPlayer c;
        C12151d.m7000b(uri);
        C12151d.m6999b(!(cVar != null ? Boolean.valueOf(cVar.m7652f()) : null).booleanValue());
        if (!cVar.m7650h()) {
            m7908b(uri);
        }
        if (cVar.m7656c() == null) {
            cVar.m7664a(new MediaPlayer());
        }
        if (cVar != null && (c = cVar.m7656c()) != null) {
            try {
                c.setAudioStreamType(3);
                AbstractC11516a n = AbstractC11516a.m9413n();
                C15149k.m383a((Object) n, "Factory.get()");
                c.setDataSource(n.mo9412a(), uri);
                c.setOnCompletionListener(new C11927e(c, this, uri, cVar));
                c.setOnPreparedListener(new C11928f(c, this, uri, cVar));
                c.setOnErrorListener(new C11929g(uri, cVar));
                c.prepareAsync();
            } catch (Exception e) {
                m7918a(0, 0, e);
                m7908b(uri);
            }
        }
    }

    /* renamed from: a */
    public final void m7914a(Uri uri, AbstractC11991d dVar) {
        C15149k.m377b(uri, "dataSourceUri");
        C15149k.m377b(dVar, "listener");
        C11982c cVar = (C11982c) f26721c.m7893a().get(uri);
        if (cVar != null) {
            cVar.m7665a();
        }
        C11982c cVar2 = (C11982c) f26721c.m7893a().get(uri);
        if (cVar2 != null) {
            cVar2.m7660a(dVar);
        }
    }

    /* renamed from: a */
    public final void m7910a(C11982c cVar) {
        AbstractC11991d a;
        if (cVar != null && (a = cVar.m7665a()) != null) {
            a.mo7627a(cVar);
        }
    }

    /* renamed from: b */
    public final void m7909b() {
        for (Map.Entry entry : f26721c.m7893a().entrySet()) {
            Uri uri = (Uri) entry.getKey();
            C11982c cVar = (C11982c) entry.getValue();
            MediaPlayer c = cVar.m7656c();
            if (c != null && c.isPlaying()) {
                m7894f(cVar);
                m7902c(cVar);
            }
        }
    }

    /* renamed from: b */
    public final void m7908b(Uri uri) {
        C15149k.m377b(uri, "dataSourceUri");
        C11982c cVar = (C11982c) f26721c.m7893a().get(uri);
        if (cVar != null) {
            MediaPlayer c = cVar.m7656c();
            if (c != null) {
                c.release();
            }
            cVar.m7664a((MediaPlayer) null);
            cVar.m7657b(false);
            cVar.m7655c(false);
            cVar.m7659a(false);
            PausableChronometer b = cVar.m7658b();
            if (b != null) {
                b.m26955b();
            }
            AudioPlaybackProgressBar g = cVar.m7651g();
            if (g != null) {
                g.m27404b();
            }
        }
    }

    /* renamed from: b */
    public final void m7906b(C11982c cVar) {
        AbstractC11991d a;
        if (cVar != null && (a = cVar.m7665a()) != null) {
            a.mo7624c(cVar);
        }
    }

    /* renamed from: c */
    public final void m7904c(Uri uri) {
        C15149k.m377b(uri, "dataSourceUri");
        C11982c cVar = (C11982c) f26721c.m7893a().get(uri);
        if (cVar != null) {
            cVar.m7660a((AbstractC11991d) null);
        }
    }

    /* renamed from: c */
    public final void m7902c(C11982c cVar) {
        AbstractC11991d a;
        if (cVar != null && (a = cVar.m7665a()) != null) {
            a.mo7625b(cVar);
        }
    }

    /* renamed from: d */
    public final void m7898d(C11982c cVar) {
        AbstractC11991d a;
        if (cVar != null && (a = cVar.m7665a()) != null) {
            a.mo7626a(cVar.m7650h());
        }
    }

    /* renamed from: d */
    public final boolean m7900d(Uri uri) {
        C15149k.m377b(uri, "dataSourceUri");
        if (!f26721c.m7893a().containsKey(uri)) {
            return false;
        }
        C11982c cVar = (C11982c) f26721c.m7893a().get(uri);
        if (cVar == null) {
            return true;
        }
        C15149k.m383a((Object) cVar, "this");
        m7915a(uri, cVar);
        return true;
    }

    /* renamed from: e */
    public final void m7896e(C11982c cVar) {
        if (cVar != null) {
            if (cVar.m7653e()) {
                MediaPlayer c = cVar.m7656c();
                if (c != null) {
                    c.seekTo(0);
                }
                PausableChronometer b = cVar.m7658b();
                if (b != null) {
                    b.m26954c();
                }
                AudioPlaybackProgressBar g = cVar.m7651g();
                if (g != null) {
                    g.m27402c();
                }
                cVar.m7659a(false);
            } else {
                PausableChronometer b2 = cVar.m7658b();
                if (b2 != null) {
                    b2.m26953d();
                }
                AudioPlaybackProgressBar g2 = cVar.m7651g();
                if (g2 != null) {
                    g2.m27400d();
                }
            }
            MediaPlayer c2 = cVar.m7656c();
            if (c2 != null) {
                c2.start();
            }
        }
    }

    /* renamed from: f */
    public final void m7894f(C11982c cVar) {
        MediaPlayer c = cVar.m7656c();
        if (c != null) {
            c.pause();
        }
        PausableChronometer b = cVar.m7658b();
        if (b != null) {
            b.m26956a();
        }
        AudioPlaybackProgressBar g = cVar.m7651g();
        if (g != null) {
            g.m27408a();
        }
    }
}
