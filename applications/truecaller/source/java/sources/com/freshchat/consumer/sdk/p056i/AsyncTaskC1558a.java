package com.freshchat.consumer.sdk.p056i;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.freshchat.consumer.sdk.activity.PictureAttachmentActivity;
import com.freshchat.consumer.sdk.p053f.AbstractC1535a;
import com.freshchat.consumer.sdk.p057j.C1608ad;
import com.freshchat.consumer.sdk.p057j.C1610af;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1732x;
import com.freshchat.consumer.sdk.p057j.p058a.C1585d;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
/* renamed from: com.freshchat.consumer.sdk.i.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/i/a.class */
public class AsyncTaskC1558a extends AsyncTask<Uri, Void, Bitmap> {
    private static String TAG = AsyncTaskC1558a.class.getName();
    private final Context context;

    /* renamed from: gS */
    private final WeakReference<ImageView> f4218gS;

    /* renamed from: gT */
    private final WeakReference<PictureAttachmentActivity.C1391a> f4219gT;

    /* renamed from: gU */
    private final int f4220gU;

    /* renamed from: lm */
    private final WeakReference<AbstractC1535a> f4221lm;

    public AsyncTaskC1558a(Context context, ImageView imageView, int i, PictureAttachmentActivity.C1391a c1391a, AbstractC1535a abstractC1535a) {
        this.f4218gS = new WeakReference<>(imageView);
        this.f4220gU = i;
        this.context = context.getApplicationContext();
        this.f4219gT = new WeakReference<>(c1391a);
        this.f4221lm = new WeakReference<>(abstractC1535a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00d3  */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m40517a(android.net.Uri r6) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p056i.AsyncTaskC1558a.m40517a(android.net.Uri):int");
    }

    /* renamed from: fu */
    private AbstractC1535a m40515fu() {
        WeakReference<AbstractC1535a> weakReference = this.f4221lm;
        return weakReference != null ? weakReference.get() : null;
    }

    /* renamed from: b */
    public InputStream m40516b(Uri uri) {
        return this.f4220gU == 126 ? C1608ad.m40315aE(uri.getPath()) : C1608ad.m40313d(this.context, uri);
    }

    /* JADX WARN: Not initialized variable reg: 13, insn: 0x0226: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r13 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:61:0x0226 */
    public Bitmap doInBackground(Uri... uriArr) {
        Throwable th;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        FileOutputStream fileOutputStream3;
        Exception e;
        FileOutputStream fileOutputStream4;
        Bitmap createBitmap;
        File file;
        File file2;
        Closeable closeable = null;
        if (uriArr == null || uriArr.length == 0) {
            return null;
        }
        Uri uri = uriArr[0];
        InputStream m40516b = m40516b(uri);
        try {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = m40517a(uri);
                int m40307aG = C1610af.m40307aG(uri.getPath());
                Matrix matrix = new Matrix();
                if (m40307aG != 0) {
                    matrix.postRotate(m40307aG);
                }
                Bitmap decodeStream = BitmapFactory.decodeStream(m40516b, null, options);
                createBitmap = Bitmap.createBitmap(decodeStream, 0, 0, decodeStream.getWidth(), decodeStream.getHeight(), matrix, true);
                File m40419R = C1585d.m40419R(this.context, "freshchat");
                long nanoTime = System.nanoTime();
                file = new File(m40419R, nanoTime + ".img");
                file2 = new File(m40419R, nanoTime + ".img.t");
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th2) {
                fileOutputStream = fileOutputStream2;
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
            fileOutputStream3 = null;
            fileOutputStream4 = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
            closeable = null;
        }
        try {
            FileOutputStream fileOutputStream5 = new FileOutputStream(file2);
            try {
                createBitmap.compress(Bitmap.CompressFormat.JPEG, 85, fileOutputStream);
                createBitmap.compress(Bitmap.CompressFormat.JPEG, 70, fileOutputStream5);
                String str = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("Pic saved to ");
                sb.append(file.getAbsolutePath());
                C1613ai.m40284d(str, sb.toString());
                PictureAttachmentActivity.C1391a c1391a = this.f4219gT.get();
                if (c1391a != null) {
                    c1391a.m41109l(file.getAbsolutePath());
                    c1391a.m41110k(file2.getAbsolutePath());
                    c1391a.setHeight(createBitmap.getHeight());
                    c1391a.setWidth(createBitmap.getWidth());
                }
                C1732x.m39786bs(uri.toString());
                C1608ad.m40316a(m40516b, fileOutputStream, fileOutputStream5);
                return createBitmap;
            } catch (Exception e3) {
                e = e3;
                fileOutputStream3 = fileOutputStream;
                fileOutputStream4 = fileOutputStream5;
                C1723q.m39823a(e);
                C1608ad.m40316a(m40516b, fileOutputStream3, fileOutputStream4);
                return null;
            }
        } catch (Exception e4) {
            e = e4;
            fileOutputStream3 = fileOutputStream;
            fileOutputStream4 = null;
        } catch (Throwable th4) {
            th = th4;
            closeable = null;
            C1608ad.m40316a(m40516b, fileOutputStream, closeable);
            throw th;
        }
    }

    public void onPostExecute(Bitmap bitmap) {
        WeakReference<ImageView> weakReference = this.f4218gS;
        if (weakReference == null || bitmap == null) {
            C1613ai.m40283e("FRESHCHAT_WARNING", " image view not present or bitmap is null");
            if (m40515fu() == null) {
                return;
            }
            m40515fu().mo40584aI();
            return;
        }
        ImageView imageView = weakReference.get();
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
        if (m40515fu() == null) {
            return;
        }
        m40515fu().mo40585aH();
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        super.onPreExecute();
        if (m40515fu() != null) {
            m40515fu().mo40586aG();
        }
    }
}
