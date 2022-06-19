package androidx.media2.session;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import androidx.media2.common.SessionPlayer;
import androidx.media2.session.MediaSession;
import androidx.versionedparcelable.AbstractC2922c;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService.class */
public abstract class MediaLibraryService extends MediaSessionService {

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$LibraryParams.class */
    public static final class LibraryParams implements AbstractC2922c {

        /* renamed from: a */
        Bundle f8720a;

        /* renamed from: b */
        int f8721b;

        /* renamed from: c */
        int f8722c;

        /* renamed from: d */
        int f8723d;

        /* renamed from: androidx.media2.session.MediaLibraryService$LibraryParams$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$LibraryParams$a.class */
        public static final class C2203a {

            /* renamed from: a */
            boolean f8724a;

            /* renamed from: b */
            boolean f8725b;

            /* renamed from: c */
            boolean f8726c;

            /* renamed from: d */
            Bundle f8727d;

            /* renamed from: a */
            public final LibraryParams m41138a() {
                return new LibraryParams(this.f8727d, this.f8724a, this.f8725b, this.f8726c);
            }
        }

        public LibraryParams() {
        }

        private LibraryParams(Bundle bundle, int i, int i2, int i3) {
            this.f8720a = bundle;
            this.f8721b = i;
            this.f8722c = i2;
            this.f8723d = i3;
        }

        LibraryParams(Bundle bundle, boolean z, boolean z2, boolean z3) {
            this(bundle, z ? 1 : 0, z2 ? 1 : 0, z3 ? 1 : 0);
        }

        /* renamed from: a */
        public static boolean m41139a(int i) {
            return i != 0;
        }
    }

    /* renamed from: androidx.media2.session.MediaLibraryService$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$a.class */
    public static final class C2204a extends MediaSession {

        /* renamed from: androidx.media2.session.MediaLibraryService$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$a$a.class */
        public static final class C2205a extends MediaSession.AbstractC2211d {
            /* renamed from: a */
            public static LibraryResult m41137a() {
                return new LibraryResult(-6);
            }

            /* renamed from: b */
            public static LibraryResult m41136b() {
                return new LibraryResult(-6);
            }

            /* renamed from: c */
            public static LibraryResult m41135c() {
                return new LibraryResult(-6);
            }
        }

        /* renamed from: androidx.media2.session.MediaLibraryService$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$a$b.class */
        interface AbstractC2206b extends MediaSession.AbstractC2210c {

            /* renamed from: androidx.media2.session.MediaLibraryService$a$b$_CC */
            /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$a$b$_CC.class */
            public final /* synthetic */ class _CC {
            }

            /* renamed from: a */
            int mo40990a(MediaSession.C2209b c2209b);

            /* renamed from: a */
            int mo40989a(MediaSession.C2209b c2209b, String str);

            /* renamed from: f */
            LibraryResult mo40987f(int i);

            /* renamed from: g */
            LibraryResult mo40986g(int i);

            /* renamed from: u */
            LibraryResult mo40985u();

            /* renamed from: v */
            LibraryResult mo40984v();

            /* renamed from: w */
            C2204a mo40983w();

            /* renamed from: x */
            C2205a mo40982x();

            @Override // androidx.media2.session.MediaSession.AbstractC2210c
            /* renamed from: y */
            /* synthetic */ MediaSession.AbstractC2211d mo40925y();

            @Override // androidx.media2.session.MediaSession.AbstractC2210c
            /* renamed from: z */
            /* synthetic */ MediaSession mo40924z();
        }

        C2204a(Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, MediaSession.AbstractC2211d abstractC2211d, Bundle bundle) {
            super(context, str, sessionPlayer, pendingIntent, executor, abstractC2211d, bundle);
        }

        @Override // androidx.media2.session.MediaSession
        /* renamed from: a */
        final /* synthetic */ MediaSession.AbstractC2210c mo41134a(Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, MediaSession.AbstractC2211d abstractC2211d, Bundle bundle) {
            return new C2337m(this, context, str, sessionPlayer, pendingIntent, executor, abstractC2211d, bundle);
        }
    }
}
