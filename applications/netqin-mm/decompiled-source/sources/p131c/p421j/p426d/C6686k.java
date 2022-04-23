package p131c.p421j.p426d;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.ViewBinder;
/* renamed from: c.j.d.k */
/* loaded from: classes2-dex2jar.jar:c/j/d/k.class */
public class C6686k {
    @VisibleForTesting

    /* renamed from: i */
    public static final C6686k f20640i = new C6686k();

    /* renamed from: a */
    public View f20641a;

    /* renamed from: b */
    public TextView f20642b;

    /* renamed from: c */
    public TextView f20643c;

    /* renamed from: d */
    public TextView f20644d;

    /* renamed from: e */
    public ImageView f20645e;

    /* renamed from: f */
    public ImageView f20646f;

    /* renamed from: g */
    public ImageView f20647g;

    /* renamed from: h */
    public TextView f20648h;

    /* renamed from: a */
    public static C6686k m20049a(View view, ViewBinder viewBinder) {
        C6686k kVar = new C6686k();
        kVar.f20641a = view;
        try {
            kVar.f20642b = (TextView) view.findViewById(viewBinder.f34953b);
            kVar.f20643c = (TextView) view.findViewById(viewBinder.f34954c);
            kVar.f20644d = (TextView) view.findViewById(viewBinder.f34955d);
            kVar.f20645e = (ImageView) view.findViewById(viewBinder.f34956e);
            kVar.f20646f = (ImageView) view.findViewById(viewBinder.f34957f);
            kVar.f20647g = (ImageView) view.findViewById(viewBinder.f34958g);
            kVar.f20648h = (TextView) view.findViewById(viewBinder.f34959h);
            return kVar;
        } catch (ClassCastException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Could not cast from id in ViewBinder to expected View type", e);
            return f20640i;
        }
    }
}
