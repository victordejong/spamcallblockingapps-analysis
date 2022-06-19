package dagger.hilt.android.internal.managers;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import java.util.Objects;
import p1727n3.p1868v.AbstractC27041z;
/* loaded from: classes16-dex2jar.jar:dagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper.class */
public final class ViewComponentManager$FragmentContextWrapper extends ContextWrapper {

    /* renamed from: a */
    public Fragment f16587a;

    /* renamed from: b */
    public LayoutInflater f16588b;

    /* renamed from: c */
    public LayoutInflater f16589c;

    /* renamed from: d */
    public final AbstractC27041z f16590d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewComponentManager$FragmentContextWrapper(Context context, Fragment fragment) {
        super(context);
        Objects.requireNonNull(context);
        1 r0 = new 1(this);
        this.f16590d = r0;
        this.f16588b = null;
        Objects.requireNonNull(fragment);
        this.f16587a = fragment;
        fragment.getLifecycle().mo988a(r0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ViewComponentManager$FragmentContextWrapper(android.view.LayoutInflater r5, androidx.fragment.app.Fragment r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r5
            android.content.Context r0 = r0.getContext()
            r7 = r0
            r0 = r7
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r4
            r1 = r7
            r0.<init>(r1)
            dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper$1 r0 = new dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper$1
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r7 = r0
            r0 = r4
            r1 = r7
            r0.f16590d = r1
            r0 = r4
            r1 = r5
            r0.f16588b = r1
            r0 = r6
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r4
            r1 = r6
            r0.f16587a = r1
            r0 = r6
            n3.v.u r0 = r0.getLifecycle()
            r1 = r7
            r0.mo988a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper.<init>(android.view.LayoutInflater, androidx.fragment.app.Fragment):void");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f16589c == null) {
            if (this.f16588b == null) {
                this.f16588b = (LayoutInflater) getBaseContext().getSystemService("layout_inflater");
            }
            this.f16589c = this.f16588b.cloneInContext(this);
        }
        return this.f16589c;
    }
}
