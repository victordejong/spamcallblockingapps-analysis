package com.google.android.gms.vision;

import android.util.SparseArray;
import com.google.android.gms.vision.Frame;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/Detector.class */
public abstract class Detector<T> {

    /* renamed from: a */
    public final Object f6523a = new Object();

    /* renamed from: b */
    public Processor<T> f6524b;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/Detector$Detections.class */
    public static class Detections<T> {

        /* renamed from: a */
        public final SparseArray<T> f6525a;

        public Detections(SparseArray<T> sparseArray, Frame.Metadata metadata, boolean z) {
            this.f6525a = sparseArray;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/Detector$Processor.class */
    public interface Processor<T> {
        /* renamed from: a */
        void mo34787a(Detections<T> detections);

        void release();
    }

    /* renamed from: a */
    public abstract SparseArray<T> m38497a(Frame frame);

    /* renamed from: b */
    public boolean m38496b() {
        return true;
    }

    /* renamed from: c */
    public void m38495c(Frame frame) {
        Frame.Metadata metadata = new Frame.Metadata(frame.f6526a);
        if (metadata.f6533e % 2 != 0) {
            int i = metadata.f6529a;
            metadata.f6529a = metadata.f6530b;
            metadata.f6530b = i;
        }
        metadata.f6533e = 0;
        Detections<T> detections = new Detections<>(m38497a(frame), metadata, m38496b());
        synchronized (this.f6523a) {
            Processor<T> processor = this.f6524b;
            if (processor == null) {
                throw new IllegalStateException("Detector processor must first be set with setProcessor in order to receive detection results.");
            }
            processor.mo34787a(detections);
        }
    }

    /* renamed from: d */
    public void m38494d() {
        synchronized (this.f6523a) {
            Processor<T> processor = this.f6524b;
            if (processor != null) {
                processor.release();
                this.f6524b = null;
            }
        }
    }

    /* renamed from: e */
    public void m38493e(Processor<T> processor) {
        synchronized (this.f6523a) {
            Processor<T> processor2 = this.f6524b;
            if (processor2 != null) {
                processor2.release();
            }
            this.f6524b = processor;
        }
    }
}
