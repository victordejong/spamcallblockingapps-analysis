package com.bytedance.sdk.openadsdk.p174j;

import android.graphics.Bitmap;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.p141b.C4166d;
import com.bytedance.sdk.openadsdk.core.C4566f;
import com.bytedance.sdk.openadsdk.p171i.C4927a;
import com.bytedance.sdk.openadsdk.p171i.p172a.C4931b;
/* renamed from: com.bytedance.sdk.openadsdk.j.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/c.class */
public class C4957c extends C4956b {

    /* renamed from: a */
    private boolean f18018a;

    /* renamed from: b */
    private C4931b f18019b;

    public C4957c(boolean z) {
        this.f18018a = z;
        if (z) {
            this.f18019b = C4931b.m33530b();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p174j.C4956b, com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4179e
    /* renamed from: a */
    public void mo33424a() {
    }

    /* renamed from: a */
    public void m33455a(int i) {
        C4931b c4931b;
        if (!this.f18018a || (c4931b = this.f18019b) == null) {
            return;
        }
        c4931b.m33533a(i);
    }

    @Override // com.bytedance.sdk.openadsdk.p174j.C4956b, com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4179e
    /* renamed from: a */
    public void mo33423a(C4166d.C4177c c4177c, boolean z) {
        if (!this.f18018a || this.f18019b == null) {
            return;
        }
        if (c4177c != null && c4177c.m36241a() != null) {
            return;
        }
        this.f18019b.m33529b(202).m33520f(C4566f.m35036a(202));
        C4927a.m33549a().m33536e(this.f18019b);
    }

    @Override // com.bytedance.sdk.openadsdk.p174j.C4956b, com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
    /* renamed from: a */
    public void mo33422a(C4218m<Bitmap> c4218m) {
    }

    /* renamed from: a */
    public void m33454a(String str) {
        C4931b c4931b;
        if (!this.f18018a || (c4931b = this.f18019b) == null) {
            return;
        }
        c4931b.m33526c(str);
    }

    @Override // com.bytedance.sdk.openadsdk.p174j.C4956b, com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4179e
    /* renamed from: b */
    public void mo33420b() {
    }

    @Override // com.bytedance.sdk.openadsdk.p174j.C4956b, com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
    /* renamed from: b */
    public void mo33419b(C4218m<Bitmap> c4218m) {
        C4931b c4931b;
        if (!this.f18018a || (c4931b = this.f18019b) == null) {
            return;
        }
        c4931b.m33529b(201).m33520f(C4566f.m35036a(201));
        C4927a.m33549a().m33536e(this.f18019b);
    }

    /* renamed from: b */
    public void m33453b(String str) {
        C4931b c4931b;
        if (!this.f18018a || (c4931b = this.f18019b) == null) {
            return;
        }
        c4931b.m33522e(str);
    }

    /* renamed from: c */
    public void m33452c(String str) {
        C4931b c4931b;
        if (!this.f18018a || (c4931b = this.f18019b) == null) {
            return;
        }
        c4931b.m33524d(str);
    }

    /* renamed from: d */
    public void m33451d(String str) {
        C4931b c4931b;
        if (!this.f18018a || (c4931b = this.f18019b) == null) {
            return;
        }
        c4931b.m33518g(str);
    }
}
