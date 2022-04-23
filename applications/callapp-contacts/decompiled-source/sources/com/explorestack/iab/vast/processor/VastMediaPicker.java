package com.explorestack.iab.vast.processor;

import android.util.Pair;
import com.explorestack.iab.vast.tags.MediaFileTag;
import com.explorestack.iab.vast.tags.k;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/processor/VastMediaPicker.class */
public abstract class VastMediaPicker<T extends MediaFileTag> implements Serializable {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Pair<k, T> pickVideo(List<Pair<k, T>> list);
}
