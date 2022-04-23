package androidx.media2.session;

import p012b.p130z.AbstractC1978c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionToken.class */
public final class SessionToken implements AbstractC1978c {

    /* renamed from: a */
    public AbstractC0432a f2232a;

    /* renamed from: androidx.media2.session.SessionToken$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionToken$a.class */
    public interface AbstractC0432a extends AbstractC1978c {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SessionToken)) {
            return false;
        }
        return this.f2232a.equals(((SessionToken) obj).f2232a);
    }

    public int hashCode() {
        return this.f2232a.hashCode();
    }

    public String toString() {
        return this.f2232a.toString();
    }
}
