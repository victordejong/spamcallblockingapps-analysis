package com.inmobi.ads;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeRecyclerViewAdapter.class */
public class NativeRecyclerViewAdapter extends RecyclerView.AbstractC0500g<C8028a> implements AbstractC8137ax {

    /* renamed from: a */
    public static final String f31381a = "NativeRecyclerViewAdapter";

    /* renamed from: b */
    public final C8109ao f31382b;

    /* renamed from: c */
    public C8122au f31383c;

    /* renamed from: e */
    public boolean f31385e = false;

    /* renamed from: d */
    public SparseArray<WeakReference<View>> f31384d = new SparseArray<>();

    /* renamed from: com.inmobi.ads.NativeRecyclerViewAdapter$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeRecyclerViewAdapter$a.class */
    public final class C8028a extends RecyclerView.AbstractC0495b0 {

        /* renamed from: b */
        public ViewGroup f31387b;

        public C8028a(View view) {
            super(view);
            this.f31387b = (ViewGroup) view;
        }
    }

    public NativeRecyclerViewAdapter(C8109ao aoVar, C8122au auVar) {
        this.f31382b = aoVar;
        this.f31383c = auVar;
    }

    public ViewGroup buildScrollableView(int i, ViewGroup viewGroup, C8105am amVar) {
        ViewGroup a = this.f31383c.m6377a(viewGroup, amVar);
        this.f31383c.m6371b(a, amVar);
        a.setLayoutParams(C8154bf.m6295a(amVar, viewGroup));
        return a;
    }

    @Override // com.inmobi.ads.AbstractC8137ax
    public void destroy() {
        this.f31385e = true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0500g
    public int getItemCount() {
        return this.f31382b.m6417b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
        if (r0 == 0) goto L_0x002e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [android.view.View] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(com.inmobi.ads.NativeRecyclerViewAdapter.C8028a r7, int r8) {
        /*
            r6 = this;
            r0 = r6
            com.inmobi.ads.ao r0 = r0.f31382b
            r1 = r8
            com.inmobi.ads.am r0 = r0.m6436a(r1)
            r9 = r0
            r0 = r6
            android.util.SparseArray<java.lang.ref.WeakReference<android.view.View>> r0 = r0.f31384d
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x002e
            r0 = r10
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            r11 = r0
            r0 = r11
            r10 = r0
            r0 = r11
            if (r0 != 0) goto L_0x003a
        L_0x002e:
            r0 = r6
            r1 = r8
            r2 = r7
            android.view.ViewGroup r2 = com.inmobi.ads.NativeRecyclerViewAdapter.C8028a.m6673a(r2)
            r3 = r9
            android.view.ViewGroup r0 = r0.buildScrollableView(r1, r2, r3)
            r10 = r0
        L_0x003a:
            r0 = r10
            if (r0 == 0) goto L_0x006f
            r0 = r8
            r1 = r6
            int r1 = r1.getItemCount()
            r2 = 1
            int r1 = r1 - r2
            if (r0 == r1) goto L_0x0055
            r0 = r7
            android.view.ViewGroup r0 = com.inmobi.ads.NativeRecyclerViewAdapter.C8028a.m6673a(r0)
            r1 = 0
            r2 = 0
            r3 = 16
            r4 = 0
            r0.setPadding(r1, r2, r3, r4)
        L_0x0055:
            r0 = r7
            android.view.ViewGroup r0 = com.inmobi.ads.NativeRecyclerViewAdapter.C8028a.m6673a(r0)
            r1 = r10
            r0.addView(r1)
            r0 = r6
            android.util.SparseArray<java.lang.ref.WeakReference<android.view.View>> r0 = r0.f31384d
            r1 = r8
            java.lang.ref.WeakReference r2 = new java.lang.ref.WeakReference
            r3 = r2
            r4 = r10
            r3.<init>(r4)
            r0.put(r1, r2)
        L_0x006f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.NativeRecyclerViewAdapter.onBindViewHolder(com.inmobi.ads.NativeRecyclerViewAdapter$a, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0500g
    public C8028a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C8028a(new FrameLayout(viewGroup.getContext()));
    }

    public void onViewRecycled(C8028a aVar) {
        aVar.f31387b.removeAllViews();
        super.onViewRecycled((NativeRecyclerViewAdapter) aVar);
    }
}
