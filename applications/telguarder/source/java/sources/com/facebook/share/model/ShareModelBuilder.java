package com.facebook.share.model;

import com.facebook.share.ShareBuilder;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareModelBuilder.class */
public interface ShareModelBuilder<P extends ShareModel, E extends ShareModelBuilder> extends ShareBuilder<P, E> {
    E readFrom(P p);
}
