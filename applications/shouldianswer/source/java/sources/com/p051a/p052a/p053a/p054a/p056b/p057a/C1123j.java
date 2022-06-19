package com.p051a.p052a.p053a.p054a.p056b.p057a;

import androidx.recyclerview.widget.RecyclerView;
/* renamed from: com.a.a.a.a.b.a.j */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/a/j.class */
public class C1123j extends AbstractC1118e {

    /* renamed from: a */
    public RecyclerView.AbstractC0977w f3525a;

    public C1123j(RecyclerView.AbstractC0977w abstractC0977w) {
        this.f3525a = abstractC0977w;
    }

    @Override // com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1118e
    /* renamed from: a */
    public RecyclerView.AbstractC0977w mo4181a() {
        return this.f3525a;
    }

    @Override // com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1118e
    /* renamed from: a */
    public void mo4180a(RecyclerView.AbstractC0977w abstractC0977w) {
        if (this.f3525a == abstractC0977w) {
            this.f3525a = null;
        }
    }

    public String toString() {
        return "RemoveAnimationInfo{holder=" + this.f3525a + '}';
    }
}
