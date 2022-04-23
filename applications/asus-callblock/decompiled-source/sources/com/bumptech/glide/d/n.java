package com.bumptech.glide.d;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.support.v4.app.Fragment;
import com.bumptech.glide.h;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/n.class */
public final class n extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    public h f3401a;

    /* renamed from: b  reason: collision with root package name */
    public final com.bumptech.glide.d.a f3402b;
    public final l c;
    private final HashSet<n> d;
    private n e;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/n$a.class */
    private final class a implements l {
        private a() {
        }

        /* synthetic */ a(n nVar, byte b2) {
            this();
        }
    }

    public n() {
        this(new com.bumptech.glide.d.a());
    }

    @SuppressLint({"ValidFragment"})
    private n(com.bumptech.glide.d.a aVar) {
        this.c = new a(this, (byte) 0);
        this.d = new HashSet<>();
        this.f3402b = aVar;
    }

    @Override // android.support.v4.app.Fragment
    public final void onAttach(Activity activity) {
        super.onAttach(activity);
        this.e = k.a().a(getActivity().getSupportFragmentManager());
        if (this.e != this) {
            this.e.d.add(this);
        }
    }

    @Override // android.support.v4.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f3402b.c();
    }

    @Override // android.support.v4.app.Fragment
    public final void onDetach() {
        super.onDetach();
        if (this.e != null) {
            this.e.d.remove(this);
            this.e = null;
        }
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public final void onLowMemory() {
        super.onLowMemory();
        if (this.f3401a != null) {
            this.f3401a.a();
        }
    }

    @Override // android.support.v4.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f3402b.a();
    }

    @Override // android.support.v4.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f3402b.b();
    }
}
