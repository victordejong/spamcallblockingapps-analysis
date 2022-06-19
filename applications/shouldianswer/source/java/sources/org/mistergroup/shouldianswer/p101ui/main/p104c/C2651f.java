package org.mistergroup.shouldianswer.p101ui.main.p104c;

import android.widget.ToggleButton;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.components.stickyheaders.C2334a;
import org.mistergroup.shouldianswer.p097a.AbstractC2116ae;
import org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j;
/* renamed from: org.mistergroup.shouldianswer.ui.main.c.f */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/f.class */
public final class C2651f extends C2334a.C2339e {

    /* renamed from: a */
    private C2672j.EnumC2674a f7788a;

    /* renamed from: b */
    private final AbstractC2116ae f7789b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2651f(org.mistergroup.shouldianswer.p097a.AbstractC2116ae r6, org.mistergroup.shouldianswer.p101ui.main.p104c.C2665h r7, org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j.EnumC2674a r8) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "binding"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r7
            java.lang.String r1 = "adapter"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r8
            java.lang.String r1 = "sourceType"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r6
            android.view.View r0 = r0.m5863d()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "binding.root"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r5
            r1 = r7
            r0.<init>(r1)
            r0 = r5
            r1 = r6
            r0.f7789b = r1
            r0 = r5
            org.mistergroup.shouldianswer.ui.main.c.j$a r1 = org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j.EnumC2674a.ALL
            r0.f7788a = r1
            r0 = r5
            r1 = r8
            r0.f7788a = r1
            r0 = r5
            r0.m635c()
            r0 = r5
            org.mistergroup.shouldianswer.a.ae r0 = r0.f7789b
            android.widget.ToggleButton r0 = r0.f5506c
            org.mistergroup.shouldianswer.ui.main.c.f$1 r1 = new org.mistergroup.shouldianswer.ui.main.c.f$1
            r2 = r1
            r3 = r5
            r2.<init>()
            android.view.View$OnClickListener r1 = (android.view.View.OnClickListener) r1
            r0.setOnClickListener(r1)
            r0 = r5
            org.mistergroup.shouldianswer.a.ae r0 = r0.f7789b
            android.widget.ToggleButton r0 = r0.f5508e
            org.mistergroup.shouldianswer.ui.main.c.f$2 r1 = new org.mistergroup.shouldianswer.ui.main.c.f$2
            r2 = r1
            r3 = r5
            r2.<init>()
            android.view.View$OnClickListener r1 = (android.view.View.OnClickListener) r1
            r0.setOnClickListener(r1)
            r0 = r5
            org.mistergroup.shouldianswer.a.ae r0 = r0.f7789b
            android.widget.ToggleButton r0 = r0.f5507d
            org.mistergroup.shouldianswer.ui.main.c.f$3 r1 = new org.mistergroup.shouldianswer.ui.main.c.f$3
            r2 = r1
            r3 = r5
            r2.<init>()
            android.view.View$OnClickListener r1 = (android.view.View.OnClickListener) r1
            r0.setOnClickListener(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.p104c.C2651f.<init>(org.mistergroup.shouldianswer.a.ae, org.mistergroup.shouldianswer.ui.main.c.h, org.mistergroup.shouldianswer.ui.main.c.j$a):void");
    }

    /* renamed from: c */
    public final void m635c() {
        ToggleButton toggleButton = this.f7789b.f5506c;
        C1694h.m3122a((Object) toggleButton, "binding.butFilterShowAll");
        toggleButton.setChecked(this.f7788a == C2672j.EnumC2674a.ALL);
        ToggleButton toggleButton2 = this.f7789b.f5508e;
        C1694h.m3122a((Object) toggleButton2, "binding.butFilterShowUnfamiliar");
        toggleButton2.setChecked(this.f7788a == C2672j.EnumC2674a.UNFAMILIAR);
        ToggleButton toggleButton3 = this.f7789b.f5507d;
        C1694h.m3122a((Object) toggleButton3, "binding.butFilterShowBlocked");
        toggleButton3.setChecked(this.f7788a == C2672j.EnumC2674a.BLOCKED);
    }
}
