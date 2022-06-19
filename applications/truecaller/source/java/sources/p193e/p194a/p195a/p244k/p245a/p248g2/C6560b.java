package p193e.p194a.p195a.p244k.p245a.p248g2;

import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.previews.p140v1.GetLocationPreview;
import com.truecaller.api.services.previews.p140v1.GetMediaPreview;
import com.truecaller.api.services.previews.p140v1.models.Location;
import com.truecaller.api.services.previews.p140v1.models.LocationPreview;
import com.truecaller.api.services.previews.p140v1.models.MapStyle;
import com.truecaller.api.services.previews.p140v1.models.MediaPreview;
import com.truecaller.log.AssertionUtil;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import p193e.p194a.p1238t2.p1239a.p1256g.p1257a.C20478b;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p916i5.C15314a;
import p3.a.i1;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.g2.b */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/g2/b.class */
public final class C6560b implements AbstractC6559a {

    /* renamed from: a */
    public final AbstractC6561c f21644a;

    @Inject
    public C6560b(AbstractC6561c abstractC6561c) {
        l.e(abstractC6561c, "stubManager");
        this.f21644a = abstractC6561c;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p248g2.AbstractC6559a
    /* renamed from: a */
    public Object mo30767a(double d, double d2, d<? super String> dVar) {
        C20478b.C20479a mo20911c;
        mo20911c = this.f21644a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
        C20478b.C20479a c20479a = mo20911c;
        String str = null;
        if (c20479a != null) {
            GetLocationPreview.Request.C3351a newBuilder = GetLocationPreview.Request.newBuilder();
            Location.C3360b newBuilder2 = Location.newBuilder();
            newBuilder2.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder2).instance.setLat((float) d);
            newBuilder2.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder2).instance.setLon((float) d2);
            Location build = newBuilder2.build();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setLocation(build);
            C15314a c15314a = C15314a.f43582g;
            MapStyle mapStyle = C15314a.m18933f() ? MapStyle.NIGHT : MapStyle.DAY;
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setMapStyle(mapStyle);
            try {
                GetLocationPreview.Response m11093c = c20479a.m11093c((GetLocationPreview.Request) newBuilder.build());
                l.d(m11093c, "stub.getLocationPreview(request)");
                LocationPreview locationPreview = m11093c.getLocationPreview();
                l.d(locationPreview, "stub.getLocationPreview(request).locationPreview");
                str = locationPreview.getMapUri();
            } catch (CancellationException e) {
                str = null;
            } catch (i1 e2) {
                AssertionUtil.reportThrowableButNeverCrash(e2);
                str = null;
            } catch (RuntimeException e3) {
                AssertionUtil.reportThrowableButNeverCrash(e3);
                str = null;
            }
        }
        return str;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p248g2.AbstractC6559a
    /* renamed from: b */
    public Object mo30766b(String str, d<? super MediaPreview> dVar) {
        C20478b.C20479a mo20911c;
        mo20911c = this.f21644a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
        C20478b.C20479a c20479a = mo20911c;
        MediaPreview mediaPreview = null;
        if (c20479a != null) {
            GetMediaPreview.Request.C3355a newBuilder = GetMediaPreview.Request.newBuilder();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setUri(str);
            try {
                GetMediaPreview.Response m11092d = c20479a.m11092d((GetMediaPreview.Request) newBuilder.build());
                l.d(m11092d, "stub.getMediaPreview(request)");
                mediaPreview = m11092d.getMediaPreview();
            } catch (CancellationException e) {
                mediaPreview = null;
            } catch (RuntimeException e2) {
                AssertionUtil.reportThrowableButNeverCrash(e2);
                mediaPreview = null;
            } catch (i1 e3) {
                AssertionUtil.reportThrowableButNeverCrash(e3);
                mediaPreview = null;
            }
        }
        return mediaPreview;
    }
}
