package androidx.media2.session;

import p1727n3.p1803i0.AbstractC26407e;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionToken.class */
public final class SessionToken implements AbstractC26407e {

    /* renamed from: a */
    public SessionTokenImpl f1244a;

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionToken$SessionTokenImpl.class */
    public interface SessionTokenImpl extends AbstractC26407e {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SessionToken)) {
            return false;
        }
        return this.f1244a.equals(((SessionToken) obj).f1244a);
    }

    public int hashCode() {
        return this.f1244a.hashCode();
    }

    public String toString() {
        return this.f1244a.toString();
    }
}
