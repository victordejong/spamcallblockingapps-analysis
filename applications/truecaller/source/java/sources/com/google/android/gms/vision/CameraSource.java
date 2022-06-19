package com.google.android.gms.vision;

import android.content.Context;
import android.graphics.ImageFormat;
import android.hardware.Camera;
import android.os.SystemClock;
import android.view.SurfaceHolder;
import com.google.android.gms.common.images.Size;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.vision.Frame;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1642f.p1671r.C25150d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/CameraSource.class */
public class CameraSource {

    /* renamed from: a */
    public Context f6496a;

    /* renamed from: b */
    public final Object f6497b;

    /* renamed from: c */
    public Camera f6498c;

    /* renamed from: d */
    public int f6499d;

    /* renamed from: e */
    public int f6500e;

    /* renamed from: f */
    public Size f6501f;

    /* renamed from: g */
    public float f6502g;

    /* renamed from: h */
    public int f6503h;

    /* renamed from: i */
    public int f6504i;

    /* renamed from: j */
    public boolean f6505j;

    /* renamed from: k */
    public String f6506k;

    /* renamed from: l */
    public Thread f6507l;

    /* renamed from: m */
    public RunnableC2070b f6508m;

    /* renamed from: n */
    public Map<byte[], ByteBuffer> f6509n;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/CameraSource$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public final Detector<?> f6510a;

        /* renamed from: b */
        public CameraSource f6511b;

        public Builder(Context context, Detector<?> detector) {
            CameraSource cameraSource = new CameraSource();
            this.f6511b = cameraSource;
            if (context != null) {
                if (detector == null) {
                    throw new IllegalArgumentException("No detector supplied.");
                }
                this.f6510a = detector;
                cameraSource.f6496a = context;
                return;
            }
            throw new IllegalArgumentException("No context supplied.");
        }

        /* renamed from: a */
        public Builder m38500a(int i) {
            if (i == 0 || i == 1) {
                this.f6511b.f6499d = i;
                return this;
            }
            throw new IllegalArgumentException(C22128a.m8690L1(27, "Invalid camera: ", i));
        }

        /* renamed from: b */
        public Builder m38499b(float f) {
            if (f > 0.0f) {
                this.f6511b.f6502g = f;
                return this;
            }
            StringBuilder sb = new StringBuilder(28);
            sb.append("Invalid fps: ");
            sb.append(f);
            throw new IllegalArgumentException(sb.toString());
        }

