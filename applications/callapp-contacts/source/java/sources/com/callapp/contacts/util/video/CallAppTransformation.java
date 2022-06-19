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
import com.linkedin.android.litr.AbstractC16637e;
import com.linkedin.android.litr.C16613b;
import com.linkedin.android.litr.C16619c;
import com.linkedin.android.litr.exception.MediaTransformationException;
import com.linkedin.android.litr.p460b.C16617d;
import com.linkedin.android.litr.p460b.C16618e;
import com.linkedin.android.litr.p461c.C16628c;
import com.linkedin.android.litr.p461c.p463b.p464a.C16625a;
import com.linkedin.android.litr.p466d.C16630a;
import com.linkedin.android.litr.p466d.C16631b;
import com.linkedin.android.litr.p467e.C16639b;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/CallAppTransformation.class */
public class CallAppTransformation {

    /* renamed from: a */
    private static final String f28414a = "CallAppTransformation";

    /* renamed from: b */
    private static final String f28415b = "rotation-degrees";

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder.class */
    public static class TransformationBuilder {

        /* renamed from: a */
        public C16613b f28416a;

        /* renamed from: d */
        public VideoOverlayData.VideoOverlayBuilder f28419d;

        /* renamed from: e */
        private Context f28420e;

        /* renamed from: f */
        private File f28421f;

        /* renamed from: g */
        private AbstractC16637e f28422g;

        /* renamed from: h */
        private SourceMedia f28423h;

        /* renamed from: o */
        private String f28430o;

        /* renamed from: i */
        private String f28424i = "video/avc";

        /* renamed from: j */
        private int f28425j = 0;

        /* renamed from: k */
        private int f28426k = Constants.BIG_SIZE_SCREEN;

        /* renamed from: l */
        private int f28427l = 1080;

        /* renamed from: b */
        public float f28417b = 1.0f;

        /* renamed from: c */
        public float f28418c = 1.0f;

        /* renamed from: m */
        private int f28428m = 12000000;

        /* renamed from: n */
        private int f28429n = 5;

        public TransformationBuilder(Context context, Uri uri, File file, String str, AbstractC16637e abstractC16637e) {
            this.f28420e = context;
            this.f28421f = file;
            this.f28423h = new SourceMedia(uri);
            this.f28416a = new C16613b(context);
            this.f28430o = str;
            this.f28422g = abstractC16637e;
        }

        /* renamed from: a */
        private MediaFormat m26895a(TargetTrack targetTrack, int i) {
            MediaFormat mediaFormat;
            if (targetTrack == null || targetTrack.f28441d == null) {
                mediaFormat = null;
            } else {
                MediaFormat mediaFormat2 = new MediaFormat();
                mediaFormat = mediaFormat2;
                if (targetTrack.f28441d.f28432b.startsWith("video")) {
                    mediaFormat2.setString("mime", this.f28424i);
                    mediaFormat2.setInteger(CallAppTransformation.f28415b, i);
                    mediaFormat2.setInteger("width", this.f28426k);
                    mediaFormat2.setInteger("height", this.f28427l);
                    mediaFormat2.setInteger("bitrate", this.f28428m);
                    mediaFormat2.setInteger("i-frame-interval", this.f28429n);
                    mediaFormat2.setInteger("frame-rate", ((VideoTrackFormat) targetTrack.f28441d).f28468f);
                    mediaFormat = mediaFormat2;
                }
            }
            return mediaFormat;
        }

        /* renamed from: a */
        public final void m26896a() {
            VideoTrackFormat videoTrackFormat;
            int i;
            TargetMedia targetMedia = new TargetMedia(this.f28421f, this.f28423h.f28435c);
            if (targetMedia.getIncludedTrackCount() <= 0) {
                return;
            }
            if (targetMedia.f28436a.exists()) {
                targetMedia.f28436a.delete();
            }
            try {
                Iterator<MediaTrackFormat> it2 = this.f28423h.f28435c.iterator();
                while (true) {
                    videoTrackFormat = null;
                    i = 0;
                    if (!it2.hasNext()) {
                        break;
                    }
                    MediaTrackFormat next = it2.next();
                    if (next.f28432b.startsWith("video")) {
                        videoTrackFormat = (VideoTrackFormat) next;
                        i = videoTrackFormat.f28471i;
                        break;
                    }
                }
                int i2 = i == 0 ? 90 : i;
                C16631b c16631b = new C16631b(targetMedia.f28436a.getPath(), targetMedia.getIncludedTrackCount(), i2, this.f28425j);
                ArrayList arrayList = new ArrayList(targetMedia.f28437b.size());
                C16630a c16630a = new C16630a(this.f28420e, this.f28423h.f28433a);
                for (TargetTrack targetTrack : targetMedia.f28437b) {
                    if (targetTrack.f28439b) {
                        C16619c.C16621a c16621a = new C16619c.C16621a(c16630a, targetTrack.f28438a, c16631b);
                        c16621a.f58492e = arrayList.size();
                        c16621a.f58491d = m26895a(targetTrack, i2);
                        c16621a.f58490c = new C16618e();
                        c16621a.f58488a = new C16617d();
                        ArrayList arrayList2 = new ArrayList();
                        if (i == 0) {
                            arrayList2.add(new SolidBackgroundColorFilter(-1));
                            arrayList2.add(new C16625a(new C16628c(new PointF(this.f28417b, this.f28418c), new PointF(0.5f, 0.5f), BitmapDescriptorFactory.HUE_RED)));
                        }
                        if (this.f28419d != null) {
                            if (i > 0) {
                                arrayList2.add(new SolidBackgroundColorFilter(-1));
                                arrayList2.add(new C16625a(new C16628c(new PointF(this.f28417b, this.f28418c), new PointF(0.5f, 0.5f), BitmapDescriptorFactory.HUE_RED)));
                            }
                            arrayList2.addAll(this.f28419d.m26889a(videoTrackFormat));
                        }
                        c16621a.f58489b = new C16639b(arrayList2);
                        arrayList.add(c16621a.m6876a());
                    }
                }
                this.f28416a.m6905a(this.f28430o, arrayList, this.f28422g);
            } catch (MediaTransformationException e) {
                Log.e(CallAppTransformation.f28414a, "Exception when trying to perform track operation", e);
            }
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
    }
}
