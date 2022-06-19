package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.VisibleForTesting;
import com.mopub.mobileads.HtmlController;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/HtmlControllerFactory.class */
public class HtmlControllerFactory {

    /* renamed from: a */
    public static HtmlControllerFactory f9000a = new HtmlControllerFactory();

    public static HtmlController create(Context context, String str) {
        Objects.requireNonNull(f9000a);
        return new HtmlController(context, str);
    }

    @VisibleForTesting
    public static void setInstance(HtmlControllerFactory htmlControllerFactory) {
        f9000a = htmlControllerFactory;
    }
}
