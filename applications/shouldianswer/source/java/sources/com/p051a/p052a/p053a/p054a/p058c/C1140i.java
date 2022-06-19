package com.p051a.p052a.p053a.p054a.p058c;

import android.graphics.Rect;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
import com.p051a.p052a.p053a.p054a.p059d.C1155a;
/* renamed from: com.a.a.a.a.c.i */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/c/i.class */
public class C1140i {

    /* renamed from: a */
    public final int f3595a;

    /* renamed from: b */
    public final int f3596b;

    /* renamed from: c */
    public final long f3597c;

    /* renamed from: d */
    public final int f3598d;

    /* renamed from: e */
    public final int f3599e;

    /* renamed from: f */
    public final int f3600f;

    /* renamed from: g */
    public final int f3601g;

    /* renamed from: h */
    public final Rect f3602h;

    /* renamed from: i */
    public final int f3603i;

    public C1140i(RecyclerView recyclerView, RecyclerView.AbstractC0977w abstractC0977w, int i, int i2) {
        this.f3595a = abstractC0977w.itemView.getWidth();
        this.f3596b = abstractC0977w.itemView.getHeight();
        this.f3597c = abstractC0977w.getItemId();
        this.f3598d = abstractC0977w.itemView.getLeft();
        this.f3599e = abstractC0977w.itemView.getTop();
        this.f3600f = i - this.f3598d;
        this.f3601g = i2 - this.f3599e;
        this.f3602h = new Rect();
        C1155a.m3958a(abstractC0977w.itemView, this.f3602h);
        this.f3603i = C1155a.m3951a(abstractC0977w);
    }

    private C1140i(C1140i c1140i, RecyclerView.AbstractC0977w abstractC0977w) {
        this.f3597c = c1140i.f3597c;
        this.f3595a = abstractC0977w.itemView.getWidth();
        this.f3596b = abstractC0977w.itemView.getHeight();
        this.f3602h = new Rect(c1140i.f3602h);
        this.f3603i = C1155a.m3951a(abstractC0977w);
        this.f3598d = c1140i.f3598d;
        this.f3599e = c1140i.f3599e;
        float f = c1140i.f3595a;
        float f2 = c1140i.f3596b;
        int i = this.f3595a;
        float f3 = i * 0.5f;
        float f4 = this.f3596b * 0.5f;
        float f5 = f3 + (c1140i.f3600f - (f * 0.5f));
        float f6 = (c1140i.f3601g - (f2 * 0.5f)) + f4;
        if (f5 >= FlexItem.FLEX_GROW_DEFAULT && f5 < i) {
            f3 = f5;
        }
        this.f3600f = (int) f3;
        this.f3601g = (int) ((f6 < FlexItem.FLEX_GROW_DEFAULT || f6 >= ((float) this.f3596b)) ? f4 : f6);
    }

    /* renamed from: a */
    public static C1140i m4066a(C1140i c1140i, RecyclerView.AbstractC0977w abstractC0977w) {
        return new C1140i(c1140i, abstractC0977w);
    }
}
