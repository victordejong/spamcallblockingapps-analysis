package com.googlecode.mp4parser.a;

import com.b.a.a.ac;
import com.b.a.a.d;
import com.b.a.a.u;
import com.googlecode.mp4parser.b.b.b.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/a.class */
public abstract class a implements g {

    /* renamed from: a  reason: collision with root package name */
    String f33036a;

    /* renamed from: b  reason: collision with root package name */
    List<c> f33037b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    Map<b, long[]> f33038c = new HashMap();

    public a(String str) {
        this.f33036a = str;
    }

    @Override // com.googlecode.mp4parser.a.g
    public List<d.a> a() {
        return null;
    }

    @Override // com.googlecode.mp4parser.a.g
    public long[] b() {
        return null;
    }

    @Override // com.googlecode.mp4parser.a.g
    public List<u.a> c() {
        return null;
    }

    @Override // com.googlecode.mp4parser.a.g
    public ac d() {
        return null;
    }

    @Override // com.googlecode.mp4parser.a.g
    public final long e() {
        long j = 0;
        for (long j2 : k()) {
            j += j2;
        }
        return j;
    }

    @Override // com.googlecode.mp4parser.a.g
    public String f() {
        return this.f33036a;
    }

    @Override // com.googlecode.mp4parser.a.g
    public final List<c> g() {
        return this.f33037b;
    }

    @Override // com.googlecode.mp4parser.a.g
    public final Map<b, long[]> h() {
        return this.f33038c;
    }
}
