package com.criteo.publisher.model;

import java.util.List;
/* renamed from: com.criteo.publisher.model.r */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/r.class */
public class C8502r {

    /* renamed from: a */
    private final List<C8503s> f30340a;

    /* renamed from: b */
    private final int f30341b;

    /* renamed from: c */
    private final Boolean f30342c;

    public C8502r(List<C8503s> list, int i, Boolean bool) {
        this.f30340a = list;
        this.f30341b = i;
        this.f30342c = bool;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.criteo.publisher.model.C8502r m25557a(org.json.JSONObject r6) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.model.C8502r.m25557a(org.json.JSONObject):com.criteo.publisher.model.r");
    }

    /* renamed from: a */
    public C8503s m25558a(String str) {
        for (C8503s c8503s : this.f30340a) {
            if (str.equals(c8503s.m25545f())) {
                return c8503s;
            }
        }
        return null;
    }

    /* renamed from: a */
    public Boolean m25559a() {
        return this.f30342c;
    }

    /* renamed from: b */
    public List<C8503s> m25556b() {
        return this.f30340a;
    }

    /* renamed from: c */
    public int m25555c() {
        return this.f30341b;
    }

    public String toString() {
        return "CdbResponse{slots=" + this.f30340a + ", timeToNextCall=" + this.f30341b + ", consentGiven = " + this.f30342c + '}';
    }
}
