package com.criteo.publisher.model;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/r.class */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private final List<s> f17626a;

    /* renamed from: b  reason: collision with root package name */
    private final int f17627b;

    /* renamed from: c  reason: collision with root package name */
    private final Boolean f17628c;

    public r(List<s> list, int i, Boolean bool) {
        this.f17626a = list;
        this.f17627b = i;
        this.f17628c = bool;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.criteo.publisher.model.r a(org.json.JSONObject r6) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.model.r.a(org.json.JSONObject):com.criteo.publisher.model.r");
    }

    public s a(String str) {
        for (s sVar : this.f17626a) {
            if (str.equals(sVar.f())) {
                return sVar;
            }
        }
        return null;
    }

    public Boolean a() {
        return this.f17628c;
    }

    public List<s> b() {
        return this.f17626a;
    }

    public int c() {
        return this.f17627b;
    }

    public String toString() {
        return "CdbResponse{slots=" + this.f17626a + ", timeToNextCall=" + this.f17627b + ", consentGiven = " + this.f17628c + '}';
    }
}
