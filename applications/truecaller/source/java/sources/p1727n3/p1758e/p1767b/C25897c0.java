package p1727n3.p1758e.p1767b;

import android.media.Image;
import android.media.ImageReader;
import android.view.Surface;
import java.util.Objects;
import java.util.concurrent.Executor;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.C26015a;
/* renamed from: n3.e.b.c0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/c0.class */
public final class C25897c0 implements AbstractC26005r0 {

    /* renamed from: a */
    public final ImageReader f72441a;

    public C25897c0(ImageReader imageReader) {
        this.f72441a = imageReader;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0
    /* renamed from: a */
    public int mo2719a() {
        int maxImages;
        synchronized (this) {
            maxImages = this.f72441a.getMaxImages();
        }
        return maxImages;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0
    /* renamed from: b */
    public AbstractC26097v0 mo2718b() {
        Image image;
        synchronized (this) {
            try {
                image = this.f72441a.acquireNextImage();
            } catch (RuntimeException e) {
                if (!"ImageReaderContext is not initialized".equals(e.getMessage())) {
                    throw e;
                }
                image = null;
            }
            if (image == null) {
                return null;
            }
            return new C25893b0(image);
        }
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0
    public void close() {
        synchronized (this) {
            this.f72441a.close();
        }
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0
    /* renamed from: d */
    public void mo2716d(final AbstractC26005r0.AbstractC26006a abstractC26006a, final Executor executor) {
        synchronized (this) {
            this.f72441a.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: n3.e.b.b
                @Override // android.media.ImageReader.OnImageAvailableListener
                public final void onImageAvailable(ImageReader imageReader) {
                    final C25897c0 c25897c0 = C25897c0.this;
                    Executor executor2 = executor;
                    final AbstractC26005r0.AbstractC26006a abstractC26006a2 = abstractC26006a;
                    Objects.requireNonNull(c25897c0);
                    executor2.execute(new Runnable() { // from class: n3.e.b.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            C25897c0 c25897c02 = C25897c0.this;
                            AbstractC26005r0.AbstractC26006a abstractC26006a3 = abstractC26006a2;
                            Objects.requireNonNull(c25897c02);
                            abstractC26006a3.mo2729a(c25897c02);
                        }
                    });
                }
            }, C26015a.m2789a());
        }
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26005r0
    public Surface getSurface() {
        Surface surface;
        synchronized (this) {
            surface = this.f72441a.getSurface();
        }
        return surface;
    }
}
