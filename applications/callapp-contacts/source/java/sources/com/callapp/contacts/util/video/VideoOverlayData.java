package com.callapp.contacts.util.video;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Typeface;
import android.net.Uri;
import com.bumptech.glide.load.engine.p119a.C3721k;
import com.bumptech.glide.load.resource.p125d.C3908b;
import com.bumptech.glide.p109b.C3547e;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.video.videoFilters.AnimationFrameProvider;
import com.callapp.contacts.util.video.videoFilters.BitmapOverlayFilter;
import com.callapp.contacts.util.video.videoFilters.FrameSequenceAnimationOverlayFilter;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.p461c.AbstractC16622a;
import com.linkedin.android.litr.p461c.C16628c;
import com.linkedin.android.litr.p470h.C16657c;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/VideoOverlayData.class */
public class VideoOverlayData {

    /* renamed from: a */
    private int f28453a;

    /* renamed from: b */
    private PointF f28454b;

    /* renamed from: c */
    private boolean f28455c;

    /* renamed from: d */
    private Bitmap f28456d;

    /* renamed from: e */
    private float f28457e;

    /* renamed from: f */
    private PointF f28458f;

    /* renamed from: g */
    private Uri f28459g;

    /* renamed from: h */
    private Float f28460h;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder.class */
    public static class VideoOverlayBuilder {

        /* renamed from: a */
        public Context f28461a;

        /* renamed from: b */
        public List<VideoOverlayData> f28462b = new ArrayList();

        public VideoOverlayBuilder(Context context) {
            this.f28461a = context;
        }

        /* renamed from: a */
        private AbstractC16622a m26890a(Context context, VideoOverlayData videoOverlayData) {
            AbstractC16622a abstractC16622a;
            try {
                if (videoOverlayData.isAnimated()) {
                    InputStream openInputStream = context.getApplicationContext().getContentResolver().openInputStream(videoOverlayData.getOverlayUri());
                    final C3547e c3547e = new C3547e(new C3908b(new C3721k(10L)));
                    c3547e.mo37736a(openInputStream, (int) C16657c.m6803a(context, videoOverlayData.getOverlayUri()));
                    abstractC16622a = new FrameSequenceAnimationOverlayFilter(new AnimationFrameProvider() { // from class: com.callapp.contacts.util.video.VideoOverlayData.VideoOverlayBuilder.1
                        @Override // com.callapp.contacts.util.video.videoFilters.AnimationFrameProvider
                        /* renamed from: a */
                        public final void mo26885a() {
                            c3547e.mo37734b();
                        }

                        @Override // com.callapp.contacts.util.video.videoFilters.AnimationFrameProvider
                        public int getFrameCount() {
                            return c3547e.mo37732d();
                        }

                        @Override // com.callapp.contacts.util.video.videoFilters.AnimationFrameProvider
                        public Bitmap getNextFrame() {
                            return c3547e.mo37727i();
                        }

                        @Override // com.callapp.contacts.util.video.videoFilters.AnimationFrameProvider
                        public long getNextFrameDurationNs() {
                            return TimeUnit.MILLISECONDS.toNanos(c3547e.mo37733c());
                        }
                    }, new C16628c(videoOverlayData.getSize(), videoOverlayData.getLocation(), BitmapDescriptorFactory.HUE_RED));
                } else {
                    abstractC16622a = new BitmapOverlayFilter(videoOverlayData.getOverlayBitmap(), new C16628c(videoOverlayData.getSize(), videoOverlayData.getLocation(), BitmapDescriptorFactory.HUE_RED));
                }
            } catch (IOException e) {
                CLog.m27610a(VideoOverlayData.class, "Failed to create a GlFilter", e);
                abstractC16622a = null;
            }
            return abstractC16622a;
        }

        /* renamed from: a */
        public final VideoOverlayBuilder m26891a(int i, boolean z, float f, float f2, Float f3) {
            this.f28462b.add(new VideoOverlayData(this.f28461a, i, z, 0.5f, f, f2, f3));
            return this;
        }

        /* renamed from: a */
        public final VideoOverlayBuilder m26888a(String str, boolean z, float f, float f2, Float f3) {
            this.f28462b.add(new VideoOverlayData(str, 30.0f, -1, z, 0.5f, f, f2, f3));
            return this;
        }

        /* renamed from: a */
        public final List<AbstractC16622a> m26889a(VideoTrackFormat videoTrackFormat) {
            if (videoTrackFormat != null) {
                ArrayList arrayList = new ArrayList();
                for (VideoOverlayData videoOverlayData : this.f28462b) {
                    videoOverlayData.setSize(new PointF(videoOverlayData.getOverlayWidth(), videoOverlayData.getOverlayHeight().floatValue()));
                    arrayList.add(m26890a(this.f28461a, videoOverlayData));
                }
                return arrayList;
            }
            return null;
        }
    }

    private VideoOverlayData(Context context, int i, boolean z, float f, float f2, float f3, Float f4) {
        this.f28453a = i;
        this.f28459g = ImageUtils.getUriToDrawable(i);
        try {
            this.f28456d = BitmapFactory.decodeStream(context.getContentResolver().openInputStream(this.f28459g));
        } catch (FileNotFoundException e) {
            CLog.m27609a(VideoOverlayData.class, e);
        }
        this.f28455c = z;
        this.f28454b = new PointF(f, f2);
        this.f28457e = f3;
        this.f28460h = f4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public VideoOverlayData(Context context, String str, boolean z, float f, float f2, float f3, Float f4) {
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str);
        glideRequestBuilder.f28239e = context;
        glideRequestBuilder.f28246l = true;
        this.f28456d = glideRequestBuilder.m27018b(2, ThemeUtils.getColor(2131100228)).getBitmap();
        this.f28455c = z;
        this.f28454b = new PointF(f, f2);
        this.f28457e = f3;
        this.f28460h = f4;
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
        this.f28456d = createBitmap;
        this.f28454b = new PointF(f2, f3);
        this.f28457e = f4;
        this.f28460h = f5;
    }

    public PointF getLocation() {
        return this.f28454b;
    }

    public Bitmap getOverlayBitmap() {
        return this.f28456d;
    }

    public Float getOverlayHeight() {
        return this.f28460h;
    }

    public Uri getOverlayUri() {
        return this.f28459g;
    }

    public float getOverlayWidth() {
        return this.f28457e;
    }

    public PointF getSize() {
        return this.f28458f;
    }

    public boolean isAnimated() {
        return this.f28455c;
    }

    public void setSize(PointF pointF) {
        this.f28458f = pointF;
    }
}
