package p131c.p421j.p426d;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.MediaLayout;
import com.mopub.nativeads.MediaViewBinder;
/* renamed from: c.j.d.c */
/* loaded from: classes2-dex2jar.jar:c/j/d/c.class */
public class C6672c {
    @VisibleForTesting

    /* renamed from: i */
    public static final C6672c f20589i = new C6672c();

    /* renamed from: a */
    public View f20590a;

    /* renamed from: b */
    public MediaLayout f20591b;

    /* renamed from: c */
    public TextView f20592c;

    /* renamed from: d */
    public TextView f20593d;

    /* renamed from: e */
    public ImageView f20594e;

    /* renamed from: f */
    public TextView f20595f;

    /* renamed from: g */
    public ImageView f20596g;

    /* renamed from: h */
    public TextView f20597h;

    /* renamed from: a */
    public static C6672c m20101a(View view, MediaViewBinder mediaViewBinder) {
        C6672c cVar = new C6672c();
        cVar.f20590a = view;
        try {
            cVar.f20592c = (TextView) view.findViewById(mediaViewBinder.f34679c);
            cVar.f20593d = (TextView) view.findViewById(mediaViewBinder.f34680d);
            cVar.f20595f = (TextView) view.findViewById(mediaViewBinder.f34681e);
            cVar.f20591b = (MediaLayout) view.findViewById(mediaViewBinder.f34678b);
            cVar.f20594e = (ImageView) view.findViewById(mediaViewBinder.f34682f);
            cVar.f20596g = (ImageView) view.findViewById(mediaViewBinder.f34683g);
            cVar.f20597h = (TextView) view.findViewById(mediaViewBinder.f34684h);
            return cVar;
        } catch (ClassCastException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Could not cast from id in MediaViewBinder to expected View type", e);
            return f20589i;
        }
    }
}
