package com.uservoice.uservoicesdk.g;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/g/b.class */
public abstract class b extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    protected static final String f4682a = b.class.getName();

    /* renamed from: b  reason: collision with root package name */
    Activity f4683b;
    Toast c;
    private boolean d;
    private View e;

    public final <E extends View> E a(int i) {
        return (E) this.e.findViewById(i);
    }

    protected abstract void a();

    protected abstract void d();

    protected abstract void e();

    protected abstract int f();

    @Override // android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        this.f4683b = activity;
        super.onAttach(activity);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (f() == 0) {
            throw new IllegalArgumentException("You must overwrite setupLayout() method.");
        }
        setHasOptionsMenu(true);
        if (bundle != null && !this.d) {
            this.d = true;
        }
        this.e = layoutInflater.inflate(f(), viewGroup, false);
        a();
        d();
        e();
        this.e.setFocusableInTouchMode(true);
        this.e.requestFocus();
        return this.e;
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f4683b = null;
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }
}
