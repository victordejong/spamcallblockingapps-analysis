package com.callapp.contacts.activity.contact.details.presenter.bottombar;

import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener.class */
public class BottomBarScrollListener extends RecyclerView.AbstractC2645m {

    /* renamed from: a */
    private boolean f22191a;

    /* renamed from: b */
    private int f22192b;

    /* renamed from: c */
    private Listener f22193c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener$Listener.class */
    public interface Listener {
        void animateBottomActionBar(boolean z, boolean z2);
    }

    public BottomBarScrollListener(Listener listener) {
        this.f22193c = listener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
    /* renamed from: a */
    public final void mo10833a(RecyclerView recyclerView, int i) {
        super.mo10833a(recyclerView, i);
        if (i != 1) {
            return;
        }
        this.f22191a = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
        if (((r0 < 0) ^ (r8 >= 0)) == false) goto L16;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo10832a(androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            super.mo10832a(r1, r2, r3)
            r0 = r8
            if (r0 == 0) goto L5d
            r0 = r5
            boolean r0 = r0.f22191a
            if (r0 != 0) goto L38
            r0 = r5
            int r0 = r0.f22192b
            r9 = r0
            r0 = r8
            if (r0 < 0) goto L21
            r0 = 1
            r7 = r0
            goto L23
        L21:
            r0 = 0
            r7 = r0
        L23:
            r0 = r9
            if (r0 >= 0) goto L2e
            r0 = 1
            r9 = r0
            goto L31
        L2e:
            r0 = 0
            r9 = r0
        L31:
            r0 = r9
            r1 = r7
            r0 = r0 ^ r1
            if (r0 != 0) goto L53
        L38:
            r0 = r5
            com.callapp.contacts.activity.contact.details.presenter.bottombar.BottomBarScrollListener$Listener r0 = r0.f22193c
            r6 = r0
            r0 = r8
            if (r0 >= 0) goto L47
            r0 = 1
            r10 = r0
            goto L4a
        L47:
            r0 = 0
            r10 = r0
        L4a:
            r0 = r6
            r1 = r10
            r2 = 1
            r0.animateBottomActionBar(r1, r2)
        L53:
            r0 = r5
            r1 = 0
            r0.f22191a = r1
            r0 = r5
            r1 = r8
            r0.f22192b = r1
        L5d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.details.presenter.bottombar.BottomBarScrollListener.mo10832a(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }
}
