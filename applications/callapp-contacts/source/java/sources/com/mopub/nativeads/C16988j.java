package com.mopub.nativeads;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.mopub.common.logging.MoPubLog;
/* renamed from: com.mopub.nativeads.j */
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/j.class */
final class C16988j {

    /* renamed from: i */
    static final C16988j f60192i = new C16988j();

    /* renamed from: a */
    View f60193a;

    /* renamed from: b */
    TextView f60194b;

    /* renamed from: c */
    TextView f60195c;

    /* renamed from: d */
    TextView f60196d;

    /* renamed from: e */
    ImageView f60197e;

    /* renamed from: f */
    ImageView f60198f;

    /* renamed from: g */
    ImageView f60199g;

    /* renamed from: h */
    TextView f60200h;

    private C16988j() {
    }

    /* renamed from: a */
    public static C16988j m6095a(View view, ViewBinder viewBinder) {
        C16988j c16988j = new C16988j();
        c16988j.f60193a = view;
        try {
            c16988j.f60194b = (TextView) view.findViewById(viewBinder.f60118b);
            c16988j.f60195c = (TextView) view.findViewById(viewBinder.f60119c);
            c16988j.f60196d = (TextView) view.findViewById(viewBinder.f60120d);
            c16988j.f60197e = (ImageView) view.findViewById(viewBinder.f60121e);
            c16988j.f60198f = (ImageView) view.findViewById(viewBinder.f60122f);
            c16988j.f60199g = (ImageView) view.findViewById(viewBinder.f60123g);
            c16988j.f60200h = (TextView) view.findViewById(viewBinder.f60124h);
            return c16988j;
        } catch (ClassCastException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Could not cast from id in ViewBinder to expected View type", e);
            return f60192i;
        }
    }
}
