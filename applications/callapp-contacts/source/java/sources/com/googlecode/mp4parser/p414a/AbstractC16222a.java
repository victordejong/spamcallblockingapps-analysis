package com.googlecode.mp4parser.p414a;

import com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b;
import com.p102b.p103a.p104a.C3466ac;
import com.p102b.p103a.p104a.C3485d;
import com.p102b.p103a.p104a.C3504u;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.googlecode.mp4parser.a.a */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/a.class */
public abstract class AbstractC16222a implements AbstractC16244g {

    /* renamed from: a */
    String f57237a;

    /* renamed from: b */
    List<C16232c> f57238b = new ArrayList();

    /* renamed from: c */
    Map<AbstractC16270b, long[]> f57239c = new HashMap();

    public AbstractC16222a(String str) {
        this.f57237a = str;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: a */
    public List<C3485d.C3486a> mo7574a() {
        return null;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: b */
    public long[] mo7573b() {
        return null;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: c */
    public List<C3504u.C3505a> mo7572c() {
        return null;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: d */
    public C3466ac mo7571d() {
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: e */
    public final long mo7570e() {
        char c = 0;
        for (long j : mo7565k()) {
            c += j;
        }
        return c;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: f */
    public String mo7569f() {
        return this.f57237a;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: g */
    public final List<C16232c> mo7568g() {
        return this.f57238b;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: h */
    public final Map<AbstractC16270b, long[]> mo7567h() {
        return this.f57239c;
    }
}
