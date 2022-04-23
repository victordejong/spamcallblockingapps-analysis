package androidx.media2.session;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import androidx.media2.session.MediaController;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/e.class */
public final class e extends MediaController {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f4584a = Log.isLoggable("MediaBrowser", 3);

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/e$a.class */
    public static final class a extends MediaController.a {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/e$b.class */
    interface b {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/e$c.class */
    interface c extends MediaController.c {
    }

    e(Context context, MediaSessionCompat.Token token, Bundle bundle, Executor executor, a aVar) {
        super(context, token, bundle, executor, aVar);
    }

    e(Context context, SessionToken sessionToken, Bundle bundle, Executor executor, a aVar) {
        super(context, sessionToken, bundle, executor, aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.media2.session.MediaController
    public final /* bridge */ /* synthetic */ MediaController.c a() {
        return (c) super.a();
    }

    @Override // androidx.media2.session.MediaController
    final /* synthetic */ MediaController.c a(Context context, SessionToken sessionToken, Bundle bundle) {
        return sessionToken.d() ? new g(context, this, sessionToken) : new f(context, this, sessionToken, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final b bVar) {
        if (this.e != null && this.f != null) {
            this.f.execute(new Runnable() { // from class: androidx.media2.session.e.1
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }
}
