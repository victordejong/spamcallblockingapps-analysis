package com.facebook.share.model;

import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
/* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareModelBuilder.class */
public interface ShareModelBuilder<P extends ShareModel, E extends ShareModelBuilder> {
    E readFrom(P p);
}
