package com.bytedance.sdk.a.b.a.c;

import com.bytedance.sdk.a.a.e;
import com.bytedance.sdk.a.b.ab;
import com.bytedance.sdk.a.b.u;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/h.class */
public final class h extends ab {

    /* renamed from: a  reason: collision with root package name */
    private final String f7895a;

    /* renamed from: b  reason: collision with root package name */
    private final long f7896b;

    /* renamed from: c  reason: collision with root package name */
    private final e f7897c;

    public h(String str, long j, e eVar) {
        this.f7895a = str;
        this.f7896b = j;
        this.f7897c = eVar;
    }

    @Override // com.bytedance.sdk.a.b.ab
    public final u a() {
        String str = this.f7895a;
        if (str != null) {
            return u.a(str);
        }
        return null;
    }

    @Override // com.bytedance.sdk.a.b.ab
    public final long b() {
        return this.f7896b;
    }

    @Override // com.bytedance.sdk.a.b.ab
    public final e d() {
        return this.f7897c;
    }
}
