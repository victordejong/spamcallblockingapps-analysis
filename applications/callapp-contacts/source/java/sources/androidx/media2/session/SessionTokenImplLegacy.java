package androidx.media2.session;

import android.content.ComponentName;
import android.os.Bundle;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.core.p036e.C0827a;
import androidx.media2.session.SessionToken;
import androidx.versionedparcelable.AbstractC2922c;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplLegacy.class */
final class SessionTokenImplLegacy extends CustomVersionedParcelable implements SessionToken.SessionTokenImpl {

    /* renamed from: a */
    Bundle f8784a;

    /* renamed from: b */
    int f8785b;

    /* renamed from: c */
    int f8786c;

    /* renamed from: d */
    ComponentName f8787d;

    /* renamed from: e */
    String f8788e;

    /* renamed from: f */
    Bundle f8789f;

    /* renamed from: g */
    private MediaSessionCompat.Token f8790g;

    public SessionTokenImplLegacy() {
    }

    public SessionTokenImplLegacy(ComponentName componentName, int i) {
        Objects.requireNonNull(componentName, "serviceComponent shouldn't be null");
        this.f8790g = null;
        this.f8785b = i;
        this.f8786c = 101;
        this.f8788e = componentName.getPackageName();
        this.f8787d = componentName;
        this.f8789f = null;
    }

    public SessionTokenImplLegacy(MediaSessionCompat.Token token, String str, int i, Bundle bundle) {
        Objects.requireNonNull(token, "token shouldn't be null");
        Objects.requireNonNull(str, "packageName shouldn't be null");
        if (!TextUtils.isEmpty(str)) {
            this.f8790g = token;
            this.f8785b = i;
            this.f8788e = str;
            this.f8787d = null;
            this.f8786c = 100;
            this.f8789f = bundle;
            return;
        }
        throw new IllegalArgumentException("packageName shouldn't be empty");
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public final void mo39667a(boolean z) {
        MediaSessionCompat.Token token = this.f8790g;
        if (token == null) {
            this.f8784a = null;
            return;
        }
        synchronized (token) {
            AbstractC2922c session2Token = this.f8790g.getSession2Token();
            this.f8790g.setSession2Token(null);
            this.f8784a = this.f8790g.toBundle();
            this.f8790g.setSession2Token(session2Token);
        }
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: a */
    public final boolean mo41106a() {
        return true;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: b */
    public final int mo41105b() {
        return this.f8785b;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: c */
    public final String mo41104c() {
        return this.f8788e;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: d */
    public final String mo41103d() {
        ComponentName componentName = this.f8787d;
        if (componentName == null) {
            return null;
        }
        return componentName.getClassName();
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: e */
    public final void mo39666e() {
        this.f8790g = MediaSessionCompat.Token.fromBundle(this.f8784a);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SessionTokenImplLegacy)) {
            return false;
        }
        SessionTokenImplLegacy sessionTokenImplLegacy = (SessionTokenImplLegacy) obj;
        int i = this.f8786c;
        if (i != sessionTokenImplLegacy.f8786c) {
            return false;
        }
        if (i == 100) {
            return C0827a.m44414a(this.f8790g, sessionTokenImplLegacy.f8790g);
        }
        if (i == 101) {
            return C0827a.m44414a(this.f8787d, sessionTokenImplLegacy.f8787d);
        }
        return false;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: f */
    public final ComponentName mo41102f() {
        return this.f8787d;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: g */
    public final int mo41101g() {
        return this.f8786c != 101 ? 0 : 2;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: h */
    public final Bundle mo41100h() {
        return this.f8789f;
    }

    public final int hashCode() {
        return C0827a.m44413a(Integer.valueOf(this.f8786c), this.f8787d, this.f8790g);
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: i */
    public final Object mo41099i() {
        return this.f8790g;
    }

    public final String toString() {
        return "SessionToken {legacyToken=" + this.f8790g + "}";
    }
}
