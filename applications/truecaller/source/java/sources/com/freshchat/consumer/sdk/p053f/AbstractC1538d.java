package com.freshchat.consumer.sdk.p053f;

import androidx.recyclerview.widget.RecyclerView;
/* renamed from: com.freshchat.consumer.sdk.f.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/f/d.class */
public abstract class AbstractC1538d extends RecyclerView.AbstractC0338t {
    /* renamed from: iD */
    public abstract void mo40579iD();

    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onScrolled(androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            super.onScrolled(r1, r2, r3)
            r0 = r6
            androidx.recyclerview.widget.RecyclerView$o r0 = r0.getLayoutManager()
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L11
            return
        L11:
            r0 = r6
            int r0 = r0.getChildCount()
            r8 = r0
            r0 = r6
            int r0 = r0.getItemCount()
            r9 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            boolean r0 = r0 instanceof androidx.recyclerview.widget.GridLayoutManager
            if (r0 == 0) goto L32
            r0 = r6
            androidx.recyclerview.widget.GridLayoutManager r0 = (androidx.recyclerview.widget.GridLayoutManager) r0
            r6 = r0
        L2a:
            r0 = r6
            int r0 = r0.findFirstVisibleItemPosition()
            r7 = r0
            goto L41
        L32:
            r0 = r6
            boolean r0 = r0 instanceof androidx.recyclerview.widget.LinearLayoutManager
            if (r0 == 0) goto L41
            r0 = r6
            androidx.recyclerview.widget.LinearLayoutManager r0 = (androidx.recyclerview.widget.LinearLayoutManager) r0
            r6 = r0
            goto L2a
        L41:
            r0 = r8
            r1 = r7
            int r0 = r0 + r1
            r1 = r9
            if (r0 < r1) goto L4d
            r0 = r5
            r0.mo40579iD()
        L4d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p053f.AbstractC1538d.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }
}
