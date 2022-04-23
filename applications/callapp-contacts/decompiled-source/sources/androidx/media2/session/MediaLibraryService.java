package androidx.media2.session;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import androidx.media2.common.SessionPlayer;
import androidx.media2.session.MediaSession;
import androidx.versionedparcelable.c;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService.class */
public abstract class MediaLibraryService extends MediaSessionService {

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$LibraryParams.class */
    public static final class LibraryParams implements c {

        /* renamed from: a  reason: collision with root package name */
        Bundle f4515a;

        /* renamed from: b  reason: collision with root package name */
        int f4516b;

        /* renamed from: c  reason: collision with root package name */
        int f4517c;

        /* renamed from: d  reason: collision with root package name */
        int f4518d;

        /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$LibraryParams$a.class */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            boolean f4519a;

            /* renamed from: b  reason: collision with root package name */
            boolean f4520b;

            /* renamed from: c  reason: collision with root package name */
            boolean f4521c;

            /* renamed from: d  reason: collision with root package name */
            Bundle f4522d;

            public final LibraryParams a() {
                return new LibraryParams(this.f4522d, this.f4519a, this.f4520b, this.f4521c);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public LibraryParams() {
        }

        private LibraryParams(Bundle bundle, int i, int i2, int i3) {
            this.f4515a = bundle;
            this.f4516b = i;
            this.f4517c = i2;
            this.f4518d = i3;
        }

        LibraryParams(Bundle bundle, boolean z, boolean z2, boolean z3) {
            this(bundle, z ? 1 : 0, z2 ? 1 : 0, z3 ? 1 : 0);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean a(int i) {
            return i != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$a.class */
    public static final class a extends MediaSession {

        /* renamed from: androidx.media2.session.MediaLibraryService$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$a$a.class */
        public static final class C0097a extends MediaSession.d {
            public static LibraryResult a() {
                return new LibraryResult(-6);
            }

            public static LibraryResult b() {
                return new LibraryResult(-6);
            }

            public static LibraryResult c() {
                return new LibraryResult(-6);
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$a$b.class */
        interface b extends MediaSession.c {

            /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$a$b$_CC.class */
            public final /* synthetic */ class _CC {
            }

            int a(MediaSession.b bVar);

            int a(MediaSession.b bVar, String str);

            LibraryResult f(int i);

            LibraryResult g(int i);

            LibraryResult u();

            LibraryResult v();

            a w();

            C0097a x();

            @Override // androidx.media2.session.MediaSession.c
            /* synthetic */ MediaSession.d y();

            @Override // androidx.media2.session.MediaSession.c
            /* synthetic */ MediaSession z();
        }

        a(Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, MediaSession.d dVar, Bundle bundle) {
            super(context, str, sessionPlayer, pendingIntent, executor, dVar, bundle);
        }

        @Override // androidx.media2.session.MediaSession
        final /* synthetic */ MediaSession.c a(Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, MediaSession.d dVar, Bundle bundle) {
            return new m(this, context, str, sessionPlayer, pendingIntent, executor, dVar, bundle);
        }
    }
}
