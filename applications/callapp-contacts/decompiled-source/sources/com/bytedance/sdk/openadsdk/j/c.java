package com.bytedance.sdk.openadsdk.j;

import android.graphics.Bitmap;
import com.bytedance.sdk.adnet.b.d;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.openadsdk.core.f;
import com.bytedance.sdk.openadsdk.i.a;
import com.bytedance.sdk.openadsdk.i.a.b;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/c.class */
public class c extends b {

    /* renamed from: a  reason: collision with root package name */
    private boolean f9651a;

    /* renamed from: b  reason: collision with root package name */
    private b f9652b;

    public c(boolean z) {
        this.f9651a = z;
        if (z) {
            this.f9652b = b.b();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.j.b, com.bytedance.sdk.adnet.b.d.e
    public void a() {
    }

    public void a(int i) {
        b bVar;
        if (this.f9651a && (bVar = this.f9652b) != null) {
            bVar.a(i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.j.b, com.bytedance.sdk.adnet.b.d.e
    public void a(d.c cVar, boolean z) {
        if (this.f9651a && this.f9652b != null) {
            if (cVar == null || cVar.a() == null) {
                this.f9652b.b(202).f(f.a(202));
                a.a().e(this.f9652b);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.j.b, com.bytedance.sdk.adnet.core.m.a
    public void a(m<Bitmap> mVar) {
    }

    public void a(String str) {
        b bVar;
        if (this.f9651a && (bVar = this.f9652b) != null) {
            bVar.c(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.j.b, com.bytedance.sdk.adnet.b.d.e
    public void b() {
    }

    @Override // com.bytedance.sdk.openadsdk.j.b, com.bytedance.sdk.adnet.core.m.a
    public void b(m<Bitmap> mVar) {
        b bVar;
        if (this.f9651a && (bVar = this.f9652b) != null) {
            bVar.b(201).f(f.a(201));
            a.a().e(this.f9652b);
        }
    }

    public void b(String str) {
        b bVar;
        if (this.f9651a && (bVar = this.f9652b) != null) {
            bVar.e(str);
        }
    }

    public void c(String str) {
        b bVar;
        if (this.f9651a && (bVar = this.f9652b) != null) {
            bVar.d(str);
        }
    }

    public void d(String str) {
        b bVar;
        if (this.f9651a && (bVar = this.f9652b) != null) {
            bVar.g(str);
        }
    }
}
