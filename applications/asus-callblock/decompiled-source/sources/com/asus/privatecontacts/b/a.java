package com.asus.privatecontacts.b;

import android.hardware.Camera;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.WindowManager;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/b/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3001a = a.class.getSimpleName();

    public static int a() {
        int numberOfCameras = Camera.getNumberOfCameras();
        int i = 0;
        while (true) {
            if (i >= numberOfCameras) {
                i = -1;
                break;
            }
            Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
            Camera.getCameraInfo(i, cameraInfo);
            if (cameraInfo.facing == 1) {
                break;
            }
            i++;
        }
        return i;
    }

    public static Camera a(int i) {
        Camera camera = null;
        try {
            camera = Camera.open(i);
        } catch (Exception e) {
            Log.e(f3001a, "Failed to get the camera instance...");
            e.printStackTrace();
        }
        return camera;
    }

    public static void a(WindowManager windowManager, int i, Camera camera) {
        int i2;
        int i3;
        try {
            Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
            Camera.getCameraInfo(i, cameraInfo);
            switch (windowManager.getDefaultDisplay().getRotation()) {
                case 0:
                    i2 = 0;
                    break;
                case 1:
                    i2 = 90;
                    break;
                case 2:
                    i2 = 180;
                    break;
                case 3:
                    i2 = 270;
                    break;
                default:
                    i2 = 0;
                    break;
            }
            if (cameraInfo.facing == 1) {
                int i4 = (cameraInfo.orientation + i2) % 360;
                int i5 = (360 - i4) % 360;
                Log.d(f3001a, "degrees: " + i2 + ", rotate: " + i4 + ", result: " + i5);
                Camera.Parameters parameters = camera.getParameters();
                parameters.setRotation(i4);
                camera.setParameters(parameters);
                i3 = i5;
            } else {
                i3 = ((cameraInfo.orientation - i2) + 360) % 360;
            }
            camera.setDisplayOrientation(i3);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean a(Camera camera) {
        boolean z;
        if (camera != null) {
            try {
                Log.d(f3001a, ">>> stopPreviewAndFreeCamera()");
                camera.stopPreview();
                camera.release();
                z = true;
            } catch (Exception e) {
                e.printStackTrace();
            }
            return z;
        }
        z = false;
        return z;
    }

    public static boolean a(Camera camera, SurfaceHolder surfaceHolder) {
        boolean z;
        if (!(camera == null || surfaceHolder == null)) {
            try {
                Log.d(f3001a, ">>> setAndStartPreview()");
                camera.setPreviewDisplay(surfaceHolder);
                camera.startPreview();
                z = true;
            } catch (Exception e) {
                e.printStackTrace();
            }
            return z;
        }
        z = false;
        return z;
    }

    public static boolean b(Camera camera) {
        boolean z;
        if (camera != null) {
            try {
                Log.d(f3001a, ">>> stopPreview()");
                camera.stopPreview();
                z = true;
            } catch (Exception e) {
                e.printStackTrace();
            }
            return z;
        }
        z = false;
        return z;
    }
}
