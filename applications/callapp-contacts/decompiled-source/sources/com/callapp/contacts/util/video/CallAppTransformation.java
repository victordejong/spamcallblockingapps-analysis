package com.callapp.contacts.util.video;

import android.content.Context;
import android.graphics.PointF;
import android.media.MediaFormat;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.video.VideoOverlayData;
import com.callapp.contacts.util.video.videoFilters.SolidBackgroundColorFilter;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.b;
import com.linkedin.android.litr.b.d;
import com.linkedin.android.litr.c;
import com.linkedin.android.litr.d.a;
import com.linkedin.android.litr.e;
import com.linkedin.android.litr.exception.MediaTransformationException;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/CallAppTransformation.class */
public class CallAppTransformation {

    /* renamed from: a  reason: collision with root package name */
    private static final String f16313a = "CallAppTransformation";

    /* renamed from: b  reason: collision with root package name */
    private static final String f16314b = "rotation-degrees";

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder.class */
    public static class TransformationBuilder {

        /* renamed from: a  reason: collision with root package name */
        public b f16315a;

        /* renamed from: d  reason: collision with root package name */
        public VideoOverlayData.VideoOverlayBuilder f16318d;
        private Context e;
        private File f;
        private e g;
        private SourceMedia h;
        private String o;
        private String i = "video/avc";
        private int j = 0;
        private int k = Constants.BIG_SIZE_SCREEN;
        private int l = 1080;

        /* renamed from: b  reason: collision with root package name */
        public float f16316b = 1.0f;

        /* renamed from: c  reason: collision with root package name */
        public float f16317c = 1.0f;
        private int m = 12000000;
        private int n = 5;

        public TransformationBuilder(Context context, Uri uri, File file, String str, e eVar) {
            this.e = context;
            this.f = file;
            this.h = new SourceMedia(uri);
            this.f16315a = new b(context);
            this.o = str;
            this.g = eVar;
        }

        private MediaFormat a(TargetTrack targetTrack, int i) {
            MediaFormat mediaFormat;
            if (targetTrack == null || targetTrack.f16329d == null) {
                mediaFormat = null;
            } else {
                MediaFormat mediaFormat2 = new MediaFormat();
                mediaFormat = mediaFormat2;
                if (targetTrack.f16329d.f16320b.startsWith("video")) {
                    mediaFormat2.setString("mime", this.i);
                    mediaFormat2.setInteger(CallAppTransformation.f16314b, i);
                    mediaFormat2.setInteger("width", this.k);
                    mediaFormat2.setInteger("height", this.l);
                    mediaFormat2.setInteger("bitrate", this.m);
                    mediaFormat2.setInteger("i-frame-interval", this.n);
                    mediaFormat2.setInteger("frame-rate", ((VideoTrackFormat) targetTrack.f16329d).f);
                    mediaFormat = mediaFormat2;
                }
            }
            return mediaFormat;
        }

        public final void a() {
            TargetMedia targetMedia = new TargetMedia(this.f, this.h.f16323c);
            if (targetMedia.getIncludedTrackCount() > 0) {
                if (targetMedia.f16324a.exists()) {
                    targetMedia.f16324a.delete();
                }
                VideoTrackFormat videoTrackFormat = null;
                int i = 0;
                try {
                    Iterator<MediaTrackFormat> it2 = this.h.f16323c.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        MediaTrackFormat next = it2.next();
                        if (next.f16320b.startsWith("video")) {
                            videoTrackFormat = (VideoTrackFormat) next;
                            i = videoTrackFormat.i;
                            break;
                        }
                    }
                    int i2 = i == 0 ? 90 : i;
                    com.linkedin.android.litr.d.b bVar = new com.linkedin.android.litr.d.b(targetMedia.f16324a.getPath(), targetMedia.getIncludedTrackCount(), i2, this.j);
                    ArrayList arrayList = new ArrayList(targetMedia.f16325b.size());
                    a aVar = new a(this.e, this.h.f16321a);
                    for (TargetTrack targetTrack : targetMedia.f16325b) {
                        if (targetTrack.f16327b) {
                            c.a aVar2 = new c.a(aVar, targetTrack.f16326a, bVar);
                            aVar2.e = arrayList.size();
                            aVar2.f33684d = a(targetTrack, i2);
                            aVar2.f33683c = new com.linkedin.android.litr.b.e();
                            aVar2.f33681a = new d();
                            ArrayList arrayList2 = new ArrayList();
                            if (i == 0) {
                                arrayList2.add(new SolidBackgroundColorFilter(-1));
                                arrayList2.add(new com.linkedin.android.litr.c.b.a.a(new com.linkedin.android.litr.c.c(new PointF(this.f16316b, this.f16317c), new PointF(0.5f, 0.5f), BitmapDescriptorFactory.HUE_RED)));
                            }
                            if (this.f16318d != null) {
                                if (i > 0) {
                                    arrayList2.add(new SolidBackgroundColorFilter(-1));
                                    arrayList2.add(new com.linkedin.android.litr.c.b.a.a(new com.linkedin.android.litr.c.c(new PointF(this.f16316b, this.f16317c), new PointF(0.5f, 0.5f), BitmapDescriptorFactory.HUE_RED)));
                                }
                                arrayList2.addAll(this.f16318d.a(videoTrackFormat));
                            }
                            aVar2.f33682b = new com.linkedin.android.litr.e.b(arrayList2);
                            arrayList.add(aVar2.a());
                        }
                    }
                    this.f16315a.a(this.o, arrayList, this.g);
                } catch (MediaTransformationException e) {
                    Log.e(CallAppTransformation.f16313a, "Exception when trying to perform track operation", e);
                }
            }
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
    }
}
