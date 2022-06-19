package com.google.android.exoplayer2.source.dash.manifest;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/manifest/AdaptationSet.class */
public class AdaptationSet {
    public static final int ID_UNSET = -1;
    public final List<Descriptor> accessibilityDescriptors;

    /* renamed from: id */
    public final int f3604id;
    public final List<Representation> representations;
    public final List<Descriptor> supplementalProperties;
    public final int type;

    public AdaptationSet(int i, int i2, List<Representation> list, List<Descriptor> list2, List<Descriptor> list3) {
        this.f3604id = i;
        this.type = i2;
        this.representations = Collections.unmodifiableList(list);
        this.accessibilityDescriptors = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.supplementalProperties = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
    }
}
