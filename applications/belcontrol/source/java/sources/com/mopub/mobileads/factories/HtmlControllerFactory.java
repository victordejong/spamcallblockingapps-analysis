package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.VisibleForTesting;
import com.mopub.mobileads.HtmlController;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/HtmlControllerFactory.class */
public class HtmlControllerFactory {

    /* renamed from: a */
    public static HtmlControllerFactory f4998a = new HtmlControllerFactory();

    public static HtmlController create(Context context, String str) {
        return f4998a.m3499a(context, str);
    }

    @VisibleForTesting
    public static void setInstance(HtmlControllerFactory htmlControllerFactory) {
        f4998a = htmlControllerFactory;
    }

    /* renamed from: a */
    public HtmlController m3499a(Context context, String str) {
        return new HtmlController(context, str);
    }
}
