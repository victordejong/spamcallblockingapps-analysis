package com.callapp.contacts.activity.interfaces;

import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.util.glide.GlideUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener.class */
public class SuperSkinWizardScrollListener extends RecyclerView.m {

    /* renamed from: a  reason: collision with root package name */
    public GlideUtils.GifPlayer f12964a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f12965b;

    /* renamed from: c  reason: collision with root package name */
    private int f12966c;

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void a(RecyclerView recyclerView, int i) {
        super.a(recyclerView, i);
        if (i == 1) {
            this.f12965b = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
        if ((r7 ^ r10) == false) goto L_0x0038;
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
            if (r0 == 0) goto L_0x0059
            r0 = r5
            boolean r0 = r0.f12965b
            if (r0 != 0) goto L_0x0038
            r0 = r5
            int r0 = r0.f12966c
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = r8
            if (r0 < 0) goto L_0x0024
            r0 = 1
            r7 = r0
            goto L_0x0026
        L_0x0024:
            r0 = 0
            r7 = r0
        L_0x0026:
            r0 = r9
            if (r0 >= 0) goto L_0x002e
            goto L_0x0031
        L_0x002e:
            r0 = 0
            r10 = r0
        L_0x0031:
            r0 = r7
            r1 = r10
            r0 = r0 ^ r1
            if (r0 != 0) goto L_0x004f
        L_0x0038:
            r0 = r5
            com.callapp.contacts.util.glide.GlideUtils$GifPlayer r0 = r0.f12964a
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x004f
            r0 = r6
            boolean r0 = r0.isPlaying()
            if (r0 != 0) goto L_0x004f
            r0 = r5
            com.callapp.contacts.util.glide.GlideUtils$GifPlayer r0 = r0.f12964a
            r0.a()
        L_0x004f:
            r0 = r5
            r1 = 0
            r0.f12965b = r1
            r0 = r5
            r1 = r8
            r0.f12966c = r1
        L_0x0059:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.interfaces.SuperSkinWizardScrollListener.a(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }
}
