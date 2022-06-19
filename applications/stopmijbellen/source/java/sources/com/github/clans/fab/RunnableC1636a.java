package com.github.clans.fab;

import com.github.clans.fab.FloatingActionMenu;
/* renamed from: com.github.clans.fab.a */
/* loaded from: classes-dex2jar.jar:com/github/clans/fab/a.class */
public class RunnableC1636a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ FloatingActionMenu f6145a;

    public RunnableC1636a(FloatingActionMenu floatingActionMenu) {
        this.f6145a = floatingActionMenu;
    }

    @Override // java.lang.Runnable
    public void run() {
        FloatingActionMenu floatingActionMenu = this.f6145a;
        floatingActionMenu.f6124j = true;
        FloatingActionMenu.AbstractC1635c abstractC1635c = floatingActionMenu.f6108a0;
        if (abstractC1635c != null) {
            abstractC1635c.mo150d(true);
        }
    }
}
