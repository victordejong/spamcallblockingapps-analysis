package com.asus.privatecontacts.pin;

import android.app.Activity;
import android.hardware.Camera;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.asus.privatecontacts.b.a;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/pin/CameraPreview.class */
public class CameraPreview extends SurfaceView implements SurfaceHolder.Callback {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3028a = CameraPreview.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private Activity f3029b;
    private SurfaceHolder c;
    private Camera d;
    private int e;

    public CameraPreview(Activity activity) {
        super(activity);
        this.f3029b = activity;
        getHolder().addCallback(this);
    }

    public final boolean a() {
        boolean z;
        this.e = a.a();
        if (this.e < 0) {
            Log.d(f3028a, "No front facing camera found.");
        } else {
            try {
                this.d = a.a(this.e);
                a.a(this.f3029b.getWindowManager(), this.e, this.d);
                z = true;
            } catch (Exception e) {
                Log.d(f3028a, "Failed to open front facing camera !");
                e.printStackTrace();
            }
            return z;
        }
        z = false;
        return z;
    }

    public final boolean b() {
        boolean z;
        try {
            this.d.takePicture(null, null, new a(this.f3029b));
            z = true;
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    public void setAndStartPreview() {
        a.a(this.d, this.c);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (surfaceHolder.getSurface() != null) {
            this.c = surfaceHolder;
            a.b(this.d);
            a.a(this.d, surfaceHolder);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.c = surfaceHolder;
        a.a(this.d, this.c);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        a.a(this.d);
    }
}
