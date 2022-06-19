package com.p051a.p052a.p053a.p054a.p056b.p057a;

import androidx.recyclerview.widget.RecyclerView;
/* renamed from: com.a.a.a.a.b.a.i */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/a/i.class */
public class C1122i extends AbstractC1118e {

    /* renamed from: a */
    public RecyclerView.AbstractC0977w f3520a;

    /* renamed from: b */
    public final int f3521b;

    /* renamed from: c */
    public final int f3522c;

    /* renamed from: d */
    public final int f3523d;

    /* renamed from: e */
    public final int f3524e;

    public C1122i(RecyclerView.AbstractC0977w abstractC0977w, int i, int i2, int i3, int i4) {
        this.f3520a = abstractC0977w;
        this.f3521b = i;
        this.f3522c = i2;
        this.f3523d = i3;
        this.f3524e = i4;
    }

    @Override // com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1118e
    /* renamed from: a */
    public RecyclerView.AbstractC0977w mo4181a() {
        return this.f3520a;
    }

    @Override // com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1118e
    /* renamed from: a */
    public void mo4180a(RecyclerView.AbstractC0977w abstractC0977w) {
        if (this.f3520a == abstractC0977w) {
            this.f3520a = null;
        }
    }

    public String toString() {
        return "MoveAnimationInfo{holder=" + this.f3520a + ", fromX=" + this.f3521b + ", fromY=" + this.f3522c + ", toX=" + this.f3523d + ", toY=" + this.f3524e + '}';
    }
}
