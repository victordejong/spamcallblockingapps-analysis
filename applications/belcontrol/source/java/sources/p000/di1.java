package p000;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.ViewBinder;
/* renamed from: di1 */
/* loaded from: classes3-dex2jar.jar:di1.class */
public class di1 {
    @VisibleForTesting

    /* renamed from: i */
    public static final di1 f6037i = new di1();

    /* renamed from: a */
    public View f6038a;

    /* renamed from: b */
    public TextView f6039b;

    /* renamed from: c */
    public TextView f6040c;

    /* renamed from: d */
    public TextView f6041d;

    /* renamed from: e */
    public ImageView f6042e;

    /* renamed from: f */
    public ImageView f6043f;

    /* renamed from: g */
    public ImageView f6044g;

    /* renamed from: h */
    public TextView f6045h;

    /* renamed from: a */
    public static di1 m2517a(View view, ViewBinder viewBinder) {
        di1 di1Var = new di1();
        di1Var.f6038a = view;
        try {
            di1Var.f6039b = (TextView) view.findViewById(viewBinder.f5285b);
            di1Var.f6040c = (TextView) view.findViewById(viewBinder.f5286c);
            di1Var.f6041d = (TextView) view.findViewById(viewBinder.f5287d);
            di1Var.f6042e = (ImageView) view.findViewById(viewBinder.f5288e);
            di1Var.f6043f = (ImageView) view.findViewById(viewBinder.f5289f);
            di1Var.f6044g = (ImageView) view.findViewById(viewBinder.f5290g);
            di1Var.f6045h = (TextView) view.findViewById(viewBinder.f5291h);
            return di1Var;
        } catch (ClassCastException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Could not cast from id in ViewBinder to expected View type", e);
            return f6037i;
        }
    }
}
