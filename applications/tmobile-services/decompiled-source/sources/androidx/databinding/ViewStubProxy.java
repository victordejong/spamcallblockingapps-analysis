package androidx.databinding;

import android.view.View;
import android.view.ViewStub;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ViewStubProxy.class */
public class ViewStubProxy {

    /* renamed from: a */
    private ViewStub f3575a;

    /* renamed from: b */
    private ViewDataBinding f3576b;

    /* renamed from: c */
    private View f3577c;

    /* renamed from: d */
    private ViewStub.OnInflateListener f3578d;

    /* renamed from: e */
    private ViewDataBinding f3579e;

    /* renamed from: androidx.databinding.ViewStubProxy$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewStubProxy$1.class */
    class ViewStub$OnInflateListenerC02721 implements ViewStub.OnInflateListener {

        /* renamed from: a */
        final /* synthetic */ ViewStubProxy f3580a;

        @Override // android.view.ViewStub.OnInflateListener
        public void onInflate(ViewStub viewStub, View view) {
            this.f3580a.f3577c = view;
            ViewStubProxy viewStubProxy = this.f3580a;
            viewStubProxy.f3576b = DataBindingUtil.m18680a(viewStubProxy.f3579e.f3555q, view, viewStub.getLayoutResource());
            this.f3580a.f3575a = null;
            if (this.f3580a.f3578d != null) {
                this.f3580a.f3578d.onInflate(viewStub, view);
                this.f3580a.f3578d = null;
            }
            this.f3580a.f3579e.mo7653x();
            this.f3580a.f3579e.m18612q();
        }
    }
}
