package p1727n3.p1758e.p1776d;

import android.view.PixelCopy;
import p1727n3.p1758e.p1767b.C26103y0;
/* renamed from: n3.e.d.i */
/* loaded from: classes-dex2jar.jar:n3/e/d/i.class */
public final /* synthetic */ class PixelCopy$OnPixelCopyFinishedListenerC26124i implements PixelCopy.OnPixelCopyFinishedListener {

    /* renamed from: a */
    public static final /* synthetic */ PixelCopy$OnPixelCopyFinishedListenerC26124i f72852a = new PixelCopy$OnPixelCopyFinishedListenerC26124i();

    @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
    public final void onPixelCopyFinished(int i) {
        if (i == 0) {
            C26103y0.m2724a("SurfaceViewImpl", "PreviewView.SurfaceViewImplementation.getBitmap() succeeded", null);
            return;
        }
        C26103y0.m2723b("SurfaceViewImpl", "PreviewView.SurfaceViewImplementation.getBitmap() failed with error " + i, null);
    }
}
