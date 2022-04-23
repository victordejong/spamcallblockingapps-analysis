package com.mopub.nativeads;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/j.class */
final class j {
    static final j i = new j();

    /* renamed from: a  reason: collision with root package name */
    View f34696a;

    /* renamed from: b  reason: collision with root package name */
    TextView f34697b;

    /* renamed from: c  reason: collision with root package name */
    TextView f34698c;

    /* renamed from: d  reason: collision with root package name */
    TextView f34699d;
    ImageView e;
    ImageView f;
    ImageView g;
    TextView h;

    private j() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j a(View view, ViewBinder viewBinder) {
        j jVar = new j();
        jVar.f34696a = view;
        try {
            jVar.f34697b = (TextView) view.findViewById(viewBinder.f34655b);
            jVar.f34698c = (TextView) view.findViewById(viewBinder.f34656c);
            jVar.f34699d = (TextView) view.findViewById(viewBinder.f34657d);
            jVar.e = (ImageView) view.findViewById(viewBinder.e);
            jVar.f = (ImageView) view.findViewById(viewBinder.f);
            jVar.g = (ImageView) view.findViewById(viewBinder.g);
            jVar.h = (TextView) view.findViewById(viewBinder.h);
            return jVar;
        } catch (ClassCastException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Could not cast from id in ViewBinder to expected View type", e);
            return i;
        }
    }
}
