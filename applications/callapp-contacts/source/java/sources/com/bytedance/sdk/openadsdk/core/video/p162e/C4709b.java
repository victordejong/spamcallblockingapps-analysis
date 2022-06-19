package com.bytedance.sdk.openadsdk.core.video.p162e;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.util.HashMap;
/* renamed from: com.bytedance.sdk.openadsdk.core.video.e.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/e/b.class */
public class C4709b {

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.e.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/e/b$a.class */
    public static class AsyncTaskC4710a extends AsyncTask<String, Integer, Bitmap> {

        /* renamed from: a */
        private AbstractC4711b f17190a;

        /* renamed from: b */
        private long f17191b;

        public AsyncTaskC4710a(AbstractC4711b abstractC4711b, long j) {
            this.f17191b = 0L;
            this.f17190a = abstractC4711b;
            this.f17191b = j;
        }

        /* renamed from: a */
        public Bitmap doInBackground(String... strArr) {
            Bitmap bitmap;
            Bitmap bitmap2 = null;
            try {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                String str = strArr[0];
                if (str.startsWith("http")) {
                    mediaMetadataRetriever.setDataSource(str, new HashMap());
                } else {
                    mediaMetadataRetriever.setDataSource(str);
                }
                bitmap = mediaMetadataRetriever.getFrameAtTime(this.f17191b * 1000, 3);
                bitmap2 = bitmap;
                mediaMetadataRetriever.release();
            } catch (Throwable th) {
                C5478q.m32108c("MediaUtils", "MediaUtils doInBackground : ", th);
                bitmap = bitmap2;
            }
            return bitmap;
        }

        /* renamed from: a */
        public void onPostExecute(Bitmap bitmap) {
            super.onPostExecute(bitmap);
            AbstractC4711b abstractC4711b = this.f17190a;
            if (abstractC4711b != null) {
                abstractC4711b.mo34176a(bitmap);
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.e.b$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/e/b$b.class */
    public interface AbstractC4711b {
        /* renamed from: a */
        void mo34176a(Bitmap bitmap);
    }

    /* renamed from: a */
    public static void m34400a(long j, String str, AbstractC4711b abstractC4711b) {
        new AsyncTaskC4710a(abstractC4711b, j).execute(str);
    }
}
