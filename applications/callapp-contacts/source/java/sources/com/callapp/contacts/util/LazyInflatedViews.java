package com.callapp.contacts.util;

import android.util.SparseArray;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/LazyInflatedViews.class */
public class LazyInflatedViews {

    /* renamed from: a */
    private SparseArray<LazyView> f27734a = new SparseArray<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/LazyInflatedViews$LazyView.class */
    public class LazyView {

        /* renamed from: a */
        View f27735a;

        /* renamed from: b */
        Object f27736b;

        private LazyView() {
            LazyInflatedViews.this = r4;
        }
    }

    /* renamed from: a */
    public final View m27490a(View view, int i) {
        LazyView lazyView = this.f27734a.get(i);
        if (lazyView == null) {
            return null;
        }
        if (lazyView.f27735a == null) {
            lazyView.f27735a = ViewUtils.m27302b(view.findViewById(i));
            if (lazyView.f27736b != null) {
                lazyView.f27735a.setTag(lazyView.f27736b);
            }
        }
        return lazyView.f27735a;
    }

    /* renamed from: a */
    public final void m27491a(int i) {
        this.f27734a.put(i, new LazyView());
    }

    public boolean isViewInflated(int i) {
        LazyView lazyView = this.f27734a.get(i);
        return (lazyView == null || lazyView.f27735a == null) ? false : true;
    }

    public void setLazyTag(int i, Object obj) {
        LazyView lazyView = this.f27734a.get(i);
        if (lazyView == null) {
            return;
        }
        lazyView.f27736b = obj;
        if (lazyView.f27735a == null) {
            return;
        }
        lazyView.f27735a.setTag(obj);
    }
}
