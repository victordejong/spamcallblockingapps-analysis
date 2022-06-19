package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import org.w3c.dom.Node;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastIconXmlManager.class */
public class VastIconXmlManager {
    public static final String DURATION = "duration";
    public static final String HEIGHT = "height";
    public static final String ICON_CLICKS = "IconClicks";
    public static final String ICON_CLICK_THROUGH = "IconClickThrough";
    public static final String ICON_CLICK_TRACKING = "IconClickTracking";
    public static final String ICON_VIEW_TRACKING = "IconViewTracking";
    public static final String OFFSET = "offset";
    public static final String WIDTH = "width";

    /* renamed from: a */
    public final Node f8873a;

    /* renamed from: b */
    public final VastResourceXmlManager f8874b;

    public VastIconXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f8873a = node;
        this.f8874b = new VastResourceXmlManager(node);
    }
}
