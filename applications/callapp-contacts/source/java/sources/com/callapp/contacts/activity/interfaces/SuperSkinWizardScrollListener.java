package com.callapp.contacts.activity.interfaces;

import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.util.glide.GlideUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener.class */
public class SuperSkinWizardScrollListener extends RecyclerView.AbstractC2645m {

    /* renamed from: a */
    public GlideUtils.GifPlayer f23138a;

    /* renamed from: b */
    private boolean f23139b;

    /* renamed from: c */
    private int f23140c;

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
    /* renamed from: a */
    public final void mo10833a(RecyclerView recyclerView, int i) {
        super.mo10833a(recyclerView, i);
        if (i != 1) {
            return;
        }
        this.f23139b = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
        if ((r7 ^ r10) == false) goto L15;
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
            if (r0 == 0) goto L59
            r0 = r5
            boolean r0 = r0.f23139b
            if (r0 != 0) goto L38
            r0 = r5
            int r0 = r0.f23140c
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = r8
            if (r0 < 0) goto L24
            r0 = 1
            r7 = r0
            goto L26
        L24:
            r0 = 0
            r7 = r0
        L26:
            r0 = r9
            if (r0 >= 0) goto L2e
            goto L31
        L2e:
            r0 = 0
            r10 = r0
        L31:
            r0 = r7
            r1 = r10
            r0 = r0 ^ r1
            if (r0 != 0) goto L4f
        L38:
            r0 = r5
            com.callapp.contacts.util.glide.GlideUtils$GifPlayer r0 = r0.f23138a
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L4f
            r0 = r6
            boolean r0 = r0.isPlaying()
            if (r0 != 0) goto L4f
            r0 = r5
            com.callapp.contacts.util.glide.GlideUtils$GifPlayer r0 = r0.f23138a
            r0.m27033a()
        L4f:
            r0 = r5
            r1 = 0
            r0.f23139b = r1
            r0 = r5
            r1 = r8
            r0.f23140c = r1
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.interfaces.SuperSkinWizardScrollListener.mo10832a(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }
}
