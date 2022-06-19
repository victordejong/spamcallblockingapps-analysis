package com.p051a.p052a.p053a.p054a.p056b.p057a;

import androidx.recyclerview.widget.RecyclerView;
/* renamed from: com.a.a.a.a.b.a.c */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/a/c.class */
public class C1116c extends AbstractC1118e {

    /* renamed from: a */
    public RecyclerView.AbstractC0977w f3514a;

    /* renamed from: b */
    public RecyclerView.AbstractC0977w f3515b;

    /* renamed from: c */
    public int f3516c;

    /* renamed from: d */
    public int f3517d;

    /* renamed from: e */
    public int f3518e;

    /* renamed from: f */
    public int f3519f;

    public C1116c(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0977w abstractC0977w2, int i, int i2, int i3, int i4) {
        this.f3515b = abstractC0977w;
        this.f3514a = abstractC0977w2;
        this.f3516c = i;
        this.f3517d = i2;
        this.f3518e = i3;
        this.f3519f = i4;
    }

    @Override // com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1118e
    /* renamed from: a */
    public RecyclerView.AbstractC0977w mo4181a() {
        RecyclerView.AbstractC0977w abstractC0977w = this.f3515b;
        if (abstractC0977w == null) {
            abstractC0977w = this.f3514a;
        }
        return abstractC0977w;
    }

    @Override // com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1118e
    /* renamed from: a */
    public void mo4180a(RecyclerView.AbstractC0977w abstractC0977w) {
        if (this.f3515b == abstractC0977w) {
            this.f3515b = null;
        }
        if (this.f3514a == abstractC0977w) {
            this.f3514a = null;
        }
        if (this.f3515b == null && this.f3514a == null) {
            this.f3516c = 0;
            this.f3517d = 0;
            this.f3518e = 0;
            this.f3519f = 0;
        }
    }

    public String toString() {
        return "ChangeInfo{, oldHolder=" + this.f3515b + ", newHolder=" + this.f3514a + ", fromX=" + this.f3516c + ", fromY=" + this.f3517d + ", toX=" + this.f3518e + ", toY=" + this.f3519f + '}';
    }
}