        /* renamed from: c */
        public Builder m38498c(int i, int i2) {
            if (i <= 0 || i > 1000000 || i2 <= 0 || i2 > 1000000) {
                throw new IllegalArgumentException(C22128a.m8683N1(45, "Invalid preview size: ", i, "x", i2));
            }
            CameraSource cameraSource = this.f6511b;
            cameraSource.f6503h = i;
            cameraSource.f6504i = i2;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/CameraSource$PictureCallback.class */
    public interface PictureCallback {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/CameraSource$ShutterCallback.class */
    public interface ShutterCallback {
    }

    /* renamed from: com.google.android.gms.vision.CameraSource$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/CameraSource$a.class */
    public final class C2069a implements Camera.PreviewCallback {
        public C2069a(C25150d c25150d) {
            CameraSource.this = r4;
        }

        @Override // android.hardware.Camera.PreviewCallback
        public final void onPreviewFrame(byte[] bArr, Camera camera) {
            RunnableC2070b runnableC2070b = CameraSource.this.f6508m;
            synchronized (runnableC2070b.f6515c) {
                ByteBuffer byteBuffer = runnableC2070b.f6519g;
                if (byteBuffer != null) {
                    camera.addCallbackBuffer(byteBuffer.array());
                    runnableC2070b.f6519g = null;
                }
                if (!CameraSource.this.f6509n.containsKey(bArr)) {
                    return;
                }
                runnableC2070b.f6517e = SystemClock.elapsedRealtime() - runnableC2070b.f6514b;
                runnableC2070b.f6518f++;
                runnableC2070b.f6519g = CameraSource.this.f6509n.get(bArr);
                runnableC2070b.f6515c.notifyAll();
            }
        }
    }

    /* renamed from: com.google.android.gms.vision.CameraSource$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/CameraSource$b.class */
    public final class RunnableC2070b implements Runnable {

        /* renamed from: a */
        public Detector<?> f6513a;

        /* renamed from: e */
        public long f6517e;

        /* renamed from: g */
        public ByteBuffer f6519g;

        /* renamed from: b */
        public long f6514b = SystemClock.elapsedRealtime();

        /* renamed from: c */
        public final Object f6515c = new Object();

        /* renamed from: d */
        public boolean f6516d = true;

        /* renamed from: f */
        public int f6518f = 0;

        public RunnableC2070b(Detector<?> detector) {
            CameraSource.this = r5;
            this.f6513a = detector;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            Frame frame;
            ByteBuffer byteBuffer;
            while (true) {
                synchronized (this.f6515c) {
                    while (true) {
                        z = this.f6516d;
                        if (!z || this.f6519g != null) {
                            break;
                        }
                        try {
                            this.f6515c.wait();
                        } catch (InterruptedException e) {
                            return;
                        }
                    }
                    if (!z) {
                        return;
                    }
                    Frame.Builder builder = new Frame.Builder();
                    ByteBuffer byteBuffer2 = this.f6519g;
                    Size size = CameraSource.this.f6501f;
                    builder.m38492a(byteBuffer2, size.f5931a, size.f5932b, 17);
                    int i = this.f6518f;
                    frame = builder.f6528a;
                    Frame.Metadata metadata = frame.f6526a;
                    metadata.f6531c = i;
                    metadata.f6532d = this.f6517e;
                    metadata.f6533e = CameraSource.this.f6500e;
                    if (frame.f6527b == null) {
                        throw new IllegalStateException("Missing image data.  Call either setBitmap or setImageData to specify the image");
                    }
                    byteBuffer = this.f6519g;
                    this.f6519g = null;
                }
                try {
                    this.f6513a.m38495c(frame);
                } catch (Exception e2) {
                } finally {
                    CameraSource.this.f6498c.addCallbackBuffer(byteBuffer.array());
                }
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.android.gms.vision.CameraSource$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/CameraSource$c.class */
    public static final class C2071c {

        /* renamed from: a */
        public Size f6521a;

        /* renamed from: b */
        public Size f6522b;

        public C2071c(Camera.Size size, Camera.Size size2) {
            this.f6521a = new Size(size.width, size.height);
            if (size2 != null) {
                this.f6522b = new Size(size2.width, size2.height);
            }
        }
    }

    private CameraSource() {
        this.f6497b = new Object();
        this.f6499d = 0;
        this.f6502g = 30.0f;
        this.f6503h = 1024;
        this.f6504i = 768;
        this.f6505j = false;
        this.f6509n = new HashMap();
    }

    /* renamed from: a */
    public CameraSource m38504a(SurfaceHolder surfaceHolder) throws IOException {
        synchronized (this.f6497b) {
            if (this.f6498c != null) {
                return this;
            }
            Camera m38502c = m38502c();
            this.f6498c = m38502c;
            m38502c.setPreviewDisplay(surfaceHolder);
            this.f6498c.startPreview();
            this.f6507l = new Thread(this.f6508m);
            RunnableC2070b runnableC2070b = this.f6508m;
            synchronized (runnableC2070b.f6515c) {
                runnableC2070b.f6516d = true;
                runnableC2070b.f6515c.notifyAll();
            }
            this.f6507l.start();
            return this;
        }
    }

    /* renamed from: b */
    public void m38503b() {
        synchronized (this.f6497b) {
            RunnableC2070b runnableC2070b = this.f6508m;
            synchronized (runnableC2070b.f6515c) {
                runnableC2070b.f6516d = false;
                runnableC2070b.f6515c.notifyAll();
            }
            Thread thread = this.f6507l;
            if (thread != null) {
                try {
                    thread.join();
                } catch (InterruptedException e) {
                }
                this.f6507l = null;
            }
            Camera camera = this.f6498c;
            if (camera != null) {
                camera.stopPreview();
                this.f6498c.setPreviewCallbackWithBuffer(null);
                try {
                    this.f6498c.setPreviewDisplay(null);
                } catch (Exception e2) {
                    String.valueOf(e2).length();
                }
                this.f6498c.release();
                this.f6498c = null;
            }
            this.f6509n.clear();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02d3  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.hardware.Camera m38502c() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 929
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.vision.CameraSource.m38502c():android.hardware.Camera");
    }

    /* renamed from: d */
    public final byte[] m38501d(Size size) {
        byte[] bArr = new byte[((int) Math.ceil(((size.f5932b * size.f5931a) * ImageFormat.getBitsPerPixel(17)) / 8.0d)) + 1];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        if (!wrap.hasArray() || wrap.array() != bArr) {
            throw new IllegalStateException("Failed to create valid buffer for camera source.");
        }
        this.f6509n.put(bArr, wrap);
        return bArr;
    }
}
