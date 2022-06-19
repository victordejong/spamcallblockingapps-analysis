package com.truecaller.videocallerid.p187ui.videoplayer.playing;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: com.truecaller.videocallerid.ui.videoplayer.playing.PlayingBehaviour */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour.class */
public abstract class PlayingBehaviour {

    /* renamed from: a */
    public boolean f16088a = true;

    /* renamed from: com.truecaller.videocallerid.ui.videoplayer.playing.PlayingBehaviour$Fallback */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback.class */
    public static final class Fallback {

        /* renamed from: a */
        public final Partly f16089a;

        /* renamed from: b */
        public final LessThanPartly f16090b;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;", "", "<init>", "(Ljava/lang/String;I)V", "WAIT_FOR_BUFFER", "PLAY_PARTLY_ONCE_THEN_BUFFER", "FIRST_FRAME_WITH_LOADER", "DO_NOT_PLAY", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
        /* renamed from: com.truecaller.videocallerid.ui.videoplayer.playing.PlayingBehaviour$Fallback$LessThanPartly */
        /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly.class */
        public enum LessThanPartly {
            WAIT_FOR_BUFFER,
            PLAY_PARTLY_ONCE_THEN_BUFFER,
            FIRST_FRAME_WITH_LOADER,
            DO_NOT_PLAY
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;", "", "<init>", "(Ljava/lang/String;I)V", "WAIT_FOR_BUFFER", "LOOP_PARTLY", "FIRST_FRAME", "FIRST_FRAME_WITH_LOADER", "DO_NOT_PLAY", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
        /* renamed from: com.truecaller.videocallerid.ui.videoplayer.playing.PlayingBehaviour$Fallback$Partly */
        /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly.class */
        public enum Partly {
            WAIT_FOR_BUFFER,
            LOOP_PARTLY,
            FIRST_FRAME,
            FIRST_FRAME_WITH_LOADER,
            DO_NOT_PLAY
        }

        public Fallback(Partly partly, LessThanPartly lessThanPartly) {
            l.e(partly, "partly");
            l.e(lessThanPartly, "lessThanPartly");
            this.f16089a = partly;
            this.f16090b = lessThanPartly;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof Fallback)) {
                    return false;
                }
                Fallback fallback = (Fallback) obj;
                return l.a(this.f16089a, fallback.f16089a) && l.a(this.f16090b, fallback.f16090b);
            }
            return true;
        }

        public int hashCode() {
            Partly partly = this.f16089a;
            int i = 0;
            int hashCode = partly != null ? partly.hashCode() : 0;
            LessThanPartly lessThanPartly = this.f16090b;
            if (lessThanPartly != null) {
                i = lessThanPartly.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Fallback(partly=");
            m8728C.append(this.f16089a);
            m8728C.append(", lessThanPartly=");
            m8728C.append(this.f16090b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: com.truecaller.videocallerid.ui.videoplayer.playing.PlayingBehaviour$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a.class */
    public static final class C4745a extends PlayingBehaviour {

        /* renamed from: b */
        public final Fallback f16091b = C4748d.f16095b;

        /* renamed from: c */
        public final float f16092c;

        public C4745a(float f) {
            super(null);
            this.f16092c = f;
            C4748d c4748d = C4748d.f16096c;
        }

        @Override // com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour
        /* renamed from: a */
        public Fallback mo34437a() {
            return this.f16091b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C4745a) && Float.compare(this.f16092c, ((C4745a) obj).f16092c) == 0;
            }
            return true;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f16092c);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Custom(playOnDownloadPercentage=");
            m8728C.append(this.f16092c);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: com.truecaller.videocallerid.ui.videoplayer.playing.PlayingBehaviour$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$b.class */
    public static final class C4746b extends PlayingBehaviour {

        /* renamed from: b */
        public final Fallback f16093b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4746b(Fallback fallback) {
            super(null);
            l.e(fallback, "fallback");
            this.f16093b = fallback;
        }

        @Override // com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour
        /* renamed from: a */
        public Fallback mo34437a() {
            return this.f16093b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C4746b) && l.a(this.f16093b, ((C4746b) obj).f16093b);
            }
            return true;
        }

        public int hashCode() {
            Fallback fallback = this.f16093b;
            return fallback != null ? fallback.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("FirstFrame(fallback=");
            m8728C.append(this.f16093b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: com.truecaller.videocallerid.ui.videoplayer.playing.PlayingBehaviour$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c.class */
    public static final class C4747c extends PlayingBehaviour {

        /* renamed from: b */
        public final Fallback f16094b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4747c(Fallback fallback) {
            super(null);
            l.e(fallback, "fallback");
            this.f16094b = fallback;
        }

        @Override // com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour
        /* renamed from: a */
        public Fallback mo34437a() {
            return this.f16094b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C4747c) && l.a(this.f16094b, ((C4747c) obj).f16094b);
            }
            return true;
        }

        public int hashCode() {
            Fallback fallback = this.f16094b;
            return fallback != null ? fallback.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Loop(fallback=");
            m8728C.append(this.f16094b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: com.truecaller.videocallerid.ui.videoplayer.playing.PlayingBehaviour$d */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$d.class */
    public static final class C4748d extends PlayingBehaviour {

        /* renamed from: c */
        public static final C4748d f16096c = new C4748d();

        /* renamed from: b */
        public static final Fallback f16095b = new Fallback(Fallback.Partly.DO_NOT_PLAY, Fallback.LessThanPartly.DO_NOT_PLAY);

        public C4748d() {
            super(null);
        }

        @Override // com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour
        /* renamed from: a */
        public Fallback mo34437a() {
            return f16095b;
        }
    }

    public PlayingBehaviour() {
    }

    public PlayingBehaviour(f fVar) {
    }

    /* renamed from: a */
    public abstract Fallback mo34437a();
}
