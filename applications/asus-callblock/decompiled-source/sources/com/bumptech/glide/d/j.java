package com.bumptech.glide.d;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import com.bumptech.glide.e;
import com.bumptech.glide.h;
import java.util.HashSet;
@TargetApi(11)
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/j.class */
public final class j extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    public final com.bumptech.glide.d.a f3394a;

    /* renamed from: b  reason: collision with root package name */
    public final l f3395b;
    public h c;
    private final HashSet<j> d;
    private j e;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/j$a.class */
    private final class a implements l {
        private a() {
        }

        /* synthetic */ a(j jVar, byte b2) {
            this();
        }
    }

    public j() {
        this(new com.bumptech.glide.d.a());
    }

    @SuppressLint({"ValidFragment"})
    private j(com.bumptech.glide.d.a aVar) {
        this.f3395b = new a(this, (byte) 0);
        this.d = new HashSet<>();
        this.f3394a = aVar;
    }

    @Override // android.app.Fragment
    public final void onAttach(Activity activity) {
        super.onAttach(activity);
        this.e = k.a().a(getActivity().getFragmentManager());
        if (this.e != this) {
            this.e.d.add(this);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f3394a.c();
    }

    @Override // android.app.Fragment
    public final void onDetach() {
        super.onDetach();
        if (this.e != null) {
            this.e.d.remove(this);
            this.e = null;
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public final void onLowMemory() {
        if (this.c != null) {
            this.c.a();
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f3394a.a();
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f3394a.b();
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        if (this.c != null) {
            e eVar = this.c.d;
            eVar.f3405b.a(i);
            eVar.c.a(i);
        }
    }
}
