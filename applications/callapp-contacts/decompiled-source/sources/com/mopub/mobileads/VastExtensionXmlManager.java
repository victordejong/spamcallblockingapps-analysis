package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import org.w3c.dom.Node;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastExtensionXmlManager.class */
public class VastExtensionXmlManager {
    public static final String ID = "id";
    public static final String TYPE = "type";
    public static final String VIDEO_VIEWABILITY_TRACKER = "MoPubViewabilityTracker";

    /* renamed from: a  reason: collision with root package name */
    final Node f34255a;

    public VastExtensionXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f34255a = node;
    }
}
