package androidx.media2.session;

import android.content.ComponentName;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.core.e.a;
import androidx.media2.session.SessionToken;
import androidx.versionedparcelable.CustomVersionedParcelable;
import androidx.versionedparcelable.c;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplLegacy.class */
final class SessionTokenImplLegacy extends CustomVersionedParcelable implements SessionToken.SessionTokenImpl {

    /* renamed from: a  reason: collision with root package name */
    Bundle f4560a;

    /* renamed from: b  reason: collision with root package name */
    int f4561b;

    /* renamed from: c  reason: collision with root package name */
    int f4562c;

    /* renamed from: d  reason: collision with root package name */
    ComponentName f4563d;
    String e;
    Bundle f;
    private MediaSessionCompat.Token g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionTokenImplLegacy() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionTokenImplLegacy(ComponentName componentName, int i) {
        Objects.requireNonNull(componentName, "serviceComponent shouldn't be null");
        this.g = null;
        this.f4561b = i;
        this.f4562c = 101;
        this.e = componentName.getPackageName();
        this.f4563d = componentName;
        this.f = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionTokenImplLegacy(MediaSessionCompat.Token token, String str, int i, Bundle bundle) {
        Objects.requireNonNull(token, "token shouldn't be null");
        Objects.requireNonNull(str, "packageName shouldn't be null");
        if (!TextUtils.isEmpty(str)) {
            this.g = token;
            this.f4561b = i;
            this.e = str;
            this.f4563d = null;
            this.f4562c = 100;
            this.f = bundle;
            return;
        }
        throw new IllegalArgumentException("packageName shouldn't be empty");
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public final void a(boolean z) {
        MediaSessionCompat.Token token = this.g;
        if (token != null) {
            synchronized (token) {
                c session2Token = this.g.getSession2Token();
                this.g.setSession2Token(null);
                this.f4560a = this.g.toBundle();
                this.g.setSession2Token(session2Token);
            }
            return;
        }
        this.f4560a = null;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final boolean a() {
        return true;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final int b() {
        return this.f4561b;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final String c() {
        return this.e;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final String d() {
        ComponentName componentName = this.f4563d;
        if (componentName == null) {
            return null;
        }
        return componentName.getClassName();
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public final void e() {
        this.g = MediaSessionCompat.Token.fromBundle(this.f4560a);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SessionTokenImplLegacy)) {
            return false;
        }
        SessionTokenImplLegacy sessionTokenImplLegacy = (SessionTokenImplLegacy) obj;
        int i = this.f4562c;
        if (i != sessionTokenImplLegacy.f4562c) {
            return false;
        }
        if (i == 100) {
            return a.a(this.g, sessionTokenImplLegacy.g);
        }
        if (i != 101) {
            return false;
        }
        return a.a(this.f4563d, sessionTokenImplLegacy.f4563d);
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final ComponentName f() {
        return this.f4563d;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final int g() {
        return this.f4562c != 101 ? 0 : 2;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final Bundle h() {
        return this.f;
    }

    public final int hashCode() {
        return a.a(Integer.valueOf(this.f4562c), this.f4563d, this.g);
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final Object i() {
        return this.g;
    }

    public final String toString() {
        return "SessionToken {legacyToken=" + this.g + "}";
    }
}
