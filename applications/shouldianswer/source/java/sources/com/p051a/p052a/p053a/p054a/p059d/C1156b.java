package com.p051a.p052a.p053a.p054a.p059d;

import androidx.recyclerview.widget.RecyclerView;
import com.p051a.p052a.p053a.p054a.p055a.AbstractC1108g;
import com.p051a.p052a.p053a.p054a.p055a.AbstractC1109h;
/* renamed from: com.a.a.a.a.d.b */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/d/b.class */
public class C1156b {
    /* renamed from: a */
    public static void m3938a(RecyclerView.AbstractC0945a abstractC0945a, RecyclerView.AbstractC0977w abstractC0977w, int i) {
        if (abstractC0945a instanceof AbstractC1109h) {
            ((AbstractC1109h) abstractC0945a).mo4105c(abstractC0977w, i);
        } else {
            abstractC0945a.onViewRecycled(abstractC0977w);
        }
    }

    /* renamed from: b */
    public static boolean m3937b(RecyclerView.AbstractC0945a abstractC0945a, RecyclerView.AbstractC0977w abstractC0977w, int i) {
        return abstractC0945a instanceof AbstractC1108g ? ((AbstractC1108g) abstractC0945a).mo4240d(abstractC0977w, i) : abstractC0945a.onFailedToRecycleView(abstractC0977w);
    }

    /* renamed from: c */
    public static void m3936c(RecyclerView.AbstractC0945a abstractC0945a, RecyclerView.AbstractC0977w abstractC0977w, int i) {
        if (abstractC0945a instanceof AbstractC1108g) {
            ((AbstractC1108g) abstractC0945a).mo4242a(abstractC0977w, i);
        } else {
            abstractC0945a.onViewAttachedToWindow(abstractC0977w);
        }
    }

    /* renamed from: d */
    public static void m3935d(RecyclerView.AbstractC0945a abstractC0945a, RecyclerView.AbstractC0977w abstractC0977w, int i) {
        if (abstractC0945a instanceof AbstractC1108g) {
            ((AbstractC1108g) abstractC0945a).mo4241b(abstractC0977w, i);
        } else {
            abstractC0945a.onViewDetachedFromWindow(abstractC0977w);
        }
    }
}
