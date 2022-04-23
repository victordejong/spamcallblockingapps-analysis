package com.google.firebase.installations.remote;

import p131c.p161d.p282e.p335s.p337p.C5916b;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/TokenResult.class */
public abstract class TokenResult {

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/TokenResult$ResponseCode.class */
    public enum ResponseCode {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    /* renamed from: com.google.firebase.installations.remote.TokenResult$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/TokenResult$a.class */
    public static abstract class AbstractC7847a {
        /* renamed from: a */
        public abstract AbstractC7847a mo7275a(long j);

        /* renamed from: a */
        public abstract AbstractC7847a mo7274a(ResponseCode responseCode);

        /* renamed from: a */
        public abstract AbstractC7847a mo7273a(String str);

        /* renamed from: a */
        public abstract TokenResult mo7276a();
    }

    /* renamed from: d */
    public static AbstractC7847a m7277d() {
        C5916b.C5918b bVar = new C5916b.C5918b();
        bVar.mo7275a(0L);
        return bVar;
    }

    /* renamed from: a */
    public abstract ResponseCode mo7280a();

    /* renamed from: b */
    public abstract String mo7279b();

    /* renamed from: c */
    public abstract long mo7278c();
}
