package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.HtmlController;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/factories/HtmlControllerFactory.class */
public class HtmlControllerFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static HtmlControllerFactory f34398a = new HtmlControllerFactory();

    public static HtmlController create(Context context, String str) {
        return new HtmlController(context, str);
    }

    public static void setInstance(HtmlControllerFactory htmlControllerFactory) {
        f34398a = htmlControllerFactory;
    }
}
