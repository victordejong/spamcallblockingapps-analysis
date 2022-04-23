package com.callapp.contacts.activity.contact.details.presenter.bottombar;

import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener.class */
public class BottomBarScrollListener extends RecyclerView.m {

    /* renamed from: a  reason: collision with root package name */
    private boolean f12369a;

    /* renamed from: b  reason: collision with root package name */
    private int f12370b;

    /* renamed from: c  reason: collision with root package name */
    private Listener f12371c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener$Listener.class */
    public interface Listener {
        void animateBottomActionBar(boolean z, boolean z2);
    }

    public BottomBarScrollListener(Listener listener) {
        this.f12371c = listener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void a(RecyclerView recyclerView, int i) {
        super.a(recyclerView, i);
        if (i == 1) {
            this.f12369a = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
        if (((r0 < 0) ^ (r8 >= 0)) == false) goto L_0x0038;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            super.a(r1, r2, r3)
            r0 = r8
            if (r0 == 0) goto L_0x005d
            r0 = r5
            boolean r0 = r0.f12369a
            if (r0 != 0) goto L_0x0038
            r0 = r5
            int r0 = r0.f12370b
            r9 = r0
            r0 = r8
            if (r0 < 0) goto L_0x0021
            r0 = 1
            r7 = r0
            goto L_0x0023
        L_0x0021:
            r0 = 0
            r7 = r0
        L_0x0023:
            r0 = r9
            if (r0 >= 0) goto L_0x002e
            r0 = 1
            r9 = r0
            goto L_0x0031
        L_0x002e:
            r0 = 0
            r9 = r0
        L_0x0031:
            r0 = r9
            r1 = r7
            r0 = r0 ^ r1
            if (r0 != 0) goto L_0x0053
        L_0x0038:
            r0 = r5
            com.callapp.contacts.activity.contact.details.presenter.bottombar.BottomBarScrollListener$Listener r0 = r0.f12371c
            r6 = r0
            r0 = r8
            if (r0 >= 0) goto L_0x0047
            r0 = 1
            r10 = r0
            goto L_0x004a
        L_0x0047:
            r0 = 0
            r10 = r0
        L_0x004a:
            r0 = r6
            r1 = r10
            r2 = 1
            r0.animateBottomActionBar(r1, r2)
        L_0x0053:
            r0 = r5
            r1 = 0
            r0.f12369a = r1
            r0 = r5
            r1 = r8
            r0.f12370b = r1
        L_0x005d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.details.presenter.bottombar.BottomBarScrollListener.a(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }
}
