package com.explorestack.protobuf;

import com.explorestack.protobuf.MapEntryLite;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/MapFieldSchema.class */
public interface MapFieldSchema {
    Map<?, ?> forMapData(Object obj);

    MapEntryLite.Metadata<?, ?> forMapMetadata(Object obj);

    Map<?, ?> forMutableMapData(Object obj);

    int getSerializedSize(int i, Object obj, Object obj2);

    boolean isImmutable(Object obj);

    Object mergeFrom(Object obj, Object obj2);

    Object newMapField(Object obj);

    Object toImmutable(Object obj);
}
