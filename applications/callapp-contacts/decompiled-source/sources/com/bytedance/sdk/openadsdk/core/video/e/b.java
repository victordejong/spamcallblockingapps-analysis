package com.bytedance.sdk.openadsdk.core.video.e;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/e/b.class */
public class b {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/e/b$a.class */
    public static class a extends AsyncTask<String, Integer, Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        private AbstractC0168b f9210a;

        /* renamed from: b  reason: collision with root package name */
        private long f9211b;

        public a(AbstractC0168b bVar, long j) {
            this.f9211b = 0L;
            this.f9210a = bVar;
            this.f9211b = j;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public Bitmap doInBackground(String... strArr) {
            Bitmap bitmap = null;
            try {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                String str = strArr[0];
                if (str.startsWith("http")) {
                    mediaMetadataRetriever.setDataSource(str, new HashMap());
                } else {
                    mediaMetadataRetriever.setDataSource(str);
                }
                bitmap = mediaMetadataRetriever.getFrameAtTime(this.f9211b * 1000, 3);
                bitmap = bitmap;
                mediaMetadataRetriever.release();
            } catch (Throwable th) {
                q.c("MediaUtils", "MediaUtils doInBackground : ", th);
            }
            return bitmap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public void onPostExecute(Bitmap bitmap) {
            super.onPostExecute(bitmap);
            AbstractC0168b bVar = this.f9210a;
            if (bVar != null) {
                bVar.a(bitmap);
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.e.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/e/b$b.class */
    public interface AbstractC0168b {
        void a(Bitmap bitmap);
    }

    public static void a(long j, String str, AbstractC0168b bVar) {
        new a(bVar, j).execute(str);
    }
}
