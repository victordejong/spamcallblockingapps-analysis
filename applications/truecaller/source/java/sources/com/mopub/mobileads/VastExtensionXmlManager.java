package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import org.w3c.dom.Node;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastExtensionXmlManager.class */
public class VastExtensionXmlManager {

    /* renamed from: ID */
    public static final String f8859ID = "id";
    public static final String TYPE = "type";
    public static final String VIDEO_VIEWABILITY_TRACKER = "MoPubViewabilityTracker";

    /* renamed from: a */
    public final Node f8860a;

    public VastExtensionXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f8860a = node;
    }
}
