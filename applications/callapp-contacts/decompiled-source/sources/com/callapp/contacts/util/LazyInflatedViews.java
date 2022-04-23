package com.callapp.contacts.util;

import android.util.SparseArray;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/LazyInflatedViews.class */
public class LazyInflatedViews {

    /* renamed from: a  reason: collision with root package name */
    private SparseArray<LazyView> f15891a = new SparseArray<>();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/LazyInflatedViews$LazyView.class */
    class LazyView {

        /* renamed from: a  reason: collision with root package name */
        View f15892a;

        /* renamed from: b  reason: collision with root package name */
        Object f15893b;

        private LazyView() {
        }
    }

    public final View a(View view, int i) {
        LazyView lazyView = this.f15891a.get(i);
        if (lazyView == null) {
            return null;
        }
        if (lazyView.f15892a == null) {
            lazyView.f15892a = ViewUtils.b(view.findViewById(i));
            if (lazyView.f15893b != null) {
                lazyView.f15892a.setTag(lazyView.f15893b);
            }
        }
        return lazyView.f15892a;
    }

    public final void a(int i) {
        this.f15891a.put(i, new LazyView());
    }

    public boolean isViewInflated(int i) {
        LazyView lazyView = this.f15891a.get(i);
        return (lazyView == null || lazyView.f15892a == null) ? false : true;
    }

    public void setLazyTag(int i, Object obj) {
        LazyView lazyView = this.f15891a.get(i);
        if (lazyView != null) {
            lazyView.f15893b = obj;
            if (lazyView.f15892a != null) {
                lazyView.f15892a.setTag(obj);
            }
        }
    }
}
