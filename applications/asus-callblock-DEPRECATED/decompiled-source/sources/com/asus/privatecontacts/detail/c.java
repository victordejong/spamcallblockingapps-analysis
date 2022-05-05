package com.asus.privatecontacts.detail;

import android.app.Activity;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AbsListView;
import com.android.contacts.detail.ContactDetailFragment;
import com.asus.privatecontacts.a.b;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/detail/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    static final String f3025a = c.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    b f3026b;
    ContactDetailFragment c;
    b d;
    private int e;
    private final LayoutInflater f;
    private Activity g;
    private final FragmentManager h;
    private View i;
    private final View j;
    private final ContactDetailFragment.Listener k;

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/detail/c$a.class */
    private final class a implements AbsListView.OnScrollListener {
        private a() {
        }

        /* synthetic */ a(c cVar, byte b2) {
            this();
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
            if (i != 0) {
                if (c.this.f3026b != null) {
                    c.this.f3026b.a(-c.this.e);
                }
            } else if (absListView.getChildAt(i) != null) {
                int max = Math.max((int) absListView.getChildAt(i).getY(), -c.this.e);
                if (c.this.f3026b != null) {
                    c.this.f3026b.a(max);
                }
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    public c(Activity activity, Bundle bundle, FragmentManager fragmentManager, View view, ContactDetailFragment.Listener listener) {
        boolean z;
        this.e = 0;
        if (fragmentManager == null) {
            throw new IllegalStateException("Cannot initialize a ContactDetailLayoutController without a non-null FragmentManager");
        }
        this.f = (LayoutInflater) activity.getSystemService("layout_inflater");
        this.g = activity;
        this.h = fragmentManager;
        this.j = view;
        this.i = view.findViewById(2131296614);
        if (this.i != null) {
            this.f3026b = new b(this.g, this.i);
        }
        this.k = listener;
        this.e = this.g.getResources().getDimensionPixelSize(2131099997);
        this.c = (ContactDetailFragment) this.h.findFragmentByTag("detail_fragment");
        if (this.c == null) {
            this.c = new ContactDetailFragment(true);
            z = false;
        } else {
            z = true;
        }
        this.c.setListener(this.k);
        this.c.setVerticalScrollListener(new a(this, (byte) 0));
        if (!z) {
            FragmentTransaction beginTransaction = this.h.beginTransaction();
            beginTransaction.replace(2131296665, this.c, "detail_fragment");
            beginTransaction.commitAllowingStateLoss();
        }
        if (bundle != null && this.d != null && this.c != null) {
            this.c.setPrivateData(this.d);
        }
    }
}
