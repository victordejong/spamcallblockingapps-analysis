package androidx.media2.session;

import android.content.ComponentName;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.core.p036e.C0827a;
import androidx.media2.session.SessionToken;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplBase.class */
final class SessionTokenImplBase implements SessionToken.SessionTokenImpl {

    /* renamed from: a */
    int f8777a;

    /* renamed from: b */
    int f8778b;

    /* renamed from: c */
    String f8779c;

    /* renamed from: d */
    String f8780d;

    /* renamed from: e */
    IBinder f8781e;

    /* renamed from: f */
    ComponentName f8782f;

    /* renamed from: g */
    Bundle f8783g;

    public SessionTokenImplBase() {
    }

    public SessionTokenImplBase(int i, int i2, String str, AbstractC2223c abstractC2223c, Bundle bundle) {
        this.f8777a = i;
        this.f8778b = i2;
        this.f8779c = str;
        this.f8780d = null;
        this.f8782f = null;
        this.f8781e = abstractC2223c.asBinder();
        this.f8783g = bundle;
    }

    public SessionTokenImplBase(ComponentName componentName, int i, int i2) {
        Objects.requireNonNull(componentName, "serviceComponent shouldn't be null");
        this.f8782f = componentName;
        this.f8779c = componentName.getPackageName();
        this.f8780d = componentName.getClassName();
        this.f8777a = i;
        this.f8778b = i2;
        this.f8781e = null;
        this.f8783g = null;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: a */
    public final boolean mo41106a() {
        return false;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: b */
    public final int mo41105b() {
        return this.f8777a;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: c */
    public final String mo41104c() {
        return this.f8779c;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: d */
    public final String mo41103d() {
        return this.f8780d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SessionTokenImplBase)) {
            return false;
        }
        SessionTokenImplBase sessionTokenImplBase = (SessionTokenImplBase) obj;
        return this.f8777a == sessionTokenImplBase.f8777a && TextUtils.equals(this.f8779c, sessionTokenImplBase.f8779c) && TextUtils.equals(this.f8780d, sessionTokenImplBase.f8780d) && this.f8778b == sessionTokenImplBase.f8778b && C0827a.m44414a(this.f8781e, sessionTokenImplBase.f8781e);
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: f */
    public final ComponentName mo41102f() {
        return this.f8782f;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: g */
    public final int mo41101g() {
        return this.f8778b;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: h */
    public final Bundle mo41100h() {
        return this.f8783g;
    }

    public final int hashCode() {
        return C0827a.m44413a(Integer.valueOf(this.f8778b), Integer.valueOf(this.f8777a), this.f8779c, this.f8780d);
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    /* renamed from: i */
    public final Object mo41099i() {
        return this.f8781e;
    }

    public final String toString() {
        return "SessionToken {pkg=" + this.f8779c + " type=" + this.f8778b + " service=" + this.f8780d + " IMediaSession=" + this.f8781e + " extras=" + this.f8783g + "}";
    }
}
