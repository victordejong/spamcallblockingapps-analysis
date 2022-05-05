package com.aotter.net.trek.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/TrekView.class */
public class TrekView extends RelativeLayout {

    /* renamed from: a */
    public Context f1175a;

    /* renamed from: b */
    public int f1176b;

    /* renamed from: c */
    public HtmlBannerWebView f1177c;

    public TrekView(Context context) {
        this(context, null);
    }

    public TrekView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1175a = context;
        this.f1176b = getVisibility();
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
    }
}
