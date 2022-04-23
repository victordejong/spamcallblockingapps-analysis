package com.asus.privatecontacts.pin;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.hardware.Camera;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import com.asus.privatecontacts.b.b;
import com.asus.privatecontacts.provider.c;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/pin/a.class */
public class a implements Camera.PictureCallback {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3041a = a.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private final Context f3042b;

    /* renamed from: com.asus.privatecontacts.pin.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/pin/a$a.class */
    final class AsyncTaskC0086a extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: b  reason: collision with root package name */
        private byte[] f3044b;

        public AsyncTaskC0086a(byte[] bArr) {
            this.f3044b = bArr;
        }

        private Boolean a() {
            boolean z;
            if (this.f3044b == null) {
                z = false;
            } else {
                String str = b.a(a.this.f3042b).getPath() + File.separator + "private_invalid_pin.jpg";
                File file = new File(str);
                try {
                    if (file.exists()) {
                        file.delete();
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    fileOutputStream.write(this.f3044b);
                    fileOutputStream.close();
                    Log.d(a.f3041a, "New Image saved:private_invalid_pin.jpg");
                    a.a(str);
                    c.a(a.this.f3042b, Uri.fromFile(file));
                    z = true;
                } catch (Exception e) {
                    Log.d(a.f3041a, "Image could not be saved.");
                    z = false;
                }
            }
            return z;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            return a();
        }
    }

    public a(Context context) {
        this.f3042b = context;
    }

    static /* synthetic */ void a(String str) {
        ExifInterface exifInterface;
        Throwable th;
        Exception e;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            exifInterface = new ExifInterface(str);
        } catch (IOException e2) {
            e2.printStackTrace();
            exifInterface = null;
        }
        int i = 0;
        switch (exifInterface.getAttributeInt("Orientation", 1)) {
            case 3:
                i = 180;
                break;
            case 4:
            case 5:
            case 7:
                break;
            case 6:
                i = 90;
                break;
            case 8:
                i = 270;
                break;
            default:
                i = 0;
                break;
        }
        try {
            Bitmap decodeFile = BitmapFactory.decodeFile(str);
            if (i != 0) {
                int width = decodeFile.getWidth();
                int height = decodeFile.getHeight();
                Matrix matrix = new Matrix();
                matrix.preRotate(i);
                Bitmap copy = Bitmap.createBitmap(decodeFile, 0, 0, width, height, matrix, false).copy(Bitmap.Config.RGB_565, true);
                FileOutputStream fileOutputStream3 = null;
                try {
                    try {
                        fileOutputStream3 = null;
                        fileOutputStream = new FileOutputStream(str);
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Exception e3) {
                    e = e3;
                }
                try {
                    copy.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    try {
                        fileOutputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                } catch (Exception e5) {
                    e = e5;
                    fileOutputStream2 = fileOutputStream;
                    fileOutputStream3 = fileOutputStream2;
                    e.printStackTrace();
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream3 = fileOutputStream;
                    if (fileOutputStream3 != null) {
                        try {
                            fileOutputStream3.close();
                        } catch (IOException e7) {
                            e7.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
        } catch (OutOfMemoryError e8) {
            Log.e(f3041a, "correctPhotoOrientation fail", e8);
        }
    }

    @Override // android.hardware.Camera.PictureCallback
    public void onPictureTaken(byte[] bArr, Camera camera) {
        try {
            new AsyncTaskC0086a(bArr).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
