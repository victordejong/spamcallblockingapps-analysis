package com.uservoice.uservoicesdk.i;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.widget.ImageView;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/i/a.class */
public final class a extends AsyncTask<Void, Void, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    public final List<WeakReference<ImageView>> f4697a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final String f4698b;

    public a(String str) {
        this.f4698b = str;
    }

    private Bitmap a() {
        Exception e;
        Bitmap bitmap;
        InputStream inputStream;
        Throwable th;
        try {
            inputStream = new URL(this.f4698b).openStream();
            try {
                bitmap = BitmapFactory.decodeStream(inputStream);
                bitmap = bitmap;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                        bitmap = bitmap;
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        return bitmap;
                    }
                }
                return bitmap;
            } catch (Throwable th2) {
                th = th2;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e3) {
                        e = e3;
                        bitmap = null;
                        e.printStackTrace();
                        return bitmap;
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    public final void a(ImageView imageView) {
        boolean z;
        Iterator<WeakReference<ImageView>> it = this.f4697a.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            ImageView imageView2 = it.next().get();
            if (imageView2 != null && imageView2.equals(imageView)) {
                z = true;
                break;
            }
        }
        if (!z) {
            imageView.setImageBitmap(null);
            this.f4697a.add(new WeakReference<>(imageView));
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Bitmap doInBackground(Void[] voidArr) {
        return a();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Bitmap bitmap) {
        Bitmap bitmap2 = bitmap;
        if (!isCancelled()) {
            for (WeakReference<ImageView> weakReference : this.f4697a) {
                ImageView imageView = weakReference.get();
                if (imageView != null) {
                    imageView.setImageBitmap(bitmap2);
                }
            }
            b a2 = b.a();
            String str = this.f4698b;
            if (a2.f4699a.containsKey(str)) {
                SoftReference<Bitmap> softReference = a2.f4699a.get(str);
                a2.f4699a.remove(str);
                a2.f4699a.put(str, softReference);
            } else {
                if (a2.f4699a.size() == 20) {
                    Iterator<String> it = a2.f4699a.keySet().iterator();
                    if (it.hasNext()) {
                        a2.f4699a.remove(it.next());
                    }
                }
                a2.f4699a.put(str, new SoftReference<>(bitmap2));
            }
            a2.f4700b.remove(str);
        }
    }
}
