package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView$b0;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentActivityFragment$p */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p.class */
public enum RecentActivityFragment$p {
    ITEM(new a()),
    HEADER(new b()),
    FOOTER(new c());
    

    /* renamed from: a */
    public AbstractC0397d f3098a;

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentActivityFragment$p$d */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$d.class */
    public interface AbstractC0397d {
        /* renamed from: a */
        RecyclerView$b0 m4780a(RecentActivityFragment recentActivityFragment, ViewGroup viewGroup);
    }

    RecentActivityFragment$p(AbstractC0397d abstractC0397d) {
        this.f3098a = abstractC0397d;
    }

    /* renamed from: b */
    public final RecyclerView$b0 m4781b(RecentActivityFragment recentActivityFragment, ViewGroup viewGroup) {
        return this.f3098a.m4780a(recentActivityFragment, viewGroup);
    }
}
