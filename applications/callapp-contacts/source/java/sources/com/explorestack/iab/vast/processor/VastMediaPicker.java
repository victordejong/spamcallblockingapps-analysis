package com.explorestack.iab.vast.processor;

import android.util.Pair;
import com.explorestack.iab.vast.tags.C9673k;
import com.explorestack.iab.vast.tags.MediaFileTag;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/processor/VastMediaPicker.class */
public abstract class VastMediaPicker<T extends MediaFileTag> implements Serializable {
    public abstract Pair<C9673k, T> pickVideo(List<Pair<C9673k, T>> list);
}
