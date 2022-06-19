package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.HtmlController;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/factories/HtmlControllerFactory.class */
public class HtmlControllerFactory {

    /* renamed from: a */
    protected static HtmlControllerFactory f59696a = new HtmlControllerFactory();

    public static HtmlController create(Context context, String str) {
        return new HtmlController(context, str);
    }

    public static void setInstance(HtmlControllerFactory htmlControllerFactory) {
        f59696a = htmlControllerFactory;
    }
}
