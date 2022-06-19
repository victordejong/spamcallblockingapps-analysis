package androidx.media2.session;

import android.content.Context;
import android.os.Bundle;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.util.Log;
import androidx.media2.session.MediaController;
import java.util.concurrent.Executor;
/* renamed from: androidx.media2.session.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/e.class */
public final class C2229e extends MediaController {

    /* renamed from: a */
    static final boolean f8812a = Log.isLoggable("MediaBrowser", 3);

    /* renamed from: androidx.media2.session.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/e$a.class */
    public static final class C2231a extends MediaController.AbstractC2200a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.session.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/e$b.class */
    public interface AbstractC2232b {
    }

    /* renamed from: androidx.media2.session.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/e$c.class */
    interface AbstractC2233c extends MediaController.AbstractC2202c {
    }

    C2229e(Context context, MediaSessionCompat.Token token, Bundle bundle, Executor executor, C2231a c2231a) {
        super(context, token, bundle, executor, c2231a);
    }

    C2229e(Context context, SessionToken sessionToken, Bundle bundle, Executor executor, C2231a c2231a) {
        super(context, sessionToken, bundle, executor, c2231a);
    }

    @Override // androidx.media2.session.MediaController
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ MediaController.AbstractC2202c mo41081a() {
        return (AbstractC2233c) super.mo41081a();
    }

    @Override // androidx.media2.session.MediaController
    /* renamed from: a */
    final /* synthetic */ MediaController.AbstractC2202c mo41080a(Context context, SessionToken sessionToken, Bundle bundle) {
        return sessionToken.m41108d() ? new C2237g(context, this, sessionToken) : new C2234f(context, this, sessionToken, bundle);
    }

    /* renamed from: a */
    public final void m41079a(final AbstractC2232b abstractC2232b) {
        if (this.f8707e == null || this.f8708f == null) {
            return;
        }
        this.f8708f.execute(new Runnable() { // from class: androidx.media2.session.e.1
            @Override // java.lang.Runnable
            public final void run() {
            }
        });
    }
}
