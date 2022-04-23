package androidx.media2.session;

import android.content.ComponentName;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.core.e.a;
import androidx.media2.session.SessionToken;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplBase.class */
final class SessionTokenImplBase implements SessionToken.SessionTokenImpl {

    /* renamed from: a  reason: collision with root package name */
    int f4556a;

    /* renamed from: b  reason: collision with root package name */
    int f4557b;

    /* renamed from: c  reason: collision with root package name */
    String f4558c;

    /* renamed from: d  reason: collision with root package name */
    String f4559d;
    IBinder e;
    ComponentName f;
    Bundle g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionTokenImplBase() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionTokenImplBase(int i, int i2, String str, c cVar, Bundle bundle) {
        this.f4556a = i;
        this.f4557b = i2;
        this.f4558c = str;
        this.f4559d = null;
        this.f = null;
        this.e = cVar.asBinder();
        this.g = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionTokenImplBase(ComponentName componentName, int i, int i2) {
        Objects.requireNonNull(componentName, "serviceComponent shouldn't be null");
        this.f = componentName;
        this.f4558c = componentName.getPackageName();
        this.f4559d = componentName.getClassName();
        this.f4556a = i;
        this.f4557b = i2;
        this.e = null;
        this.g = null;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final boolean a() {
        return false;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final int b() {
        return this.f4556a;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final String c() {
        return this.f4558c;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final String d() {
        return this.f4559d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SessionTokenImplBase)) {
            return false;
        }
        SessionTokenImplBase sessionTokenImplBase = (SessionTokenImplBase) obj;
        return this.f4556a == sessionTokenImplBase.f4556a && TextUtils.equals(this.f4558c, sessionTokenImplBase.f4558c) && TextUtils.equals(this.f4559d, sessionTokenImplBase.f4559d) && this.f4557b == sessionTokenImplBase.f4557b && a.a(this.e, sessionTokenImplBase.e);
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final ComponentName f() {
        return this.f;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final int g() {
        return this.f4557b;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final Bundle h() {
        return this.g;
    }

    public final int hashCode() {
        return a.a(Integer.valueOf(this.f4557b), Integer.valueOf(this.f4556a), this.f4558c, this.f4559d);
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public final Object i() {
        return this.e;
    }

    public final String toString() {
        return "SessionToken {pkg=" + this.f4558c + " type=" + this.f4557b + " service=" + this.f4559d + " IMediaSession=" + this.e + " extras=" + this.g + "}";
    }
}
