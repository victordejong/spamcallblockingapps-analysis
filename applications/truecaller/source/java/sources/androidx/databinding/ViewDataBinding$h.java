package androidx.databinding;

import android.view.Choreographer;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$h.class */
public class ViewDataBinding$h implements Choreographer.FrameCallback {

    /* renamed from: a */
    public final /* synthetic */ ViewDataBinding f716a;

    public ViewDataBinding$h(ViewDataBinding viewDataBinding) {
        this.f716a = viewDataBinding;
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        ViewDataBinding.access$100(this.f716a).run();
    }
}
