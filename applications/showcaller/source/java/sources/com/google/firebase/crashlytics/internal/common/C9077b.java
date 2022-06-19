package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.internal.common.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/b.class */
public final class C9077b extends AbstractC9115n {

    /* renamed from: a */
    private final AbstractC9004v f39275a;

    /* renamed from: b */
    private final String f39276b;

    public C9077b(AbstractC9004v abstractC9004v, String str) {
        Objects.requireNonNull(abstractC9004v, "Null report");
        this.f39275a = abstractC9004v;
        Objects.requireNonNull(str, "Null sessionId");
        this.f39276b = str;
    }

    @Override // com.google.firebase.crashlytics.internal.common.AbstractC9115n
    /* renamed from: b */
    public AbstractC9004v mo1801b() {
        return this.f39275a;
    }

    @Override // com.google.firebase.crashlytics.internal.common.AbstractC9115n
    /* renamed from: c */
    public String mo1800c() {
        return this.f39276b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9115n)) {
            return false;
        }
        AbstractC9115n abstractC9115n = (AbstractC9115n) obj;
        if (!this.f39275a.equals(abstractC9115n.mo1801b()) || !this.f39276b.equals(abstractC9115n.mo1800c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f39275a.hashCode() ^ 1000003) * 1000003) ^ this.f39276b.hashCode();
    }

    public String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.f39275a + ", sessionId=" + this.f39276b + "}";
    }
}
