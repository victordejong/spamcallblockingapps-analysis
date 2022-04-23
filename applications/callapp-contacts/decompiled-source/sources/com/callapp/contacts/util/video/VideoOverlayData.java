package com.callapp.contacts.util.video;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Typeface;
import android.net.Uri;
import com.bumptech.glide.b.e;
import com.bumptech.glide.load.engine.a.k;
import com.bumptech.glide.load.resource.d.b;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.video.videoFilters.AnimationFrameProvider;
import com.callapp.contacts.util.video.videoFilters.BitmapOverlayFilter;
import com.callapp.contacts.util.video.videoFilters.FrameSequenceAnimationOverlayFilter;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.c.a;
import com.linkedin.android.litr.h.c;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/VideoOverlayData.class */
public class VideoOverlayData {

    /* renamed from: a  reason: collision with root package name */
    private int f16338a;

    /* renamed from: b  reason: collision with root package name */
    private PointF f16339b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f16340c;

    /* renamed from: d  reason: collision with root package name */
    private Bitmap f16341d;
    private float e;
    private PointF f;
    private Uri g;
    private Float h;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder.class */
    public static class VideoOverlayBuilder {

        /* renamed from: a  reason: collision with root package name */
        public Context f16342a;

        /* renamed from: b  reason: collision with root package name */
        public List<VideoOverlayData> f16343b = new ArrayList();

        public VideoOverlayBuilder(Context context) {
            this.f16342a = context;
        }

        private a a(Context context, VideoOverlayData videoOverlayData) {
            a aVar;
            try {
                if (videoOverlayData.isAnimated()) {
                    InputStream openInputStream = context.getApplicationContext().getContentResolver().openInputStream(videoOverlayData.getOverlayUri());
                    final e eVar = new e(new b(new k(10L)));
                    eVar.a(openInputStream, (int) c.a(context, videoOverlayData.getOverlayUri()));
                    aVar = new FrameSequenceAnimationOverlayFilter(new AnimationFrameProvider() { // from class: com.callapp.contacts.util.video.VideoOverlayData.VideoOverlayBuilder.1
                        @Override // com.callapp.contacts.util.video.videoFilters.AnimationFrameProvider
                        public final void a() {
                            eVar.b();
                        }

                        @Override // com.callapp.contacts.util.video.videoFilters.AnimationFrameProvider
                        public int getFrameCount() {
                            return eVar.d();
                        }

                        @Override // com.callapp.contacts.util.video.videoFilters.AnimationFrameProvider
                        public Bitmap getNextFrame() {
                            return eVar.i();
                        }

                        @Override // com.callapp.contacts.util.video.videoFilters.AnimationFrameProvider
                        public long getNextFrameDurationNs() {
                            return TimeUnit.MILLISECONDS.toNanos(eVar.c());
                        }
                    }, new com.linkedin.android.litr.c.c(videoOverlayData.getSize(), videoOverlayData.getLocation(), BitmapDescriptorFactory.HUE_RED));
                } else {
                    aVar = new BitmapOverlayFilter(videoOverlayData.getOverlayBitmap(), new com.linkedin.android.litr.c.c(videoOverlayData.getSize(), videoOverlayData.getLocation(), BitmapDescriptorFactory.HUE_RED));
                }
            } catch (IOException e) {
                CLog.a(VideoOverlayData.class, "Failed to create a GlFilter", e);
                aVar = null;
            }
            return aVar;
        }

        public final VideoOverlayBuilder a(int i, boolean z, float f, float f2, Float f3) {
            this.f16343b.add(new VideoOverlayData(this.f16342a, i, z, 0.5f, f, f2, f3));
            return this;
        }

        public final VideoOverlayBuilder a(String str, boolean z, float f, float f2, Float f3) {
            this.f16343b.add(new VideoOverlayData(str, 30.0f, -1, z, 0.5f, f, f2, f3));
            return this;
        }

        public final List<a> a(VideoTrackFormat videoTrackFormat) {
            if (videoTrackFormat == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (VideoOverlayData videoOverlayData : this.f16343b) {
                videoOverlayData.setSize(new PointF(videoOverlayData.getOverlayWidth(), videoOverlayData.getOverlayHeight().floatValue()));
                arrayList.add(a(this.f16342a, videoOverlayData));
            }
            return arrayList;
        }
    }

    private VideoOverlayData(Context context, int i, boolean z, float f, float f2, float f3, Float f4) {
        this.f16338a = i;
        this.g = ImageUtils.getUriToDrawable(i);
        try {
            this.f16341d = BitmapFactory.decodeStream(context.getContentResolver().openInputStream(this.g));
        } catch (FileNotFoundException e) {
            CLog.a(VideoOverlayData.class, e);
        }
        this.f16340c = z;
        this.f16339b = new PointF(f, f2);
        this.e = f3;
        this.h = f4;
    }

    private VideoOverlayData(Context context, String str, boolean z, float f, float f2, float f3, Float f4) {
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str);
        glideRequestBuilder.e = context;
        glideRequestBuilder.l = true;
        this.f16341d = glideRequestBuilder.b(2, ThemeUtils.getColor(2131100228)).getBitmap();
        this.f16340c = z;
        this.f16339b = new PointF(f, f2);
        this.e = f3;
        this.h = f4;
    }

    private VideoOverlayData(String str, float f, int i, boolean z, float f2, float f3, float f4, Float f5) {
        Paint paint = new Paint(1);
        paint.setTextSize(f);
        paint.setColor(i);
        paint.setTypeface(Typeface.create("sans-serif", z ? 1 : 0));
        paint.setTextAlign(Paint.Align.LEFT);
        float f6 = -paint.ascent();
        Bitmap createBitmap = Bitmap.createBitmap((int) (paint.measureText(str) + 0.5f), (int) (paint.descent() + f6 + 0.5f), Bitmap.Config.ARGB_8888);
        new Canvas(createBitmap).drawText(str, BitmapDescriptorFactory.HUE_RED, f6, paint);
        this.f16341d = createBitmap;
        this.f16339b = new PointF(f2, f3);
        this.e = f4;
        this.h = f5;
    }

    public PointF getLocation() {
        return this.f16339b;
    }

    public Bitmap getOverlayBitmap() {
        return this.f16341d;
    }

    public Float getOverlayHeight() {
        return this.h;
    }

    public Uri getOverlayUri() {
        return this.g;
    }

    public float getOverlayWidth() {
        return this.e;
    }

    public PointF getSize() {
        return this.f;
    }

    public boolean isAnimated() {
        return this.f16340c;
    }

    public void setSize(PointF pointF) {
        this.f = pointF;
    }
}
