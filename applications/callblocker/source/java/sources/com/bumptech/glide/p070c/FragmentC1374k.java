package com.bumptech.glide.p070c;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.C1459i;
import com.bumptech.glide.ComponentCallbacks2C1361c;
import java.util.HashSet;
import java.util.Set;
@Deprecated
/* renamed from: com.bumptech.glide.c.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/k.class */
public class FragmentC1374k extends Fragment {

    /* renamed from: a */
    private final C1362a f4554a;

    /* renamed from: b */
    private final AbstractC1379m f4555b;

    /* renamed from: c */
    private final Set<FragmentC1374k> f4556c;

    /* renamed from: d */
    private C1459i f4557d;

    /* renamed from: e */
    private FragmentC1374k f4558e;

    /* renamed from: f */
    private Fragment f4559f;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.c.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/k$a.class */
    public class C1375a implements AbstractC1379m {
        C1375a() {
            FragmentC1374k.this = r4;
        }

        public String toString() {
            return super.toString() + "{fragment=" + FragmentC1374k.this + "}";
        }
    }

    public FragmentC1374k() {
        this(new C1362a());
    }

    @SuppressLint({"ValidFragment"})
    FragmentC1374k(C1362a c1362a) {
        this.f4555b = new C1375a();
        this.f4556c = new HashSet();
        this.f4554a = c1362a;
    }

    /* renamed from: a */
    private void m17280a(Activity activity) {
        m17272e();
        this.f4558e = ComponentCallbacks2C1361c.m17308a((Context) activity).m17293g().m17264b(activity);
        if (!equals(this.f4558e)) {
            this.f4558e.m17278a(this);
        }
    }

    /* renamed from: a */
    private void m17278a(FragmentC1374k fragmentC1374k) {
        this.f4556c.add(fragmentC1374k);
    }

    /* renamed from: b */
    private void m17275b(FragmentC1374k fragmentC1374k) {
        this.f4556c.remove(fragmentC1374k);
    }

    @TargetApi(17)
    /* renamed from: d */
    private Fragment m17273d() {
        Fragment parentFragment = Build.VERSION.SDK_INT >= 17 ? getParentFragment() : null;
        if (parentFragment == null) {
            parentFragment = this.f4559f;
        }
        return parentFragment;
    }

    /* renamed from: e */
    private void m17272e() {
        if (this.f4558e != null) {
            this.f4558e.m17275b(this);
            this.f4558e = null;
        }
    }

    /* renamed from: a */
    public C1362a m17281a() {
        return this.f4554a;
    }

    /* renamed from: a */
    public void m17279a(Fragment fragment) {
        this.f4559f = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        m17280a(fragment.getActivity());
    }

    /* renamed from: a */
    public void m17277a(C1459i c1459i) {
        this.f4557d = c1459i;
    }

    /* renamed from: b */
    public C1459i m17276b() {
        return this.f4557d;
    }

    /* renamed from: c */
    public AbstractC1379m m17274c() {
        return this.f4555b;
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            m17280a(activity);
        } catch (IllegalStateException e) {
            if (!Log.isLoggable("RMFragment", 5)) {
                return;
            }
            Log.w("RMFragment", "Unable to register fragment with root", e);
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f4554a.m17288c();
        m17272e();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        m17272e();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f4554a.m17290a();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f4554a.m17289b();
    }

    @Override // android.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m17273d() + "}";
    }
}
